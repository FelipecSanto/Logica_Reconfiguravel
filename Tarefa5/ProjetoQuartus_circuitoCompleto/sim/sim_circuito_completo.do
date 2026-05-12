vlib work
vmap work work
vcom -2002 ../../ProjetoQuartus_BRAM/src/bram_gen.vhd
vcom -2002 ../../ProjetoQuartus_BRAM/src/bram_gen_Initialized.vhd
vcom -2002 ../../ProjetoQuartus_FIFO/src/fifo_gen.vhd
vcom -2002 ../src/sync_bram.vhd
vcom -2002 ../src/sync_fifo.vhd
vcom -2002 ../src/flow_controller.vhd
vcom -2002 ../src/circuito_completo.vhd
vcom -2002 ../src/circuito_completo_tb.vhd
file copy -force ../src/bram_init_data.mif ./bram_init_data.mif
vsim -voptargs=+acc work.circuito_completo_tb
configure wave -timelineunits ns
add wave -divider "Clock e reset"
add wave /circuito_completo_tb/clk
add wave /circuito_completo_tb/rst

add wave -divider "Endereços"
add wave -radix unsigned /circuito_completo_tb/dut/u_ctrl/src_addr
add wave -radix unsigned /circuito_completo_tb/dut/u_ctrl/dst_addr

add wave -divider "Controle"
add wave /circuito_completo_tb/dbg_done
add wave /circuito_completo_tb/dut/u_ctrl/fifo_wr_en
add wave /circuito_completo_tb/dut/u_ctrl/fifo_rd_en
add wave /circuito_completo_tb/dut/u_ctrl/dst_we

add wave -divider "FIFO"
add wave -radix symbolic /circuito_completo_tb/dut/u_ctrl/wr_state
add wave -radix unsigned /circuito_completo_tb/dut/u_ctrl/fifo_usedw
add wave -radix symbolic /circuito_completo_tb/dut/u_ctrl/rd_state

add wave -divider "Dados"
add wave -radix unsigned /circuito_completo_tb/dut/src_dout
add wave -radix unsigned /circuito_completo_tb/dut/fifo_dout
add wave -radix unsigned /circuito_completo_tb/dut/dst_dout

run 160 us
wave zoom full