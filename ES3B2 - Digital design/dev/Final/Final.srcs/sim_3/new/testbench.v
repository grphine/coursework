`timescale 1ns / 1ps

module tb();

reg clk, rst, ACL_MISO;
reg [4:0] btn;
wire [11:0] colour;
wire hsync, vsync, ACL_MOSI, ACL_SCLK, ACL_CSN;


initial begin
    #1  //assert after first timestamp
    clk = 0;
    rst = 0;
    ACL_MISO = 0;
    #10 //after 10 ts
    rst = 1;
end

always begin
    #1 clk = ~clk; 
//    #50000 sw = 3'b111;
//    #60000 sw = 3'b001;
//    #70000 sw = 3'b000;
end

game_top gt_inst(
    .clk(clk), .rst(rst),
    .btn(btn),
    .colour(colour),
    .hsync(hsync), .vsync(vsync),
     .ACL_MISO(ACL_MISO),
    .ACL_MOSI(ACL_MOSI), .ACL_SCLK(ACL_SCLK), .ACL_CSN(ACL_CSN)    
);
endmodule
