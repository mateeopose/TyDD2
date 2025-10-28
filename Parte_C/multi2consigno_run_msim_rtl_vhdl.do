transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_C/Sumador_Completo.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_C/TB_multi2consigno.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  TB_multi2consigno

add wave *
view structure
view signals
run -all
