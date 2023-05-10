`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2023 12:05:27
// Design Name: 
// Module Name: vga_out
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga_controller(
    input clk, rst,   
    output [11:0] colour,
    input [11:0] draw,
    output hsync, vsync, 
    output [10:0] x_coord, y_coord
    );
    
    //display parameters
    // horizontal parameters
    parameter DISPLAYH_MAX = 11'd1824;    
    parameter DISPLAYH_MIN = 11'd384;
    parameter HSYNC_START = 11'd151;
    parameter HCOUNT_MAX = 11'd1903; 
    
    // vertical parameters
    parameter DISPLAYV_MAX = 10'd931;
    parameter DISPLAYV_MIN = 10'd31;    
    parameter VSYNC_START = 10'd2; 
    parameter VCOUNT_MAX = 10'd931; 
    
    // background colour
    parameter COL_BLACK = 12'h000;
    
    //internal signals
    reg [10:0] hcount;
    reg [9:0] vcount;
    reg [10:0] x_reg;
    reg [10:0] y_reg;
    
    wire display_region;
    wire v_region;
    wire h_end = (hcount == HCOUNT_MAX);
    wire v_end = (vcount == VCOUNT_MAX);
    
    wire [3:0]draw_r;
    wire [3:0]draw_g;
    wire [3:0]draw_b;
         
    //hsync vsync combinational 
    assign hsync = ((hcount >= 11'd0) && (hcount <= HSYNC_START));
    assign vsync = ((vcount >= 10'd0) && (vcount <= VSYNC_START));
    
    assign display_region = ((hcount >= DISPLAYH_MIN) && (hcount <= DISPLAYH_MAX) && (vcount >= DISPLAYV_MIN) && (vcount <= DISPLAYV_MAX));
    
    assign colour = (display_region) ? draw : COL_BLACK;    

    always@(posedge clk) begin
        if (!rst) begin
            hcount <= 11'd0;
            vcount <= 10'd0;
            x_reg <= 11'd0;
            y_reg <= 11'd0;
        end
        else begin                
            // hcount counter
            if (h_end) begin
                hcount <= 11'd0;
            end else begin
                hcount <= hcount + 11'd1;
            end            
            // vcount counter
            if (v_end) begin
                vcount <= 10'd0;
            end else if (h_end) begin
                vcount <= vcount + 10'd1;  
            end            
            //x coordinate counter
            if((hcount >= DISPLAYH_MIN) && (hcount <= DISPLAYH_MAX)) begin
                x_reg <= x_reg + 11'd1;
            end else begin 
                x_reg <= 11'd0;     
            end            
            //y coordinate counter            
            if (h_end) begin 
                if((vcount >= DISPLAYV_MIN) && (vcount <= DISPLAYV_MAX)) begin
                    y_reg <= y_reg + 11'd1;
                end else begin
                    y_reg <= 11'd0;
                end
            end   
            
        end
    end
        
    assign x_coord = x_reg;
    assign y_coord = y_reg;
    
endmodule
