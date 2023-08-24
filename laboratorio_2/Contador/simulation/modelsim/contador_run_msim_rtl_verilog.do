transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador/contador.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador/display.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador/funcional.sv}

vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/laboratorio_2/Contador/contador_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  contador_tb

add wave *
view structure
view signals
run -all
