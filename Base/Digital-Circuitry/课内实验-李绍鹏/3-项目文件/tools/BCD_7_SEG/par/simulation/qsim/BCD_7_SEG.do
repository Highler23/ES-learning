onerror {quit -f}
vlib work
vlog -work work BCD_7_SEG.vo
vlog -work work BCD_7_SEG.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BCD_7_SEG_vlg_vec_tst
vcd file -direction BCD_7_SEG.msim.vcd
vcd add -internal BCD_7_SEG_vlg_vec_tst/*
vcd add -internal BCD_7_SEG_vlg_vec_tst/i1/*
add wave /*
run -all
