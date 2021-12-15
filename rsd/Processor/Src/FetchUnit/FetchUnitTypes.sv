// Copyright 2019- RSD contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.


// 
// --- Fetch unit types
//

package FetchUnitTypes;

import MicroArchConf::*;
import BasicTypes::*;
import MemoryMapTypes::*;

//
// BTB
//

localparam BTB_ENTRY_NUM = CONF_BTB_ENTRY_NUM;

// Entry: 1(valid)+4(BTB_TAG_WIDTH)+13(BTB_TAG_WIDTH) = 18 bits
// The width of a block ram is 18bits, thus the sum of these parameters is set to 18 bits.

// Tag width, only lower bits are checked and the results of the BTB may incorrect.
localparam BTB_TAG_WIDTH = 4;                

// BTB have bits with BTB_CONTENTS_ADDR_WIDTH. The remaining address bits are made from the PC.
localparam BTB_CONTENTS_ADDR_WIDTH = 13;     


localparam BTB_ENTRY_NUM_BIT_WIDTH = $clog2(BTB_ENTRY_NUM);
typedef logic [BTB_ENTRY_NUM_BIT_WIDTH-1:0] BTB_IndexPath;
typedef logic [BTB_CONTENTS_ADDR_WIDTH-1:0] BTB_AddrPath;
typedef logic [BTB_TAG_WIDTH-1:0] BTB_TagPath;


localparam BTB_QUEUE_SIZE = 32;
localparam BTB_QUEUE_SIZE_BIT_WIDTH = $clog2(BTB_QUEUE_SIZE);
typedef logic [BTB_QUEUE_SIZE_BIT_WIDTH-1:0] BTBQueuePointerPath;

typedef struct packed // struct BTB_Entry
{
    logic valid;
    logic [BTB_TAG_WIDTH-1:0] tag;
    BTB_AddrPath data;
    logic isCondBr;
} BTB_Entry;

typedef struct packed // struct PhtQueueEntry
{
    AddrPath btbWA;            // Write Address
    BTB_Entry btbWV;                        // result of bpred
} BTBQueueEntry;

function automatic BTB_IndexPath ToBTB_Index(PC_Path addr);
    return addr[
        BTB_ENTRY_NUM_BIT_WIDTH + INSN_ADDR_BIT_WIDTH - 1: 
        INSN_ADDR_BIT_WIDTH
    ];
endfunction

function automatic BTB_TagPath ToBTB_Tag(PC_Path addr);
    return addr[
        BTB_ENTRY_NUM_BIT_WIDTH + INSN_ADDR_BIT_WIDTH + BTB_TAG_WIDTH - 1:
        BTB_ENTRY_NUM_BIT_WIDTH + INSN_ADDR_BIT_WIDTH
    ];
endfunction

function automatic BTB_AddrPath ToBTB_Addr(PC_Path addr);
    return addr[
        INSN_ADDR_BIT_WIDTH + BTB_CONTENTS_ADDR_WIDTH - 1:
        INSN_ADDR_BIT_WIDTH
    ];
endfunction

function automatic PC_Path ToRawAddrFromBTB_Addr(BTB_AddrPath addr, PC_Path pc);
    return 
    {
        pc[PC_WIDTH-1 : BTB_CONTENTS_ADDR_WIDTH + 2],
        addr[BTB_CONTENTS_ADDR_WIDTH-1 : 0],
        2'b0
    };
endfunction


//
// GShare
//

localparam BRANCH_GLOBAL_HISTORY_BIT_WIDTH = CONF_BRANCH_GLOBAL_HISTORY_BIT_WIDTH;
typedef logic [BRANCH_GLOBAL_HISTORY_BIT_WIDTH-1 : 0] BranchGlobalHistoryPath;
// GHT
localparam GHT_ENTRY_NUM = (1 << BRANCH_GLOBAL_HISTORY_BIT_WIDTH);
typedef logic [BRANCH_GLOBAL_HISTORY_BIT_WIDTH-1:0] GHT_IndexPath;



//
// PHT
//

localparam PHT_ENTRY_NUM = CONF_PHT_ENTRY_NUM;
localparam PHT_ENTRY_NUM_BIT_WIDTH = $clog2(PHT_ENTRY_NUM);
typedef logic [PHT_ENTRY_NUM_BIT_WIDTH-1:0] PHT_IndexPath;

//GAp
localparam PHT_GAP_BITS = PHT_ENTRY_NUM_BIT_WIDTH - BRANCH_GLOBAL_HISTORY_BIT_WIDTH;
localparam PHT_PAP_BITS = PHT_ENTRY_NUM_BIT_WIDTH - BRANCH_GLOBAL_HISTORY_BIT_WIDTH - 1;
localparam PHT_PAP_ENTRY_NUM = (1 << PHT_PAP_BITS);
//GAs
localparam GAS_OFFSET = $clog2(256);


localparam PHT_ENTRY_WIDTH = 2;
localparam PHT_ENTRY_MAX = (1 << PHT_ENTRY_WIDTH) - 1;
typedef logic [PHT_ENTRY_WIDTH-1:0] PHT_EntryPath;

localparam PAP_COUNTERS_NUM = 32; //TODO BASED on Bits
//typedef logic [PAP_COUNTERS_NUM-1 : 0] BranchPatternHistoryPath;
typedef logic [PHT_PAP_BITS-1:0] PAP_PHT_IndexPath;
typedef PHT_EntryPath [PAP_COUNTERS_NUM-1 : 0] PHT_COUNTERS;
//PA
//SAx
localparam HIST_SAX_BITS = 2;
localparam HIST_SAX_ENTRY_NUM = (1 << HIST_SAX_BITS);
typedef logic [HIST_SAX_BITS - 1 : 0]SAX_HIST_IndexPath;
typedef struct packed {
    PHT_COUNTERS Counters;
    //PAP_PHT_IndexPath History;
} PAP_PHT_ENTRY;

typedef struct packed {
    PAP_PHT_ENTRY Entries;
`ifdef USE_SAX_HIST // TODO REMOVE
 SAX_HIST_IndexPath History;
`else
    PAP_PHT_IndexPath History;
`endif 
    AddrPath Address;

}
PAP_PHT_ENTRY_INDEX;

//PAG and SAG
typedef PHT_EntryPath [PHT_PAP_ENTRY_NUM - 1 : 0] GHT_COUNTERS;


typedef struct packed{
    PHT_EntryPath Counter_Val;
    PAP_PHT_IndexPath History;
}
XAG_ENTRY_HIST;

localparam PHT_QUEUE_SIZE = 32;
localparam PHT_QUEUE_SIZE_BIT_WIDTH = $clog2(PHT_QUEUE_SIZE);
typedef logic [PHT_QUEUE_SIZE_BIT_WIDTH-1:0] PhtQueuePointerPath;

typedef struct packed // struct PhtQueueEntry
{
    AddrPath phtWA;            // Write Address
    PHT_EntryPath phtWV;                        // result of bpred
} PhtQueueEntry;


localparam PAP_PHT_QUEUE_SIZE = 32;
localparam PAP_PHT_QUEUE_SIZE_BIT_WIDTH = $clog2(PHT_QUEUE_SIZE);
typedef logic [PAP_PHT_QUEUE_SIZE_BIT_WIDTH-1:0] PAPPhtQueuePointerPath;

typedef struct packed // struct PhtQueueEntry
{
    AddrPath phtWA;            // Write Address
    PAP_PHT_ENTRY phtWV;                        // result of bpred
} PAPPhtQueueEntry;

//
// Result/prediction
//

typedef struct packed // struct BranchResult
{
    PC_Path brAddr;     // The address of a executed branch.
    PC_Path nextAddr;   // The next address of a executed branch.
    logic execTaken;    // The execution result of a branch's direction.
    logic predTaken;    // The prediction result of a branch's direction.
    logic isCondBr;     // Whether this branch is conditional one or not.
    logic mispred;      // Whether the prediction result of this branch is incorrect.
    logic valid;        // Whether this result is valid or not.

    BranchGlobalHistoryPath globalHistory;  // The global history of branches.
`ifdef  USE_TWOLVL
    PAP_PHT_ENTRY_INDEX phtPrevValue;
`elsif USE_XAG
    XAG_ENTRY_HIST phtPrevValue;
`else
    PHT_EntryPath phtPrevValue;             // PHT's counter value
`endif
    
} BranchResult;

typedef struct packed // struct BranchPred
{
    PC_Path predAddr;            // Predicted address
    logic predTaken;                        // result of bpred
    
    BranchGlobalHistoryPath globalHistory;  // The global history of branches.
`ifdef  USE_TWOLVL
    PAP_PHT_ENTRY_INDEX phtPrevValue;
`elsif USE_XAG
    XAG_ENTRY_HIST phtPrevValue;
`else
    PHT_EntryPath phtPrevValue;             // PHT's counter value
`endif
} BranchPred;

endpackage : FetchUnitTypes
