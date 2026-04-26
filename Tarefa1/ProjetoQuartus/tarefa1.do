transcript on

if {[file exists work]} {
	vdel -lib work -all
}

vlib work
vmap work work

vcom -2008 contador4.vhd
vcom -2008 contador4_tb.vhd

vsim -voptargs=+acc work.tb_contador4

view wave
delete wave -all
configure wave -timelineunits ns

add wave -divider "Sinais de entrada"
add wave -radix binary sim:/tb_contador4/clk
add wave -radix binary sim:/tb_contador4/rst
add wave -radix binary sim:/tb_contador4/en
add wave -radix binary sim:/tb_contador4/clr
add wave -radix hex sim:/tb_contador4/load

add wave -divider "Sinais de saida e interno"
add wave -radix hex sim:/tb_contador4/q
add wave -radix binary sim:/tb_contador4/uut/count

run 220 ns
wave zoom full
