transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {adder.vho}

vcom -93 -work work {C:/Users/franc/Documents/Quartus/adder/simulation/modelsim/adder.vht}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  adder

add wave *
view structure
view signals
run -all
