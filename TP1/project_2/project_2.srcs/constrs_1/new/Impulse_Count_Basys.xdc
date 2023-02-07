## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property -dict { PACKAGE_PIN W5 IOSTANDARD LVCMOS33 } [get_ports Clk]
    create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports Clk]

## Switches
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 } [get_ports {Reset}]; # Sch=sw[0]

## LEDs
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 }  [get_ports {LED[0]}]
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS33 }  [get_ports {LED[1]}]
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports {LED[2]}]
set_property -dict { PACKAGE_PIN V19 IOSTANDARD LVCMOS33 } [get_ports {LED[3]}]

##Buttons
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports Button_C];
set_property -dict { PACKAGE_PIN W19 IOSTANDARD LVCMOS33 } [get_ports Button_L]; #Sch=btnl
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33 } [get_ports Button_R]

