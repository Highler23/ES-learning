onerror {quit -f}
vlib work
vlog -work work Wire_Decoder.vo
vlog -work work Wire_Decoder.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Wire_Decoder_vlg_vec_tst
vcd file -direction Wire_Decoder.msim.vcd
vcd add -internal Wire_Decoder_vlg_vec_tst/*
vcd add -internal Wire_Decoder_vlg_vec_tst/i1/*
add wave /*
run -all
