// Copyright 2019- RSD contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.


//
// --- BypassNetworkIF
//

import BasicTypes::*;
import BypassTypes::*;


interface BypassNetworkIF(input logic clk, rst, rstStart);
    
    //
    // --- Integer Pipeline
    //
    
    // Register read stage
    PRegNumPath intPhySrcRegNumA [ INT_ISSUE_WIDTH ];
    PRegNumPath intPhySrcRegNumB [ INT_ISSUE_WIDTH ];
    PRegNumPath intPhyDstRegNum  [ INT_ISSUE_WIDTH ];

    
    logic intReadRegA [ INT_ISSUE_WIDTH ];
    logic intReadRegB [ INT_ISSUE_WIDTH ];

    logic intWriteReg  [ INT_ISSUE_WIDTH ];
    
    BypassControll intCtrlOut [ INT_ISSUE_WIDTH ];
    
    // Execution stage
    BypassControll intCtrlIn [ INT_ISSUE_WIDTH ];
    
    PRegDataPath intSrcRegDataOutA  [ INT_ISSUE_WIDTH ];
    PRegDataPath intSrcRegDataOutB  [ INT_ISSUE_WIDTH ];

    PRegDataPath intDstRegDataOut  [ INT_ISSUE_WIDTH ];

    //
    // --- Complex Integer Pipeline
    //
    
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
    // Register read stage
    PRegNumPath complexPhySrcRegNumA [ COMPLEX_ISSUE_WIDTH ];
    PRegNumPath complexPhySrcRegNumB [ COMPLEX_ISSUE_WIDTH ];
    PRegNumPath complexPhyDstRegNum  [ COMPLEX_ISSUE_WIDTH ];

    logic complexReadRegA [ COMPLEX_ISSUE_WIDTH ];
    logic complexReadRegB [ COMPLEX_ISSUE_WIDTH ];

    logic complexWriteReg  [ COMPLEX_ISSUE_WIDTH ];

    PRegDataPath complexSrcRegDataA [ COMPLEX_ISSUE_WIDTH ];
    PRegDataPath complexSrcRegDataB [ COMPLEX_ISSUE_WIDTH ];

    BypassControll complexCtrlOut [ COMPLEX_ISSUE_WIDTH ];
    
    // Execution stage
    BypassControll complexCtrlIn [ COMPLEX_ISSUE_WIDTH ];
    
    PRegDataPath  complexSrcRegDataOutA [ COMPLEX_ISSUE_WIDTH ];
    PRegDataPath  complexSrcRegDataOutB [ COMPLEX_ISSUE_WIDTH ];
    PVecDataPath  complexSrcVecDataOutA [ COMPLEX_ISSUE_WIDTH ];
    PVecDataPath  complexSrcVecDataOutB [ COMPLEX_ISSUE_WIDTH ];

    PRegDataPath  complexDstRegDataOut  [ COMPLEX_ISSUE_WIDTH ];
    PVecDataPath  complexDstVecDataOut  [ COMPLEX_ISSUE_WIDTH ];
`endif

    //
    // --- Memory Pipeline
    //
    
    // Register read stage
    PRegNumPath memPhySrcRegNumA [ MEM_ISSUE_WIDTH ];
    PRegNumPath memPhySrcRegNumB [ MEM_ISSUE_WIDTH ];
    PRegNumPath memPhyDstRegNum  [ MEM_ISSUE_WIDTH ];
    
    logic memReadRegA [ MEM_ISSUE_WIDTH ];
    logic memReadRegB [ MEM_ISSUE_WIDTH ];

    logic memWriteReg  [ MEM_ISSUE_WIDTH ];
    
    BypassControll memCtrlOut [ MEM_ISSUE_WIDTH ];
    
    // Execution stage
    BypassControll memCtrlIn [ MEM_ISSUE_WIDTH ];
    
    PRegDataPath memSrcRegDataOutA  [ MEM_ISSUE_WIDTH ];
    PRegDataPath memSrcRegDataOutB  [ MEM_ISSUE_WIDTH ];
    PRegDataPath  memDstRegDataOut  [ MEM_ISSUE_WIDTH ];

`ifdef RSD_ENABLE_VECTOR_PATH
    PVecDataPath  memSrcVecDataOutB [ STORE_ISSUE_WIDTH ];
    PVecDataPath  memDstVecDataOut  [ LOAD_ISSUE_WIDTH ];
`endif
    

    modport BypassController(
    input
        clk,
        rst,
        intPhySrcRegNumA,
        intPhySrcRegNumB,
        intPhyDstRegNum,
        intReadRegA,
        intReadRegB,
        intWriteReg,
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
        complexPhySrcRegNumA,
        complexPhySrcRegNumB,
        complexPhyDstRegNum,
        complexReadRegA,
        complexReadRegB,
        complexWriteReg,
`endif
        memPhySrcRegNumA,
        memPhySrcRegNumB,
        memPhyDstRegNum,
        memReadRegA,
        memReadRegB,
        memWriteReg,
    output
        intCtrlOut,
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
        complexCtrlOut,
`endif
        memCtrlOut
    );

    modport BypassNetwork(
    input
        clk,
        rst,
        intCtrlIn,
        intDstRegDataOut,
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
        complexCtrlIn,
        complexDstRegDataOut,
`endif
        memCtrlIn,
        memDstRegDataOut,
    output
        intSrcRegDataOutA,
        intSrcRegDataOutB,
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
        complexSrcRegDataOutA,
        complexSrcRegDataOutB,
`endif
        memSrcRegDataOutA,
        memSrcRegDataOutB
    );

`ifdef RSD_ENABLE_VECTOR_PATH
    modport VectorBypassNetwork(
    input
        clk,
        rst,
        complexCtrlIn,
        complexDstVecDataOut,
        memCtrlIn,
        memDstVecDataOut,
    output
        complexSrcVecDataOutA,
        complexSrcVecDataOutB,
        memSrcVecDataOutB
    );
`endif
    modport IntegerRegisterReadStage(
    input
        clk,
        rst,
        intCtrlOut,
    output
        intPhySrcRegNumA,
        intPhySrcRegNumB,
        intPhyDstRegNum,
        intReadRegA,
        intReadRegB,
        intWriteReg
    );
    
    modport IntegerExecutionStage(
    input
        intSrcRegDataOutA,
        intSrcRegDataOutB,
    output 
        intCtrlIn,
        intDstRegDataOut
    );
    
`ifndef RSD_MARCH_UNIFIED_MULDIV_MEM_PIPE
    modport ComplexIntegerRegisterReadStage(
    input
        clk,
        rst,
        complexCtrlOut,
    output
        complexPhySrcRegNumA,
        complexPhySrcRegNumB,
        complexPhyDstRegNum,
        complexReadRegA,
        complexReadRegB,
        complexWriteReg
    );
    
    modport ComplexIntegerExecutionStage(
    input
        complexSrcRegDataOutA,
        complexSrcRegDataOutB,
        complexSrcVecDataOutA,
        complexSrcVecDataOutB,
    output 
        complexCtrlIn,
        complexDstRegDataOut,
        complexDstVecDataOut
    );
`endif
    
    modport MemoryRegisterReadStage(
    input
        clk,
        rst,
        memCtrlOut,
    output
        memPhySrcRegNumA,
        memPhySrcRegNumB,
        memPhyDstRegNum,
        memReadRegA,
        memReadRegB,
        memWriteReg
    );

    modport MemoryExecutionStage(
    input
        memSrcRegDataOutA,
        memSrcRegDataOutB,
`ifdef RSD_ENABLE_VECTOR_PATH
        memSrcVecDataOutB,
`endif
    output 
        memCtrlIn
    );

    modport MemoryAccessStage(
    output 
`ifdef RSD_ENABLE_VECTOR_PATH
        memDstVecDataOut,
`endif
        memDstRegDataOut
    );

endinterface : BypassNetworkIF




