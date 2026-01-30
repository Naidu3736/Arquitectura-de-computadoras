transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/franc/Documents/quartus/register_file/register_file.vhd}

vcom -93 -work work {C:/Users/franc/Documents/quartus/register_file/register_file_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  register_file_tb

add wave *
view structure
view signals
run -all
