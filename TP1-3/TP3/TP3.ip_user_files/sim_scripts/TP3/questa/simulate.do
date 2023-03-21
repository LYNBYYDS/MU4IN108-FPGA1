onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib TP3_opt

do {wave.do}

view wave
view structure
view signals

do {TP3.udo}

run -all

quit -force
