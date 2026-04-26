transcript on

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

vcom -2008 sinal_variavel_mult.vhd
vcom -2008 sinal_variavel_mult_tb.vhd

vsim -voptargs=+acc work.sinal_variavel_mult_tb

view wave
delete wave -all
configure wave -timelineunits ns

add wave -divider "Item B - entrada e controle"
add wave -radix binary sim:/sinal_variavel_mult_tb/clk
add wave -radix binary sim:/sinal_variavel_mult_tb/rst
add wave -radix binary sim:/sinal_variavel_mult_tb/en
add wave -radix binary sim:/sinal_variavel_mult_tb/entrada

add wave -divider "Item B - totalizadores"
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_for
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_while
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_if
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_case
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_sum
add wave -radix unsigned sim:/sinal_variavel_mult_tb/total_demx

run 240 ns
wave zoom full
