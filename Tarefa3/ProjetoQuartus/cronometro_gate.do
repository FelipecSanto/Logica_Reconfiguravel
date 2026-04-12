transcript on

set SCRIPT_FILE [info script]
if {$SCRIPT_FILE eq ""} {
    set PROJECT_DIR [pwd]
} else {
    set PROJECT_DIR [file dirname [file normalize $SCRIPT_FILE]]
}

cd $PROJECT_DIR

set GATE_DIR [file join $PROJECT_DIR simulation modelsim]
set GATE_NETLIST [file join $GATE_DIR cronometro.vho]
set GATE_SDF [file join $GATE_DIR cronometro_vhd.sdo]
set GATE_TB_SOURCE [file join $PROJECT_DIR cronometro_gate_tb.vhd]

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

if {![file exists $GATE_NETLIST]} {
    puts "Netlist gate-level nao encontrado: $GATE_NETLIST"
    quit -f
}
if {![file exists $GATE_SDF]} {
    puts "Arquivo SDF nao encontrado: $GATE_SDF"
    quit -f
}
if {![file exists $GATE_TB_SOURCE]} {
    puts "Arquivo TB nao encontrado: $GATE_TB_SOURCE"
    quit -f
}

puts "Simulacao gate-level"
vcom -93 $GATE_NETLIST
vcom -93 $GATE_TB_SOURCE
vsim -t ps -voptargs=+acc -sdfmax /cronometro_gate_tb/dut=$GATE_SDF work.cronometro_gate_tb

catch {view wave}
catch {delete wave *}

add wave -divider "Entradas"
add wave -noupdate sim:/cronometro_gate_tb/clk
add wave -noupdate sim:/cronometro_gate_tb/rst
add wave -noupdate sim:/cronometro_gate_tb/btn_play_pause
add wave -noupdate sim:/cronometro_gate_tb/btn_reset

add wave -divider "Saidas"
add wave -noupdate -unsigned sim:/cronometro_gate_tb/q_cs
add wave -noupdate -unsigned sim:/cronometro_gate_tb/q_s
add wave -noupdate -binary sim:/cronometro_gate_tb/hex0
add wave -noupdate -binary sim:/cronometro_gate_tb/hex1
add wave -noupdate -binary sim:/cronometro_gate_tb/hex2
add wave -noupdate -binary sim:/cronometro_gate_tb/hex3

add wave -divider "Controle"
add wave -noupdate /cronometro_gate_tb/dut/\\state~q\\
add wave -noupdate /cronometro_gate_tb/dut/\\play_prev~q\\
configure -timelineunits ms
update
catch {wave zoom full}
