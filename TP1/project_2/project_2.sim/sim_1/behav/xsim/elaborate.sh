#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Tue Feb 07 16:11:20 CET 2023
# SW Build 3064766 on Wed Nov 18 09:12:47 MST 2020
#
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab -wto 181720d1066341898138e682d7ec9551 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot TB_Top_behav xil_defaultlib.TB_Top -log elaborate.log"
xelab -wto 181720d1066341898138e682d7ec9551 --incr --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot TB_Top_behav xil_defaultlib.TB_Top -log elaborate.log

