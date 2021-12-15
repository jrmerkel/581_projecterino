set_param project.enableReportConfiguration 0
load_feature core
current_fileset
xsim {work.TestMain} -testplusarg MAX_TEST_CYCLES=10000000 -testplusarg TEST_CODE=/home/jrmerkel/Documents/School/581/proj/rsd//Processor/Src/Verification/TestCode/C/581_test -testplusarg DUMMY_DATA_FILE=/home/jrmerkel/Documents/School/581/proj/rsd//Processor/Src/Verification/DummyData.hex -testplusarg ENABLE_PC_GOAL=1 -testplusarg SHOW_SERIAL_OUT=1 -testplusarg RSD_LOG_FILE=RSD.log -autoloadwcfg
