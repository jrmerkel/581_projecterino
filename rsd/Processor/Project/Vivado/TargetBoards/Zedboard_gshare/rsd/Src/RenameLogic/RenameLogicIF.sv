// Copyright 2019- RSD contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.


//
// RenameLogic
//

import BasicTypes::*;
import RenameLogicTypes::*;
import SchedulerTypes::*;


interface RenameLogicIF( input logic clk, rst, rstStart );

    // Logical register numbers.
    LRegNumPath logSrcRegA [ RENAME_WIDTH ];
    LRegNumPath logSrcRegB [ RENAME_WIDTH ];
    LRegNumPath logDstReg [ RENAME_WIDTH ];

    // Renamed physical register numbers.
    PRegNumPath phySrcRegA [ RENAME_WIDTH ];
    PRegNumPath phySrcRegB [ RENAME_WIDTH ];
    PRegNumPath phyDstReg [ RENAME_WIDTH ];
    PRegNumPath phyPrevDstReg [ RENAME_WIDTH ];  // For releasing a register.

    // Read/Write control
    logic [ RENAME_WIDTH-1:0 ] updateRMT;
    logic readRegA [ RENAME_WIDTH ];
    logic readRegB [ RENAME_WIDTH ];
    logic writeReg [ RENAME_WIDTH ];

    // Release registers on retirement and recovery.
    logic releaseReg [ COMMIT_WIDTH ];
    PRegNumPath phyReleasedReg [ COMMIT_WIDTH ];

    // There are enough resources to rename.
    logic allocatable;

    // RMT control signals, which are generated in RenameLogic.
    logic [ COMMIT_WIDTH-1:0 ] rmtWriteReg;
    PRegNumPath  rmtWriteReg_PhyRegNum[ COMMIT_WIDTH ];
    LRegNumPath  rmtWriteReg_LogRegNum[ COMMIT_WIDTH ];

    // Retirement RMT control signals, which are generated in CommitStage.
    logic [COMMIT_WIDTH-1:0] retRMT_WriteReg;
    PRegNumPath retRMT_WriteReg_PhyRegNum[COMMIT_WIDTH];
    LRegNumPath retRMT_WriteReg_LogRegNum[COMMIT_WIDTH];

    PRegNumPath retRMT_ReadReg_PhyRegNum[RENAME_WIDTH];
    LRegNumPath retRMT_ReadReg_LogRegNum[RENAME_WIDTH];

    // WAT control signals, which are generated in RenameLogic.
    logic [RENAME_WIDTH-1 : 0] watWriteRegFromPipeReg;
    IssueQueueIndexPath  watWriteIssueQueuePtrFromPipeReg[ RENAME_WIDTH ];
    IssueQueueIndexPath srcIssueQueuePtrRegA[ RENAME_WIDTH ];
    IssueQueueIndexPath srcIssueQueuePtrRegB[ RENAME_WIDTH ];

    // For Recover WAT from Activelist
    IssueQueueIndexPath prevDependIssueQueuePtr[ RENAME_WIDTH ];

    // Write port for WAT
    logic watWriteReg[ COMMIT_WIDTH ];
    LRegNumPath watWriteLogRegNum[ COMMIT_WIDTH ];
    IssueQueueIndexPath  watWriteIssueQueuePtr[ COMMIT_WIDTH ];

    // Commitment/recovery
    logic commit;
    CommitLaneCountPath commitNum;
    CommitLaneCountPath flushNum;

    // To a rename logic
    modport RenameLogic(
    input
        clk,
        rst,
        rstStart,
        updateRMT,
        writeReg,
        releaseReg,
        phyReleasedReg,
        retRMT_ReadReg_PhyRegNum,
        logDstReg,
        watWriteRegFromPipeReg,
        watWriteIssueQueuePtrFromPipeReg,
    output
        allocatable,
        phyDstReg,
        retRMT_ReadReg_LogRegNum,
        rmtWriteReg,
        rmtWriteReg_PhyRegNum,
        rmtWriteReg_LogRegNum,
        watWriteReg,
        watWriteLogRegNum,
        watWriteIssueQueuePtr
    );

    modport RenameStage(
    input
        phySrcRegA,
        phySrcRegB,
        phyDstReg,
        phyPrevDstReg,
        srcIssueQueuePtrRegA,
        srcIssueQueuePtrRegB,
        allocatable,
        prevDependIssueQueuePtr,
    output
        logSrcRegA,
        logSrcRegB,
        logDstReg,
        updateRMT,
        readRegA,
        readRegB,
        writeReg,
        watWriteRegFromPipeReg,
        watWriteIssueQueuePtrFromPipeReg
    );

    modport CommitStage(
    input
        releaseReg,
        phyReleasedReg,
        flushNum,
    output
        commit,
        commitNum,
        retRMT_WriteReg,
        retRMT_WriteReg_PhyRegNum,
        retRMT_WriteReg_LogRegNum
    );

    modport RenameLogicCommitter(
    input
        clk,
        rst,
        commit,
        commitNum,
    output
        releaseReg,
        phyReleasedReg,
        flushNum
    );

    modport RetirementRMT(
    input
        clk,
        rst,
        rstStart,
        retRMT_WriteReg,
        retRMT_WriteReg_PhyRegNum,
        retRMT_WriteReg_LogRegNum,
        retRMT_ReadReg_LogRegNum,
    output
        retRMT_ReadReg_PhyRegNum
    );

    modport RMT(
    input
        clk,
        rst,
        rstStart,
        rmtWriteReg,
        rmtWriteReg_PhyRegNum,
        rmtWriteReg_LogRegNum,
        watWriteReg,
        watWriteLogRegNum,
        watWriteIssueQueuePtr,
        logSrcRegA,
        logSrcRegB,
        logDstReg,
    output
        phySrcRegA,
        phySrcRegB,
        phyPrevDstReg,
        srcIssueQueuePtrRegA,
        srcIssueQueuePtrRegB,
        prevDependIssueQueuePtr
    );

endinterface : RenameLogicIF


