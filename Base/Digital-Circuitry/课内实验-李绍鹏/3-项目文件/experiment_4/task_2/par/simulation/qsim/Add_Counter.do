onerror {quit -f}
vlib work
vlog -work work Add_Counter.vo
vlog -work work Add_Counter.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Add_Counter_vlg_vec_tst
vcd file -direction Add_Counter.msim.vcd
vcd add -internal Add_Counter_vlg_vec_tst/*
vcd add -internal Add_Counter_vlg_vec_tst/i1/*
add wave /*
run -all
