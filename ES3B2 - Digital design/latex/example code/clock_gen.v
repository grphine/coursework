module clock_gen(
    input clk, rst, 
    output game_clock, display_clock, spi_clock
    );
    
    // clock wires
    wire clk_60;   
    wire clk_8;
    
    // game clock
    reg gameclk;
    reg [19:0] gclk_div;
    
    // spi clock
    reg spiclk;
    reg spiclk_div;
       
    clk_wiz_0 clk_wiz_instance
    (
    // Clock out ports  
    .clk_106(display_clock),
    .clk_60(clk_60),  //60MHz
    .clk_8(clk_8),    // 8MHz
    // Clock in ports
    .clk_in1(clk)
    );
     
    // produce spi clock of 4MHz
    always@(posedge clk_8) begin
        if(!rst) begin
            spiclk_div <= 0;
            spiclk <= 0;
        end else begin
            if (spiclk_div) begin
                spiclk_div <= 0;
                spiclk <= ~spiclk;
            end else begin 
                spiclk_div <= 1;
            end
        end
    end
     
    // produce game clock of 60Hz
    always@(posedge clk_60) begin
        if(!rst) begin
            gclk_div <= 0;
            gameclk <= 0;
        end else begin
            if (gclk_div >= 20'd1000000) begin
                gclk_div <= 0;
                gameclk <= ~gameclk;
            end else begin 
                gclk_div <= gclk_div + 1;
            end
         end
    end
     
    assign game_clock = gameclk; 
    assign spi_clock = spiclk;     
endmodule
