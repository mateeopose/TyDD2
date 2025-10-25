onerror {quit -f}
vlib work
vlog -work work multi2consigno.vo
vlog -work work multi2consigno.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi2consigno_vlg_vec_tst
vcd file -direction multi2consigno.msim.vcd
vcd add -internal multi2consigno_vlg_vec_tst/*
vcd add -internal multi2consigno_vlg_vec_tst/i1/*
add wave /*
run -all
