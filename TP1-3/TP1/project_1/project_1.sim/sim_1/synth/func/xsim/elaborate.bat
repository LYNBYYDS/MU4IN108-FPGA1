@echo off
REM ****************************************************************************
REM Vivado (TM) v2020.2 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Feb 07 11:40:41 +0100 2023
REM SW Build 3064766 on Wed Nov 18 09:12:45 MST 2020
REM
REM Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab -wto e20caf8efaaa4912b21d88b14650e8a7 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_impulse_count_func_synth xil_defaultlib.TB_impulse_count -log elaborate.log"
call xelab  -wto e20caf8efaaa4912b21d88b14650e8a7 --incr --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TB_impulse_count_func_synth xil_defaultlib.TB_impulse_count -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0