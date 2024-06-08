onerror {exit -code 1}
vlib work
vcom -work work preliminary_control.vho
vcom -work work Waveform33.vwf.vht
vsim  -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.preliminary_control_vhd_vec_tst
vcd file -direction preliminary_control.msim.vcd
vcd add -internal preliminary_control_vhd_vec_tst/*
vcd add -internal preliminary_control_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
