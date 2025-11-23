onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib BIAS_MEM_opt

do {wave.do}

view wave
view structure
view signals

do {BIAS_MEM.udo}

run -all

quit -force
