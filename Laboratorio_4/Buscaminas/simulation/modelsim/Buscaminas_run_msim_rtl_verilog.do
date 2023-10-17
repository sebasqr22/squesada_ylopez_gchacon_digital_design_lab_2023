transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/VGA_Main_Module.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/PintarPantalla.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/mux_space.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/mux_dibujar.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/mainJuego.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/ControladorGrafico.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/clkdiv.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/CheckPos.sv}
vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/matriz.sv}

vlog -sv -work work +incdir+C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas {C:/Users/sebas/Documents/GitHub/squesada_ylopez_mgarro_digital_design_lab_2023/Laboratorio_4/Buscaminas/add_random_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  add_random_tb

add wave *
view structure
view signals
run -all
