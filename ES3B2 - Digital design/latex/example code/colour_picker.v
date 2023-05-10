module colour_picker(
    input clk, rst,
    input [10:0] x_coord, y_coord,
    output [6:0] pointer
    );
    
    // screen size params
    parameter BORDER = 8;     // border on 'gameplay' edges
    parameter BANNER_HEIGHT = 130;  // size of info banner at top of screen
 
    // player control area 
    parameter CONTROL_X = 625 + BORDER;   // top corner reference coordinates
    parameter CONTROL_Y = 297 + BANNER_HEIGHT + BORDER;
    parameter CONTROL_COLOUR_BORDER = 10;   // size of colour selection border
    parameter CONTROL_BORDER = 5;   // size of border of control area
    
    // colour selector parameters
    parameter GRADIENT_START_X = CONTROL_X + CONTROL_COLOUR_BORDER + CONTROL_BORDER -1;
    parameter GRADIENT_START_Y = CONTROL_Y + CONTROL_COLOUR_BORDER + CONTROL_BORDER;
    parameter GRADIENT_LENGTH = 128;   
    
    reg [8:0] col_pointer = 0;
    reg [8:0] start_pointer = 0;
    reg yflag = 1;
        
    integer i,j;
    reg [6:0] p = 0;
        
    always@(posedge clk) begin
        // 128x128
        if ((x_coord >= GRADIENT_START_X) && (x_coord < GRADIENT_START_X + GRADIENT_LENGTH ) &&
        (y_coord >= GRADIENT_START_Y) && (y_coord < GRADIENT_START_Y + GRADIENT_LENGTH)
        ) begin          
            // create colour picker 
            for(j=0;j<8;j=j+1)begin
                for(i=0;i<8;i=i+1)begin
                    if ((x_coord >= GRADIENT_START_X + (i*16)) && (x_coord < GRADIENT_START_X + (i*16) + 16) && (y_coord >= GRADIENT_START_Y + (j*16)) && (y_coord < GRADIENT_START_Y + j*16+16))begin col_pointer <= p; end 
                    p = p+1;
                    if(p == 64)begin p = 0; end
                end
            end
        end
    end
    
    assign pointer = col_pointer;
    
endmodule
