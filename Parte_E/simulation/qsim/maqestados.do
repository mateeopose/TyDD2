onerror {quit -f}
vlib work
vlog -work work maqestados.vo
vlog -work work maqestados.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.maqestados_vlg_vec_tst
vcd file -direction maqestados.msim.vcd
vcd add -internal maqestados_vlg_vec_tst/*
vcd add -internal maqestados_vlg_vec_tst/i1/*
add wave /*
run -all
