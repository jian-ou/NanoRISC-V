module counter (
    input wire clk,
    input wire rst_n,
    output reg [31:0] count
);

always @(posedge clk or negedge rst_n)
    if (!rst_n)
        count <= 32'b0;
    else
        count <= count + 1'b1;
    
endmodule