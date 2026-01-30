transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/quartus/shifter/shifter.vhd}

vcom -93 -work work {C:/Users/franc/Documents/quartus/shifter/tb_shifter.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_shifter

add wave *
view structure
view signals
run -all
