transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_identity/bitwise_identity.vhd}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/bitwise_identity/simulation/modelsim/bitwise_identity.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  bitwise_identity

add wave *
view structure
view signals
run -all
