#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/users/soft/xilinx/2020.2/Vitis/2020.2/bin:/users/soft/xilinx/2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/users/soft/xilinx/2020.2/Vivado/2020.2/bin
else
  PATH=/users/soft/xilinx/2020.2/Vitis/2020.2/bin:/users/soft/xilinx/2020.2/Vivado/2020.2/ids_lite/ISE/bin/lin64:/users/soft/xilinx/2020.2/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/users/enseig/li/Bureau/FPGA/TP1/project_2/project_2.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log Top.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source Top.tcl -notrace


