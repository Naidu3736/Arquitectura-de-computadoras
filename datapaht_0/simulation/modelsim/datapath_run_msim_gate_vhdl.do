transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {datapath.vho}

vcom -93 -work work {C:/Users/franc/Documents/quartus/datapaht_0/datapath_tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  datapath_tb

add wave *
view structure
view signals
run -all
