vlog -work work C:/Users/Usuario/Documents/Facultad/TyDD2/ProgramasVHDL/Prueba_1/Parte_C/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi2consigno_vlg_vec_tst
onerror {resume}
add wave {multi2consigno_vlg_vec_tst/i1/a0}
add wave {multi2consigno_vlg_vec_tst/i1/a1}
add wave {multi2consigno_vlg_vec_tst/i1/ALTO}
add wave {multi2consigno_vlg_vec_tst/i1/b0}
add wave {multi2consigno_vlg_vec_tst/i1/b1}
add wave {multi2consigno_vlg_vec_tst/i1/Cin}
add wave {multi2consigno_vlg_vec_tst/i1/CLK}
add wave {multi2consigno_vlg_vec_tst/i1/CLRN}
add wave {multi2consigno_vlg_vec_tst/i1/Out0}
add wave {multi2consigno_vlg_vec_tst/i1/Out1}
add wave {multi2consigno_vlg_vec_tst/i1/Out2}
add wave {multi2consigno_vlg_vec_tst/i1/Out3}
add wave {multi2consigno_vlg_vec_tst/i1/PRN}
add wave {multi2consigno_vlg_vec_tst/i1/OUT}
run -all
