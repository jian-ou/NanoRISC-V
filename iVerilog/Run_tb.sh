iverilog -o ./iVerilog/out/tb_counter.out ./rtl/counter.v ./tb/tb_counter.v

vvp ./iVerilog/out/tb_counter.out

cp ./tb_counter.vcd ./iVerilog/vcd/tb_counter.vcd

rm ./tb_counter.vcd