transcript on

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

;# Gate-level do top-level sintetizado. Os sinais do item B são observados pelas saídas da entidade principal.
vcom -2008 simulation/modelsim/sinal_variavel_6_1200mv_85c_slow.vho
vcom -2008 sinal_variavel_b_gate_tb.vhd

vsim -t ps -voptargs=+acc -sdftyp /sinal_variavel_b_gate_tb/dut=simulation/modelsim/sinal_variavel_6_1200mv_85c_vhd_slow.sdo work.sinal_variavel_b_gate_tb

view wave
delete wave -all
configure wave -timelineunits ns

add wave -divider "Item B gate-level - entrada e controle"
add wave -radix binary sim:/sinal_variavel_b_gate_tb/clk
add wave -radix binary sim:/sinal_variavel_b_gate_tb/rst
add wave -radix binary sim:/sinal_variavel_b_gate_tb/en
add wave -radix binary sim:/sinal_variavel_b_gate_tb/entrada

add wave -divider "Item B gate-level - totalizadores"
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_for
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_while
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_if
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_case
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_sum
add wave -radix unsigned sim:/sinal_variavel_b_gate_tb/total_demx

run 360 ns
wave zoom full
