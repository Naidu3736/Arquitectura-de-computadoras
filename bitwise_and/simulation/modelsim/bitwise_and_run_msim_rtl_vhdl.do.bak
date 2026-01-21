transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_and/bitwise_and.vhd}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_and/simulation/modelsim/bitwise_and.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  bitwise_and

add wave *
view structure
view signals
run -all
