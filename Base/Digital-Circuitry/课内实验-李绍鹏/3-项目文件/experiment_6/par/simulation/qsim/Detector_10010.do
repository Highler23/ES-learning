onerror {quit -f}
vlib work
vlog -work work Detector_10010.vo
vlog -work work Detector_10010.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Detector_10010_vlg_vec_tst
vcd file -direction Detector_10010.msim.vcd
vcd add -internal Detector_10010_vlg_vec_tst/*
vcd add -internal Detector_10010_vlg_vec_tst/i1/*
add wave /*
run -all
