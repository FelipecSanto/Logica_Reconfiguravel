vlib work
vmap work work
vcom -2002 ../src/bram.vhd
vcom -2002 ../src/bram_tb.vhd
vsim -voptargs=+acc work.bram_tb
configure wave -timelineunits ns
add wave -divider "Clock e reset"
add wave /bram_tb/clk
add wave /bram_tb/rst

add wave -divider "Controle"
add wave /bram_tb/we

add wave -divider "Dados"
add wave -radix unsigned /bram_tb/addr
add wave -radix unsigned /bram_tb/din
add wave -radix unsigned /bram_tb/dout

run 200 ns
wave zoom full