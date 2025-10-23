onerror {quit -f}
vlib work
vlog -work work multi2sinsigno.vo
vlog -work work multi2sinsigno.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.multi2sinsigno_vlg_vec_tst
vcd file -direction multi2sinsigno.msim.vcd
vcd add -internal multi2sinsigno_vlg_vec_tst/*
vcd add -internal multi2sinsigno_vlg_vec_tst/i1/*
add wave /*
run -all
