vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/microblaze_v11_0_4
vlib riviera/xil_defaultlib
vlib riviera/lmb_v10_v3_0_11
vlib riviera/lmb_bram_if_cntlr_v4_0_19
vlib riviera/blk_mem_gen_v8_4_4
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_21
vlib riviera/axi_crossbar_v2_1_23
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/axi_intc_v4_1_15
vlib riviera/xlconcat_v2_1_4
vlib riviera/mdm_v3_2_19
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_24

vmap xpm riviera/xpm
vmap microblaze_v11_0_4 riviera/microblaze_v11_0_4
vmap xil_defaultlib riviera/xil_defaultlib
vmap lmb_v10_v3_0_11 riviera/lmb_v10_v3_0_11
vmap lmb_bram_if_cntlr_v4_0_19 riviera/lmb_bram_if_cntlr_v4_0_19
vmap blk_mem_gen_v8_4_4 riviera/blk_mem_gen_v8_4_4
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 riviera/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 riviera/axi_crossbar_v2_1_23
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap axi_intc_v4_1_15 riviera/axi_intc_v4_1_15
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap mdm_v3_2_19 riviera/mdm_v3_2_19
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 riviera/axi_gpio_v2_0_24

vlog -work xpm  -sv2k12 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_4 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/9285/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_microblaze_0_0/sim/DCC_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_11 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_dlmb_v10_0/sim/DCC_dlmb_v10_0.vhd" \
"../../../bd/DCC/ip/DCC_ilmb_v10_0/sim/DCC_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_19 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/0b98/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_dlmb_bram_if_cntlr_0/sim/DCC_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/DCC/ip/DCC_ilmb_bram_if_cntlr_0/sim/DCC_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../bd/DCC/ip/DCC_lmb_bram_0/sim/DCC_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../bd/DCC/ip/DCC_xbar_0/sim/DCC_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_15 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_microblaze_0_axi_intc_0/sim/DCC_microblaze_0_axi_intc_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../bd/DCC/ip/DCC_microblaze_0_xlconcat_0/sim/DCC_microblaze_0_xlconcat_0.v" \

vcom -work mdm_v3_2_19 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/8715/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_mdm_1_0/sim/DCC_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/d0f7" \
"../../../bd/DCC/ip/DCC_clk_wiz_1_0/DCC_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/DCC/ip/DCC_clk_wiz_1_0/DCC_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_rst_clk_wiz_1_100M_0/sim/DCC_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../Project_FPGA.gen/sources_1/bd/DCC/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/DCC/ip/DCC_axi_gpio_0_0/sim/DCC_axi_gpio_0_0.vhd" \
"../../../bd/DCC/ip/DCC_axi_gpio_0_1/sim/DCC_axi_gpio_0_1.vhd" \
"../../../bd/DCC/ipshared/5f9e/src/SEPT_SEGMENTS.vhd" \
"../../../bd/DCC/ipshared/5f9e/hdl/SS_v1_0_S00_AXI.vhd" \
"../../../bd/DCC/ipshared/5f9e/hdl/SS_v1_0.vhd" \
"../../../bd/DCC/ip/DCC_SS_0_0/sim/DCC_SS_0_0.vhd" \
"../../../bd/DCC/ipshared/8eea/src/Compteur_Tempo.vhd" \
"../../../bd/DCC/ipshared/8eea/src/DCC_Bit0.vhd" \
"../../../bd/DCC/ipshared/8eea/src/DCC_Bit1.vhd" \
"../../../bd/DCC/ipshared/8eea/src/DCC_Compteur.vhd" \
"../../../bd/DCC/ipshared/8eea/src/TOP.vhd" \
"../../../bd/DCC/ipshared/8eea/hdl/DCC_v1_0_S00_AXI.vhd" \
"../../../bd/DCC/ipshared/8eea/src/DDC_MAE.vhd" \
"../../../bd/DCC/ipshared/8eea/src/Diviseur_Horloge.vhd" \
"../../../bd/DCC/ipshared/8eea/src/MAE.vhd" \
"../../../bd/DCC/ipshared/8eea/src/MAE_Compteur.vhd" \
"../../../bd/DCC/ipshared/8eea/src/Registre_DCC.vhd" \
"../../../bd/DCC/ipshared/8eea/hdl/DCC_v1_0.vhd" \
"../../../bd/DCC/ip/DCC_DCC_0_0/sim/DCC_DCC_0_0.vhd" \
"../../../bd/DCC/sim/DCC.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

