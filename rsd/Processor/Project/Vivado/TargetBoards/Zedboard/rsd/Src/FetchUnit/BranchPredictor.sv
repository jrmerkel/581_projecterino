// Copyright 2019- RSD contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.


//
// Branch predictor
//

import BasicTypes::*;
import FetchUnitTypes::*;

//`define USE_GSHARE
`define USE_GAG_PRED

module BranchPredictor(
    NextPCStageIF.BranchPredictor port,
    FetchStageIF.BranchPredictor next,
    ControllerIF.BranchPredictor ctrl
);

`ifdef USE_GSHARE
    Gshare predictor( port, next, ctrl );
`elsif USE_GAG_PRED
    GAg predictor( port, next, ctrl );
`else
    Bimodal predictor( port, next );
`endif

endmodule : BranchPredictor
