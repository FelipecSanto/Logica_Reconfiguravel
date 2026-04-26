transcript on

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

vcom -2008 sinal_variavel_mult.vhd
vcom -2008 sinal_variavel.vhd
vcom -2008 sinal_variavel_tb.vhd

vsim -voptargs=+acc work.sinal_variavel_tb

view wave
delete wave -all
configure wave -timelineunits ns

add wave -divider "Item A - entrada e controle"
add wave -radix binary sim:/sinal_variavel_tb/clk
add wave -radix binary sim:/sinal_variavel_tb/rst
add wave -radix binary sim:/sinal_variavel_tb/en
add wave -radix binary sim:/sinal_variavel_tb/entrada

add wave -divider "Item A - saida"
add wave -radix unsigned sim:/sinal_variavel_tb/total_bit

run 360 ns
wave zoom full
