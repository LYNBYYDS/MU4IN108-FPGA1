# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\28607510\Desktop\TP2_M1S2_FPGA\TP2_SW_system\_ide\scripts\debugger_tp2_sw-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\28607510\Desktop\TP2_M1S2_FPGA\TP2_SW_system\_ide\scripts\debugger_tp2_sw-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B16876A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B16876A-0362d093-0"}
fpga -file C:/Users/28607510/Desktop/TP2_M1S2_FPGA/TP2_SW/_ide/bitstream/TP2_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/28607510/Desktop/TP2_M1S2_FPGA/TP2_HW/export/TP2_HW/hw/TP2_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/28607510/Desktop/TP2_M1S2_FPGA/TP2_SW/Debug/TP2_SW.elf
bpadd -addr &main
