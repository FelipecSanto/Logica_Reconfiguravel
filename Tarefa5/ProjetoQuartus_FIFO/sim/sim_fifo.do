vlib work
vmap work work
vcom -2002 ../src/fifo.vhd
vcom -2002 ../src/fifo_tb.vhd
vsim -voptargs=+acc work.fifo_tb
configure wave -timelineunits ns
add wave -divider "Clock e reset"
add wave /fifo_tb/clk
add wave /fifo_tb/rst

add wave -divider "Controle"
add wave /fifo_tb/wr_en
add wave /fifo_tb/rd_en
add wave /fifo_tb/full
add wave /fifo_tb/empty
add wave -radix unsigned /fifo_tb/usedw
add wave /fifo_tb/dut/wr_ptr
add wave /fifo_tb/dut/rd_ptr

add wave -divider "Dados"
add wave -radix unsigned /fifo_tb/din
add wave -radix unsigned /fifo_tb/dout

run 300 ns
wave zoom full