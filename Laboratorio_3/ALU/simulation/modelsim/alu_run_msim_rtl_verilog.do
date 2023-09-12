transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/alu_tb.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/FullAdder.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/NBitAdder.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/CompAnd.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/CompXor.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/CompOr.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/mult.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/div.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/mod.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/alu.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/ShiftL.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/ShiftR.sv}

vlog -sv -work work +incdir+C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU {C:/Users/sebas/Desktop/Taller/squesada_ylopez_gchacon_digital_design_lab_2023/Laboratorio_3/ALU/alu_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  alu_tb

add wave *
view structure
view signals
run -all
