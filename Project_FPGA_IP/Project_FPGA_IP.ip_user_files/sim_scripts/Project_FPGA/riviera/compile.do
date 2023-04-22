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
vmap mdm_v3_2_19 riviera/mdm_v3_2_19
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 riviera/axi_gpio_v2_0_24

vlog -work xpm  -sv2k12 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_4 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/9285/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_microblaze_0_0/sim/Project_FPGA_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_11 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/c2ed/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_dlmb_v10_0/sim/Project_FPGA_dlmb_v10_0.vhd" \
"../../../bd/Project_FPGA/ip/Project_FPGA_ilmb_v10_0/sim/Project_FPGA_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_19 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/0b98/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_dlmb_bram_if_cntlr_0/sim/Project_FPGA_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/Project_FPGA/ip/Project_FPGA_ilmb_bram_if_cntlr_0/sim/Project_FPGA_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_4_4  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../bd/Project_FPGA/ip/Project_FPGA_lmb_bram_0/sim/Project_FPGA_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../bd/Project_FPGA/ip/Project_FPGA_xbar_0/sim/Project_FPGA_xbar_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work axi_intc_v4_1_15 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/47b8/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_microblaze_0_axi_intc_0/sim/Project_FPGA_microblaze_0_axi_intc_0.vhd" \

vcom -work mdm_v3_2_19 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/8715/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_mdm_1_0/sim/Project_FPGA_mdm_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ec67/hdl" "+incdir+../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/d0f7" \
"../../../bd/Project_FPGA/ip/Project_FPGA_clk_wiz_1_0/Project_FPGA_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/Project_FPGA/ip/Project_FPGA_clk_wiz_1_0/Project_FPGA_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_rst_clk_wiz_1_100M_0/sim/Project_FPGA_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../Project_FPGA_IP.gen/sources_1/bd/Project_FPGA/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/Project_FPGA/ip/Project_FPGA_axi_gpio_0_0/sim/Project_FPGA_axi_gpio_0_0.vhd" \
"../../../bd/Project_FPGA/ip/Project_FPGA_axi_gpio_1_0/sim/Project_FPGA_axi_gpio_1_0.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/Compteur_Tempo.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/DCC_Bit0.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/DCC_Bit1.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/DCC_Compteur.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/DDC_MAE.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/Diviseur_Horloge.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/TOP.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/hdl/IP_Centrale_DCC_v1_0_S00_AXI.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/MAE.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/MAE_Compteur.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/src/Registre_DCC.vhd" \
"../../../bd/Project_FPGA/ipshared/dd66/hdl/IP_Centrale_DCC_v1_0.vhd" \
"../../../bd/Project_FPGA/ip/Project_FPGA_IP_Centrale_DCC_0_0/sim/Project_FPGA_IP_Centrale_DCC_0_0.vhd" \
"../../../bd/Project_FPGA/sim/Project_FPGA.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

