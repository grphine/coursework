module draw_controller(
    input clk, rst,    
    output [11:0] draw,
    input [10:0] x_coord, y_coord, player_pos_x, player_pos_y
    );    
    
    // colour space generation 
    reg [11:0] colourspace[0:63]; 
    integer i;
    reg[11:0] tcol = 12'hfff;

    // pointer wires
    wire [6:0] gradient_pointer;
    wire [6:0] grid_pointer;
    reg [6:0] selected_pointer;
        
    // screen size params
    parameter WIDTH = 11'd1426;     // total display width available
    parameter HEIGHT = 11'd898;     // ... height
    parameter BORDER = 11'd8;     // border on 'gameplay' edges
    parameter BANNER_BG_HEIGHT = 11'd81;  // size of top part of info banner at top of screen
    parameter BANNER_HEIGHT = 11'd130;  // size of info banner at top of screen
    // gameplay area has 1408x752 remaining available space
    
    // player control area 
    parameter CONTROL_X = 11'd625 + BORDER;   // top corner reference coordinates
    parameter CONTROL_Y = 11'd297 + BANNER_HEIGHT + BORDER;
    parameter CONTROL_COLOUR_BORDER = 11'd10;   // size of colour selection border
    parameter CONTROL_BORDER = 11'd5;   // size of border of control area
    parameter CONTROL_WIDTH = 11'd157;  // overall width
    parameter CONTROL_HEIGHT = 11'd157; // ... height       
    
    // colour selector parameters
    parameter GRADIENT_START_X = CONTROL_X + CONTROL_COLOUR_BORDER + CONTROL_BORDER;
    parameter GRADIENT_START_Y = CONTROL_Y + CONTROL_COLOUR_BORDER + CONTROL_BORDER;
    parameter GRADIENT_LENGTH = 128;    
    
    // colour params
    parameter COL_BORDER = 12'h33A;
    parameter COL_BANNER_BG = 12'hAAF;
    parameter COL_BANNER_FLOOR = 12'h336;
    
    // Title sprite
    parameter TITLE_SPRITE_X = 200, TITLE_SPRITE_Y = 130;
    parameter TITLE_POS_X = 720;
    reg [14:0] title_addr;
    wire [11:0] col_title;
    
    // player sprite
    parameter RETICLE_SPRITE_LENGTH = 16;
    reg [7:0] reticle_addr;
    wire [11:0] col_reticle;
    
    // drawing pixel 
    reg [11:0] pixel;
    reg [11:0] col_selected; // selected colour 
    
    // ID sprite
    parameter ID_SPRITE_X = 61;
    parameter ID_SPRITE_Y = 31;
    parameter ID_SPRITE_OFFSET = 5;
    reg [10:0] id_addr;
    wire [11:0] col_id;

always@(posedge clk) begin
    // create colourspace
    for(i=0;i<64;i=i+1)begin
        colourspace[i] = tcol;
        tcol = tcol - 12'h020;
        if(tcol[7:4] == 4'hf) begin
            tcol = tcol - 12'h100;
        end
    end  
         
    // banner 
     if (y_coord < BANNER_HEIGHT) begin
        if ( (x_coord < TITLE_POS_X - TITLE_SPRITE_X/2  ) || (x_coord >= TITLE_POS_X + TITLE_SPRITE_X/2 ) || (y_coord >=  TITLE_SPRITE_Y  ) ) begin
            if ((x_coord >= ID_SPRITE_OFFSET) && (x_coord < ID_SPRITE_OFFSET + ID_SPRITE_X) && (y_coord >= ID_SPRITE_OFFSET) && (y_coord < ID_SPRITE_OFFSET + ID_SPRITE_Y)) begin
                pixel <= col_id;
                if ((id_addr == (ID_SPRITE_X * ID_SPRITE_Y) -1)|| ( (x_coord == ID_SPRITE_OFFSET) && (y_coord == ID_SPRITE_OFFSET) )) begin
                    id_addr <= 0;
                end else begin
                    id_addr <= id_addr + 1;
                end        
            // banner colours
            end else if (y_coord < BANNER_BG_HEIGHT) begin
                pixel <= COL_BANNER_BG;
            end else begin
                pixel <= COL_BANNER_FLOOR;
            end
        // title sprite
        end else begin
            pixel <= col_title;
            if ((title_addr == (TITLE_SPRITE_X * TITLE_SPRITE_Y) -1)|| ( (x_coord == TITLE_POS_X - TITLE_SPRITE_X/2) && (y_coord == 0) )) begin
                title_addr <= 0;
            end else begin
                title_addr <= title_addr + 1;
            end
        end
    end else begin
    // below banner
        //frame border
        if ((x_coord < BORDER) || (x_coord > (WIDTH - BORDER)) || 
            (y_coord < BANNER_HEIGHT + BORDER) || (y_coord > (HEIGHT - BORDER)))  begin
            pixel <= COL_BORDER;    
        // player reticle sprite
        end else if ( (x_coord >= player_pos_x  ) && (x_coord < player_pos_x + RETICLE_SPRITE_LENGTH ) && 
                      (y_coord >= player_pos_y  ) && (y_coord < player_pos_y + RETICLE_SPRITE_LENGTH ) ) begin   
            // reset addr           
            if ( (reticle_addr == (RETICLE_SPRITE_LENGTH**2)-1) ||         // at end of sprite draw
               ( (x_coord == player_pos_x ) && (y_coord == player_pos_y) )  ) begin   // at beginning of sprite position
                reticle_addr <= 0;
            end else begin   
                // sprite transparency             
                if (col_reticle == 12'hfff) begin
                    pixel <= colourspace[gradient_pointer];
                // colour selection
                end else if (col_reticle == 12'hf00) begin
                    pixel <= colourspace[gradient_pointer];
                    col_selected <= colourspace[gradient_pointer];
                    selected_pointer <= gradient_pointer;
                end else begin
                    pixel <= col_reticle;
                end                
                reticle_addr <= reticle_addr + 1;
            end   
                            
        // colour selector gradient area        
        end else if (
            (x_coord >= GRADIENT_START_X) && (x_coord < (GRADIENT_START_X+GRADIENT_LENGTH)) &&
            (y_coord >= GRADIENT_START_Y) && (y_coord < (GRADIENT_START_Y+GRADIENT_LENGTH))
            )          
            begin
                pixel <= colourspace[gradient_pointer]; 
            
        // colour selection area border
        end else if (
            (x_coord > (CONTROL_X+CONTROL_COLOUR_BORDER)) && (x_coord < (CONTROL_X + CONTROL_WIDTH - CONTROL_COLOUR_BORDER) ) &&
            (y_coord > CONTROL_Y+CONTROL_COLOUR_BORDER) && (y_coord < (CONTROL_Y + CONTROL_HEIGHT - CONTROL_COLOUR_BORDER) )
            ) begin      
            pixel <= COL_BORDER; 
                
        // selected colour picker border
        end else if (
            (x_coord > CONTROL_X) && (x_coord < (CONTROL_X + CONTROL_WIDTH) ) &&
            (y_coord > CONTROL_Y) && (y_coord < (CONTROL_Y + CONTROL_HEIGHT) )
            ) begin
            pixel <= col_selected;  
            
        // grid background
        end else begin
            pixel <= colourspace[grid_pointer];
        end         
    end
end 

assign draw = pixel;

blk_mem_gen_2 sprite_reticle(
    .clka(clk),
    .addra(reticle_addr),
    .douta(col_reticle)
);

blk_mem_gen_3 sprite_title(
    .clka(clk),
    .addra(title_addr),
    .douta(col_title)
);

blk_mem_gen_0 sprite_id(
    .clka(clk),
    .addra(id_addr),
    .douta(col_id)
);

colour_picker colour_picker_inst(
    .clk(clk), .rst(rst),
    .x_coord(x_coord), .y_coord(y_coord),
    .pointer(gradient_pointer)
    );
    
colour_grid colour_grid_inst(
    .clk(clk), .rst(rst),
    .x_coord(x_coord), .y_coord(y_coord),
    .selected_pointer(selected_pointer),
    .pointer(grid_pointer)
);
    
endmodule