onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+BIAS_MEM -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.BIAS_MEM xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {BIAS_MEM.udo}

run -all

endsim

quit -force
