transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Sumador_Completo_7_1200mv_85c_slow.vho}

vcom -93 -work work {C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba 1/Parte A/TBSumador_completo.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /uut=Sumador_Completo_7_1200mv_85c_vhd_slow.sdo -L altera -L cycloneiii -L gate_work -L work -voptargs="+acc"  TBSumador_Completo

add wave *
view structure
view signals
run -all
