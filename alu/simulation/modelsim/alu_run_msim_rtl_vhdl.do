transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/Quartus/adder/full_adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/adder/adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_and/bitwise_and.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_identity/bitwise_identity.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_or/bitwise_or.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/decrementer/decrementer.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/incrementer/incrementer.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/subtractor/subtractor.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/subtractor/full_subtractor.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_not/bitwise_not.vhd}
vcom -93 -work work {C:/Users/franc/Documents/Quartus/alu/alu.vhd}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/alu/simulation/modelsim/alu.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  alu

add wave *
view structure
view signals
run -all
