onerror {quit -f}
vlib work
vlog -work work Digit_Nixie_Counter.vo
vlog -work work Digit_Nixie_Counter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Digit_Nixie_Counter_vlg_vec_tst
vcd file -direction Digit_Nixie_Counter.msim.vcd
vcd add -internal Digit_Nixie_Counter_vlg_vec_tst/*
vcd add -internal Digit_Nixie_Counter_vlg_vec_tst/i1/*
add wave /*
run -all
