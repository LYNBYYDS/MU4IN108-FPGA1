onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Project_FPGA_opt

do {wave.do}

view wave
view structure
view signals

do {Project_FPGA.udo}

run -all

quit -force
