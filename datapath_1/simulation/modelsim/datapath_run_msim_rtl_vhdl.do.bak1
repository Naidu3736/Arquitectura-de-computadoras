transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/quartus/adder/full_adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/adder/adder.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/bitwise_and/bitwise_and.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/bitwise_identity/bitwise_identity.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/bitwise_not/bitwise_not.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/bitwise_or/bitwise_or.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/decrementer/decrementer.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/incrementer/incrementer.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/subtractor/subtractor.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/subtractor/full_subtractor.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/register_file/register_file.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/mux/mux2a1.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/shifter/shifter.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/alu/alu.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/tri_state_buffer/tri_state_buffer.vhd}
vcom -93 -work work {C:/Users/franc/Documents/quartus/datapath/datapath.vhd}

vcom -93 -work work {C:/Users/franc/Documents/quartus/datapath/simulation/modelsim/datapath.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  datapath

add wave *
view structure
view signals
run -all
