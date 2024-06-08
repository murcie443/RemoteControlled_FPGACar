onerror {exit -code 1}
vlib work
vcom -work work PWM_DCMotor.vho
vcom -work work Waveform4.vwf.vht
vsim -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.PWM_DCMotor_vhd_vec_tst
vcd file -direction PWM_DCMotor.msim.vcd
vcd add -internal PWM_DCMotor_vhd_vec_tst/*
vcd add -internal PWM_DCMotor_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
