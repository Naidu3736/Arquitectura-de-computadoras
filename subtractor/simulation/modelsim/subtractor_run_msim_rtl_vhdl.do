transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/Quartus/subtractor/full_subtractor.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/subtractor/subtractor.vhd}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/subtractor/simulation/modelsim/subtractor.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  subtractor

add wave *
view structure
view signals
run -all
