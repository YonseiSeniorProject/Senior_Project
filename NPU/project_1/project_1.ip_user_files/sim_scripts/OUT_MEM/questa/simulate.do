onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib OUT_MEM_opt

do {wave.do}

view wave
view structure
view signals

do {OUT_MEM.udo}

run -all

quit -force
