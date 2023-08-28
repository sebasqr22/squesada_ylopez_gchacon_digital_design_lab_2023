transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/gabri/Desktop/Suma/four_bit_adder.vhd}
vcom -93 -work work {C:/Users/gabri/Desktop/Suma/fulladder.vhd}

