transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-2/experimento-2/oneBitFullAdder.vhd}
vcom -93 -work work {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-2/experimento-2/fourBitFullAdder.vhd}

vcom -93 -work work {C:/Users/kevin/Documents/TDD_Projects/Git/CE3201-Laboratorio-2/experimento-2/tb_fourBitFullAdder.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  tb_fourBitFullAdder

add wave *
view structure
view signals
run -all
