transcript on

set SCRIPT_FILE [info script]
if {$SCRIPT_FILE eq ""} {
    set PROJECT_DIR [pwd]
} else {
    set PROJECT_DIR [file dirname [file normalize $SCRIPT_FILE]]
}

cd $PROJECT_DIR

set RTL_SOURCE [file join $PROJECT_DIR cronometro.vhd]
set CONT4_SOURCE [file join $PROJECT_DIR cont_4.vhd]
set BCD7SEG_SOURCE [file join $PROJECT_DIR bcd_7seg.vhd]
set RTL_TB_SOURCE [file join $PROJECT_DIR cronometro_rtl_tb.vhd]

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

if {![file exists $CONT4_SOURCE]} {
    puts "Arquivo nao encontrado: $CONT4_SOURCE"
    quit -f
}
if {![file exists $BCD7SEG_SOURCE]} {
    puts "Arquivo nao encontrado: $BCD7SEG_SOURCE"
    quit -f
}
if {![file exists $RTL_SOURCE]} {
    puts "Arquivo RTL nao encontrado: $RTL_SOURCE"
    quit -f
}
if {![file exists $RTL_TB_SOURCE]} {
    puts "Arquivo TB nao encontrado: $RTL_TB_SOURCE"
    quit -f
}

puts "Simulacao RTL"
vcom -93 $CONT4_SOURCE
vcom -93 $BCD7SEG_SOURCE
vcom -93 $RTL_SOURCE
vcom -93 $RTL_TB_SOURCE
vsim -t ps -voptargs=+acc work.cronometro_rtl_tb

catch {view wave}
catch {delete wave *}

log sim:/cronometro_rtl_tb/clk
log sim:/cronometro_rtl_tb/rst
log sim:/cronometro_rtl_tb/btn_play_pause
log sim:/cronometro_rtl_tb/btn_reset
log sim:/cronometro_rtl_tb/q_cs
log sim:/cronometro_rtl_tb/q_s
log sim:/cronometro_rtl_tb/hex0
log sim:/cronometro_rtl_tb/hex1
log sim:/cronometro_rtl_tb/hex2
log sim:/cronometro_rtl_tb/hex3
log sim:/cronometro_rtl_tb/dut/state

add wave -divider "Entradas"
add wave -noupdate sim:/cronometro_rtl_tb/clk
add wave -noupdate sim:/cronometro_rtl_tb/rst
add wave -noupdate sim:/cronometro_rtl_tb/btn_play_pause
add wave -noupdate sim:/cronometro_rtl_tb/btn_reset

add wave -divider "Contagem"
add wave -noupdate -unsigned sim:/cronometro_rtl_tb/q_cs
add wave -noupdate -unsigned sim:/cronometro_rtl_tb/q_s
add wave -noupdate -binary sim:/cronometro_rtl_tb/hex0
add wave -noupdate -binary sim:/cronometro_rtl_tb/hex1
add wave -noupdate -binary sim:/cronometro_rtl_tb/hex2
add wave -noupdate -binary sim:/cronometro_rtl_tb/hex3

add wave -divider "Controle"
add wave -noupdate sim:/cronometro_rtl_tb/dut/state

configure wave -namecolwidth 120
configure wave -valuecolwidth 80
configure wave -timelineunits ms
update
catch {wave zoom full}
