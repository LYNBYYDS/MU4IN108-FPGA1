# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\28607510\Desktop\TP2_M1S2_FPGA\TP2_HW\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\28607510\Desktop\TP2_M1S2_FPGA\TP2_HW\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {TP2_HW}\
-hw {C:\Users\28607510\Desktop\TP2_M1S2_FPGA\TP2_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/28607510/Desktop/TP2_M1S2_FPGA}

platform write
platform generate -domains 
platform active {TP2_HW}
bsp reload
platform generate
