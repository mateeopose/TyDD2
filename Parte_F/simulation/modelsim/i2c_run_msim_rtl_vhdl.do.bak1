transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/lpm_counter2.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/lpm_counter3.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/lpm_shiftreg1.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/comparador.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/lpm_shiftreg2.vhd}
vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/i2c.vhd}

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_F/TB_circuitoi2c.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneiii -L rtl_work -L work -voptargs="+acc"  TB_cirucitoi2c

add wave *
view structure
view signals
run -all
