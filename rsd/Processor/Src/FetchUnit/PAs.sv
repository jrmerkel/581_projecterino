//
// Modified from PAP
//

import BasicTypes::*;
import MemoryMapTypes::*;
import FetchUnitTypes::*;

//Use the bottom x bits appended to Global history to index into counters
//bank width problems force instruction to be at the bottom
function automatic PAP_PHT_IndexPath PASToPHT_Index_Global(AddrPath addr);
    PAP_PHT_IndexPath phtIndex;
      //combination of set index and low order bits
    phtIndex = 
        { //Set
            addr[
            HIST_SAX_BITS - 1 + INSN_ADDR_BIT_WIDTH + GAS_OFFSET: 
            INSN_ADDR_BIT_WIDTH + GAS_OFFSET
        ], //low order
        addr[
            PHT_PAP_BITS - 1 - HIST_SAX_BITS + INSN_ADDR_BIT_WIDTH: 
            INSN_ADDR_BIT_WIDTH
        ]};
   // phtIndex[PHT_ENTRY_NUM_BIT_WIDTH - 1 : PHT_ENTRY_NUM_BIT_WIDTH - BRANCH_GLOBAL_HISTORY_BIT_WIDTH] = gh;
    return phtIndex;
endfunction

function automatic PAP_PHT_IndexPath PASToHIST_Index_Global(AddrPath addr);
    PAP_PHT_IndexPath phtIndex;
    phtIndex = 
        addr[
            PHT_PAP_BITS - 1 + INSN_ADDR_BIT_WIDTH: 
            INSN_ADDR_BIT_WIDTH
        ];
   // phtIndex[PHT_ENTRY_NUM_BIT_WIDTH - 1 : PHT_ENTRY_NUM_BIT_WIDTH - BRANCH_GLOBAL_HISTORY_BIT_WIDTH] = gh;
    return phtIndex;
endfunction

module PAs(
    NextPCStageIF.BranchPredictor port,
    FetchStageIF.BranchPredictor next,
    ControllerIF.BranchPredictor ctrl
);

    logic stall, clear;
    PC_Path pcIn;

    // Use combinational logic
    logic brPredTaken[FETCH_WIDTH];
    logic updateHistory[FETCH_WIDTH];

    // Logic for read/write PHT TOP Fetch width are WB
    logic phtWE[INT_ISSUE_WIDTH];
    // logic histWE[INT_ISSUE_WIDTH + 2];

    PAP_PHT_IndexPath phtWA[INT_ISSUE_WIDTH];
    // PAP_PHT_IndexPath histWA[INT_ISSUE_WIDTH + 2];

    PAP_PHT_ENTRY phtWV[INT_ISSUE_WIDTH];
    // PAP_PHT_IndexPath histWV[INT_ISSUE_WIDTH + 2];
    PAP_PHT_ENTRY_INDEX phtPrevValue[INT_ISSUE_WIDTH];

    // Read port need for branch predict and update counter.
    PAP_PHT_IndexPath phtRA[FETCH_WIDTH];
    PAP_PHT_IndexPath histRA[FETCH_WIDTH];
    PAP_PHT_ENTRY phtRV[FETCH_WIDTH];
    // PAP_PHT_IndexPath histRV[FETCH_WIDTH];
   
    // Branch history for using predict.
    // BranchGlobalHistoryPath nextBrGlobalHistory, regBrGlobalHistory;
    
    // assert when misprediction occured.
    logic mispred[FETCH_WIDTH];

    // Check for write number in 1cycle.
    // logic updatePht;

    // Per address counters BRAM updated only after results come in
    generate
        BlockMultiBankRAM #(
            .ENTRY_NUM( PHT_PAP_ENTRY_NUM ), 
            .ENTRY_BIT_SIZE( $bits( PAP_PHT_ENTRY ) ), 
            .READ_NUM( FETCH_WIDTH ), 
            .WRITE_NUM( INT_ISSUE_WIDTH )
        )
        pht( 
            .clk(port.clk),
            .we(phtWE), // Write enable
            .wa(phtWA), //Write Address
            .wv(phtWV),// Write Val
            .ra(phtRA), //Read Address
            .rv(phtRV)  //Write Address
        );
    endgenerate
    
    PHT_HIST hist_regs, new_hist;
    // Counter for reset sequence.
    PAP_PHT_IndexPath resetIndex;
    always_ff @(posedge port.clk) begin
        if (port.rstStart) begin
            resetIndex <= 0;
        end
        else begin
            resetIndex <= resetIndex + 1;
        end
        hist_regs <= new_hist;
            histRA[0] =  PASToHIST_Index_Global(
                port.predNextPC + 0*INSN_BYTE_WIDTH
            );

            histRA[1] =  PASToHIST_Index_Global(
                port.predNextPC + 1*INSN_BYTE_WIDTH
            );
    end

    // always_ff @(posedge port.clk) begin
    //     // update Branch Global History.
    //     // if (port.rst) begin
    //     //     regBrGlobalHistory <= '0;
    //     // end
    //     // else begin
    //     //     regBrGlobalHistory <= nextBrGlobalHistory;
    //     // end

    // end


    always_comb begin

        stall = ctrl.ifStage.stall;
        clear = ctrl.ifStage.clear;
    
        pcIn = port.predNextPC;
        new_hist = hist_regs;
        // Discard the result of previous cycle
        for (int i = 0; i < (INT_ISSUE_WIDTH); i++) begin
            phtWE[i] = FALSE;
            for(int j = 0; j < PAP_COUNTERS_NUM; j++) begin
                phtWV[i].Counters[j] = PHT_ENTRY_MAX / 2 + 1;
            end
            //phtWV[i] = 0;
            phtWA[i] = 0;
        end

         // Discard the result of previous cycle
        for (int i = 0; i < INT_ISSUE_WIDTH; i++) begin
            // Counter's value.
            phtPrevValue[i] = port.brResult[i].phtPrevValue; 
            phtWA[i] =  PASToPHT_Index_Global(
                port.brResult[i].brAddr
            );
        end      

        //We update branch history before it can update counter later on
        for (int i = 0; i < INT_ISSUE_WIDTH; i++) begin
            next.phtPrevValue[i].Entries = phtRV[i];
            next.phtPrevValue[i].History = new_hist[histRA[i]];
            next.phtPrevValue[i].Address = pcIn + i*INSN_BYTE_WIDTH;

        end
        
        for (int i = 0; i < FETCH_WIDTH; i++) begin
            brPredTaken[i] = FALSE;
            // Output global history to pipeline for recovery.
            //brGlobalHistory[i] = 0; // Use Pattern history
            updateHistory[i] = FALSE;
        end

        for (int i = 0; i < FETCH_WIDTH; i++) begin
            // Predict directions (Check the MSB).
            brPredTaken[i] =
                phtRV[i].Counters[new_hist[histRA[i]]][PHT_ENTRY_WIDTH - 1] && next.btbHit[i];

            // Assert BTB is hit, ICache line is valid, and conditional branch.
            updateHistory[i] = next.btbHit[i] && next.readIsCondBr[i] && 
                next.updateBrHistory[i];

            // Generate next brGlobalHistory.
            if (updateHistory[i]) begin
                // Shift history 1 bit to the left and reflect prediction direction in LSB.
                new_hist[histRA[i]] = (new_hist[histRA[i]] << 1) | brPredTaken[i];
                
                if (brPredTaken[i]) begin
                    // If brPred is taken, next instruction don't be executed.
                    break;
                end
            end
        end

        next.brPredTaken = brPredTaken;
        next.brGlobalHistory[0] = 0;
        next.brGlobalHistory[1] = 0;




        for (int i = 0; i < INT_ISSUE_WIDTH; i++) begin
            // When branch instruction is executed, update PHT.
            
            phtWE[i] = port.brResult[i].valid;
            //Write check
            if(phtWE[0] == phtWE[1] & phtWA[0] == phtWA[1]) begin
                phtWE[1] = FALSE; //Multibank write
            end
            // phtWA[i] = PAPToPHT_Index_Global(phtPrevValue[i].Address);
            // Update PHT's counter (saturated up/down counter).
            if (port.brResult[i].execTaken) begin
                phtWV[i] = phtPrevValue[i].Entries.Counters;
                phtWV[i].Counters[phtPrevValue[i].History]= (phtPrevValue[i].Entries.Counters[phtPrevValue[i].History] == PHT_ENTRY_MAX) ? 
                    PHT_ENTRY_MAX : phtPrevValue[i].Entries.Counters[phtPrevValue[i].History] + 1;
            end
            else begin
                phtWV[i] = phtPrevValue[i];
                phtWV[i].Counters[phtPrevValue[i].History] = (phtPrevValue[i].Entries.Counters[phtPrevValue[i].History] == 0) ? 
                    0 : phtPrevValue[i].Entries.Counters[phtPrevValue[i].History] - 1;
            end

                      
            mispred[i] = port.brResult[i].mispred && port.brResult[i].valid;
            // When miss prediction is occured, recovory history.
            if (mispred[i]) begin
                if (port.brResult[i].isCondBr) begin
                      new_hist[PASToHIST_Index_Global(port.brResult[i].brAddr)] = {phtPrevValue[i].History[PHT_PAP_BITS-1:1], port.brResult[i].execTaken};
                    // histWA[i+2] = PAPToPHT_Index_Global(phtPrevValue[i].Address);
                    // phtWV[i].History = TODO HIST VAL
                    //     (phtWV[i].History << 1) | port.brResult[i].execTaken;
                end
            end
        end

        for (int i = 0; i < FETCH_WIDTH; i++) begin
            // Read PHT entry for next cycle 
            phtRA[i] = PASToPHT_Index_Global(
                pcIn + i*INSN_BYTE_WIDTH);
        end

        // In reset sequence, the write port 0 is used for initializing, and 
        // the other write ports are disabled.
        if (port.rst) begin
            for (int i = 0; i < INT_ISSUE_WIDTH; i++) begin
                phtWE[i] = (i == 0) ? TRUE : FALSE;
                phtWA[i] = resetIndex;
                for(int j = 0; j < PAP_COUNTERS_NUM; j++) begin
                    phtWV[i].Counters[j] = PHT_ENTRY_MAX / 2 + 1;
                    new_hist[j] = 0;
                end

            end

            // To avoid writing to the same bank (avoid error message)
            for (int i = 0; i < FETCH_WIDTH; i++) begin
            // Read PHT entry for next cycle 
            phtRA[i] = PASToPHT_Index_Global(
                pcIn + i*INSN_BYTE_WIDTH
            );
            end
        end
    end

endmodule : PAs
