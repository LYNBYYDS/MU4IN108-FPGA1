# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\marcs\OneDrive\Bureau\Desktop\workspace\Project_HW\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\marcs\OneDrive\Bureau\Desktop\workspace\Project_HW\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {Project_HW}\
-hw {C:\Users\marcs\OneDrive\Bureau\Desktop\FPGA\Project_FPGA\DCC_wrapper.xsa}\
-proc {microblaze_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {C:/Users/marcs/OneDrive/Bureau/Desktop/workspace}

platform write
platform generate -domains 
platform generate
