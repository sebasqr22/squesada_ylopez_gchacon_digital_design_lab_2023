transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/gabri/OneDrive/Documents/GitHub/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/Debug\ ALU {C:/Users/gabri/OneDrive/Documents/GitHub/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/Debug ALU/mod.sv}

