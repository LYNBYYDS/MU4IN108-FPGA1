# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\marcs\OneDrive\Bureau\Desktop\workspace\Project_SW_system\_ide\scripts\systemdebugger_project_sw_system_1_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\marcs\OneDrive\Bureau\Desktop\workspace\Project_SW_system\_ide\scripts\systemdebugger_project_sw_system_1_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Basys3 210183B16876A" && level==0 && jtag_device_ctx=="jsn-Basys3-210183B16876A-0362d093-0"}
fpga -file C:/Users/marcs/OneDrive/Bureau/Desktop/workspace/Project_SW/_ide/bitstream/Project_FPGA_wrapper.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw C:/Users/marcs/OneDrive/Bureau/Desktop/workspace/Project_HW/export/Project_HW/hw/Project_FPGA_wrapper.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow C:/Users/marcs/OneDrive/Bureau/Desktop/workspace/Project_SW/Debug/Project_SW.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
