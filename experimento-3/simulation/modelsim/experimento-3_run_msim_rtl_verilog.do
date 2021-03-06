transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3/flip_flop.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3/deco.sv}
vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3/counter.sv}

vlog -sv -work work +incdir+C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3 {C:/Users/ranmsy/Desktop/CE3201-Laboratorio-2/experimento-3/counter_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  counter_tb

add wave *
view structure
view signals
run -all
