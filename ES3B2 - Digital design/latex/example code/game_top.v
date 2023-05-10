module game_top(
    input clk, rst, 
    input [4:0] btn,
    output [11:0] colour,
    output hsync, vsync,
    input ACL_MISO,
    output ACL_MOSI, ACL_SCLK, ACL_CSN,
    output a, b, c, d, e, f, g,
    output [7:0] an
    );
      
    wire [11:0] draw;
    wire [10:0] x_coord, y_coord;
    
    wire game_clock; 
    wire display_clock;
    wire spi_clock;
    wire [14:0] acl_data;
    
    // screen size params
    parameter WIDTH = 11'd1426;     // total display width available
    parameter HEIGHT = 11'd898;     // ... height
    parameter BORDER = 11'd8;     // border on 'gameplay' edges
    parameter BANNER_HEIGHT = 11'd130;  // size of info banner at top of screen
    // gameplay area has 1408x752 remaining available space
    
    // player control area 
    parameter CONTROL_X = 11'd625 + BORDER;   // top corner reference coordinates
    parameter CONTROL_Y = 11'd297 + BANNER_HEIGHT + BORDER;
    parameter CONTROL_COLOUR_BORDER = 11'd10;   // size of colour selection border
    parameter CONTROL_BORDER = 11'd5;   // size of border of control area
    parameter CONTROL_WIDTH = 11'd157;  // overall width
    parameter CONTROL_HEIGHT = 11'd157; // ... height
    
    // player sprite
    parameter SPRITE_X = 11'd16;
    parameter SPRITE_Y = 11'd16;
    
    parameter START_X = CONTROL_X + ((CONTROL_WIDTH)>>1) -11'd8;     // player start position
    parameter START_Y = CONTROL_Y + ((CONTROL_HEIGHT)>>1) -11'd8;
    parameter RIGHT_BOUND_X = CONTROL_X + CONTROL_WIDTH - CONTROL_BORDER - SPRITE_X -11'd9;
    parameter LEFT_BOUND_X = CONTROL_X + CONTROL_BORDER + 11'd10;
    parameter BOTTOM_BOUND_Y = CONTROL_Y + CONTROL_HEIGHT - CONTROL_BORDER - SPRITE_Y -11'd9;
    parameter TOP_BOUND_Y = CONTROL_Y + CONTROL_BORDER + 11'd10;    
    
    reg [10:0] player_pos_x = START_X, player_pos_y = START_Y;
    reg [10:0] player_pos_update_x, player_pos_update_y;
        
//   player movement
     always@(posedge game_clock) begin
        if(btn[0] || !rst) begin
            player_pos_x <= START_X;
            player_pos_y <= START_Y;
        end else begin      
            // x movement      
            if (acl_data[9:5] <= 5'd15) begin
            // 0...15, update left
                player_pos_update_x <= -(acl_data[9:5]);
            end else begin
            // 16...31, update right          
                player_pos_update_x <= 5'd31 - acl_data[9:5];       
            end
            // y movement
            if (acl_data[14:10] <= 5'd15) begin
            // 0...15, update 0...15, up
                player_pos_update_y <= acl_data[14:10];     
            end else begin
            // 16...31, update -16...0, down
                player_pos_update_y <= -(5'd31 - acl_data[14:10]);
            end
                        
            // bound y movement so any overspill is reset to bound
            if(player_pos_y + player_pos_update_y < TOP_BOUND_Y) begin          
                player_pos_y <= TOP_BOUND_Y;
            end else if (player_pos_y + player_pos_update_y > BOTTOM_BOUND_Y) begin
                player_pos_y <= BOTTOM_BOUND_Y;
            end else begin
            // update position            
                player_pos_y <= player_pos_y + player_pos_update_y;
            end       
            // bound x movement  
            if(player_pos_x + player_pos_update_x < LEFT_BOUND_X) begin          
                player_pos_x <= LEFT_BOUND_X;
            end else if (player_pos_x + player_pos_update_x > RIGHT_BOUND_X) begin
                player_pos_x <= RIGHT_BOUND_X;
            end else begin                
                player_pos_x <= player_pos_x + player_pos_update_x;
            end
        end     
    end
     
//      accelerometer interface
     spi_master master(
        .iclk(spi_clock),
        .miso(ACL_MISO),
        .sclk(ACL_SCLK),
        .mosi(ACL_MOSI),
        .cs(ACL_CSN),
        .acl_data(acl_data)
    );     
    // generate clock signals
    clock_gen clock_gen_inst(
        .clk(clk), .rst(rst),
        .game_clock(game_clock), .display_clock(display_clock), .spi_clock(spi_clock)
    );
    // draw graphics
    draw_controller drawcon_inst(
        .clk(display_clock), .rst(rst),    
        .draw(draw),
        .x_coord(x_coord), .y_coord(y_coord),        
        .player_pos_x(player_pos_x), .player_pos_y(player_pos_y)
    );
    // display to screen
    vga_controller vga_inst(
        .clk(display_clock), 
        .rst(rst),
        .draw(draw),
        .colour(colour),
        .hsync(hsync), .vsync(vsync),
        .x_coord(x_coord), .y_coord(y_coord)        
    );
    // 7-seg display
    seginterface seg_inst(
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .e(e), 
        .f(f), 
        .g(g), 
        .an(an), 
        .clk(clk), 
        .rst(rst)
    );    
endmodule
