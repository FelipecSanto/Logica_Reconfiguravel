transcript on

if {[file exists work]} {
    vdel -lib work -all
}

vlib work
vmap work work

;# Netlist gate-level do top-level. O bloco do item B aparece hierarquicamente dentro dele.
vcom -2008 simulation/modelsim/sinal_variavel_6_1200mv_85c_slow.vho
vcom -2008 sinal_variavel_a_gate_tb.vhd

vsim -t ps -voptargs=+acc -sdftyp /sinal_variavel_a_gate_tb/dut=simulation/modelsim/sinal_variavel_6_1200mv_85c_vhd_slow.sdo work.sinal_variavel_a_gate_tb

view wave
delete wave -all
configure wave -timelineunits ns

add wave -divider "Item A gate-level - entrada e controle"
add wave -radix binary sim:/sinal_variavel_a_gate_tb/clk
add wave -radix binary sim:/sinal_variavel_a_gate_tb/rst
add wave -radix binary sim:/sinal_variavel_a_gate_tb/en
add wave -radix binary sim:/sinal_variavel_a_gate_tb/entrada

add wave -divider "Item A gate-level - saida"
add wave -radix unsigned sim:/sinal_variavel_a_gate_tb/total_bit

run 360 ns
wave zoom full
