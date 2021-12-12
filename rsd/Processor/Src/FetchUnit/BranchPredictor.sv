// Copyright 2019- RSD contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.


//
// Branch predictor
//

import BasicTypes::*;
import FetchUnitTypes::*;



module BranchPredictor(
    NextPCStageIF.BranchPredictor port,
    FetchStageIF.BranchPredictor next,
    ControllerIF.BranchPredictor ctrl
);
`ifdef USE_GSHARE
    Gshare predictor( port, next, ctrl );
`elsif USE_GAG_PRED
    GAg predictor( port, next, ctrl );
`elsif USE_GAP_PRED
    GAp predictor( port, next, ctrl );
`elsif USE_GAS_PRED
    GAs predictor( port, next, ctrl );
`elsif USE_PAP_PRED
    PAp predictor( port, next, ctrl );
`elsif USE_PAS_PRED
    PAs predictor( port, next, ctrl );
`else
    Bimodal predictor( port, next );
`endif

endmodule : BranchPredictor
