transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_E/maqestados.vhd}

