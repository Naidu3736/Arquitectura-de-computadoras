transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/Quartus/adder/full_adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/adder/adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/incrementer/incrementer.vhd}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/incrementer/simulation/modelsim/incrementer.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  incrementer

add wave *
view structure
view signals
run -all
