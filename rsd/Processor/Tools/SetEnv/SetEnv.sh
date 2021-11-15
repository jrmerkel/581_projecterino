#
# Copy SetEnv.sh, edit the contents, and source as follows.
#
#     source MySetEnv.sh
#
# * This file does not function if run it directly, You should "source".
# * This file is for bash.
# 
# * If you run RTL simulation, you should set RSD_ROOT and RSD_CYGWIN_PATH. 
#   If you use modelsim/questa, you should set RSD_QUESTASIM_PATH in addition  
#   to the above.
#


# Specify the root directory where you checked out RSD.
export RSD_ROOT=/home/jrmerkel/Documents/School/581/proj/rsd/


# Specify the path of a directory that contains a gcc cross compiler binary for RISC-V. 
export RSD_GCC_PATH=/usr/bin/
# Specify the prefix of the file name of the compiler binary.
export RSD_GCC_PREFIX=riscv32-unknown-elf-

# Specify the binary path of Modelsim or QuestaSim.
#export RSD_QUESTASIM_PATH=~/opt/cad/mentor/questasim_2019.4.2_x64/questasim/bin


# Specify the binary path of Synplify.
#export SYNOPSYS_BIN=~/opt/cad/synopsys/fpga_M-2017.03-SP1/bin/

# Specify the path of "dc_shell" for Design Compiler.
#export RSD_DC_SHELL_BIN=~/opt/cad/synopsys/O-2018.06-SP4/bin/dc_shell

# Specify the path of a "verilator" binary
#export RSD_VERILATOR_BIN=verilator

# Specify the ISE folder in Vivado.
export RSD_VIVADO=/tools/Xilinx/Vivado/2020.1/ids_lite/ISE

# Specify the path where CORE Generator/ngc2edif/xtclsh exists
export RSD_VIVADO_BIN=/tools/Xilinx/Vivado/2020.1/bin #ids_lite/ISE/bin/lin64/

# Specify the path of modelsim.ini.
# This file is generated when libraries for modelsim are compiled in Vivado.
#export RSD_MODELSIM_INI=~/work/rsd-git/Processor/Project/ModelSim/modelsim.ini

# Specify the path of a work directory where download or build ZYNQ PS Linux 
export RSD_ARM_LINUX=~/Documents/School/581/proj/rsd/rsd-arm-linux


# Specify the root path of RSD-env, which is a closed repository that contains 
# external commercial packages/tools for RSD development.
# Currently, this repository is not opened.
# export RSD_ENV=~/work/rsd-env/


