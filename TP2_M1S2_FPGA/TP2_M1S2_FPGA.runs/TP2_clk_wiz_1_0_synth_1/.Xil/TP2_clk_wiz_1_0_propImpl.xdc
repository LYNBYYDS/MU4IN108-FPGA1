set_property SRC_FILE_INFO {cfile:c:/Users/28607510/Desktop/TP2_M1S2_FPGA/TP2_M1S2_FPGA.gen/sources_1/bd/TP2/ip/TP2_clk_wiz_1_0/TP2_clk_wiz_1_0.xdc rfile:../../../TP2_M1S2_FPGA.gen/sources_1/bd/TP2/ip/TP2_clk_wiz_1_0/TP2_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
