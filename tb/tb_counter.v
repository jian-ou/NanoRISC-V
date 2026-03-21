`timescale 1ps/1ps
module tb_counter;
reg clk;
reg rst_n;

wire [31:0] count;

counter tb_counter
(
    .rst_n (rst_n),
    .clk (clk),

    .count (count)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("tb_counter.vcd");
    $dumpvars(0, tb_counter);
end

initial begin
    #(CLK_PERIOD*1) rst_n<=1'bx;clk<=1'bx;
    #(CLK_PERIOD*3) rst_n<=0;
    #(CLK_PERIOD*3) rst_n<=1;clk<=0;
    #(CLK_PERIOD*100)
    rst_n<=0;
    #(CLK_PERIOD*5)
    $finish();
end

endmodule
