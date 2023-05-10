module colour_grid(
    input clk, rst,
    input [10:0] x_coord, y_coord,
    input [6:0] selected_pointer,
    output [6:0] pointer   
    );    
        
    // screen size params
    parameter BORDER = 11'd8;           // border on 'gameplay' edges
    parameter BANNER_HEIGHT = 11'd130;  // size of info banner at top of screen
          
    // 16 cells sizes
    parameter CELL_WIDTH = 88;
    parameter CELL_HEIGHT = 47;
    
    // adjacency
    reg [1:0] connected_array [0:15][0:15];   // 16x16 cell reference array, x/y
    reg [6:0] pointer_array [0:15][0:15];     // current pointer array
    reg [5:0] xcount, ycount;
          
    reg [6:0] col_pointer;
        
    integer i,j,k,h;
    
    // initialise arrays 
    initial begin
        // adjacency array
        begin
            connected_array[0][0] <= 0;
            connected_array[1][0] <= 0;
            connected_array[2][0] <= 0;
            connected_array[3][0] <= 0;
            connected_array[4][0] <= 0;
            connected_array[5][0] <= 0;
            connected_array[6][0] <= 0;
            connected_array[7][0] <= 0;
            connected_array[8][0] <= 0;
            connected_array[9][0] <= 0;
            connected_array[10][0] <= 0;
            connected_array[11][0] <= 0;
            connected_array[12][0] <= 0;
            connected_array[13][0] <= 0;
            connected_array[14][0] <= 0;
            connected_array[15][0] <= 0;
            connected_array[0][1] <= 0;
            connected_array[1][1] <= 0;
            connected_array[2][1] <= 0;
            connected_array[3][1] <= 0;
            connected_array[4][1] <= 0;
            connected_array[5][1] <= 0;
            connected_array[6][1] <= 0;
            connected_array[7][1] <= 0;
            connected_array[8][1] <= 0;
            connected_array[9][1] <= 0;
            connected_array[10][1] <= 0;
            connected_array[11][1] <= 0;
            connected_array[12][1] <= 0;
            connected_array[13][1] <= 0;
            connected_array[14][1] <= 0;
            connected_array[15][1] <= 0;
            connected_array[0][2] <= 0;
            connected_array[1][2] <= 0;
            connected_array[2][2] <= 0;
            connected_array[3][2] <= 0;
            connected_array[4][2] <= 0;
            connected_array[5][2] <= 0;
            connected_array[6][2] <= 0;
            connected_array[7][2] <= 0;
            connected_array[8][2] <= 0;
            connected_array[9][2] <= 0;
            connected_array[10][2] <= 0;
            connected_array[11][2] <= 0;
            connected_array[12][2] <= 0;
            connected_array[13][2] <= 0;
            connected_array[14][2] <= 0;
            connected_array[15][2] <= 0;
            connected_array[0][3] <= 0;
            connected_array[1][3] <= 0;
            connected_array[2][3] <= 0;
            connected_array[3][3] <= 0;
            connected_array[4][3] <= 0;
            connected_array[5][3] <= 0;
            connected_array[6][3] <= 0;
            connected_array[7][3] <= 0;
            connected_array[8][3] <= 0;
            connected_array[9][3] <= 0;
            connected_array[10][3] <= 0;
            connected_array[11][3] <= 0;
            connected_array[12][3] <= 0;
            connected_array[13][3] <= 0;
            connected_array[14][3] <= 0;
            connected_array[15][3] <= 0;
            connected_array[0][4] <= 0;
            connected_array[1][4] <= 0;
            connected_array[2][4] <= 0;
            connected_array[3][4] <= 0;
            connected_array[4][4] <= 0;
            connected_array[5][4] <= 0;
            connected_array[6][4] <= 0;
            connected_array[7][4] <= 0;
            connected_array[8][4] <= 0;
            connected_array[9][4] <= 0;
            connected_array[10][4] <= 0;
            connected_array[11][4] <= 0;
            connected_array[12][4] <= 0;
            connected_array[13][4] <= 0;
            connected_array[14][4] <= 0;
            connected_array[15][4] <= 0;
            connected_array[0][5] <= 0;
            connected_array[1][5] <= 0;
            connected_array[2][5] <= 0;
            connected_array[3][5] <= 0;
            connected_array[4][5] <= 0;
            connected_array[5][5] <= 0;
            connected_array[6][5] <= 0;
            connected_array[7][5] <= 0;
            connected_array[8][5] <= 0;
            connected_array[9][5] <= 0;
            connected_array[10][5] <= 0;
            connected_array[11][5] <= 0;
            connected_array[12][5] <= 0;
            connected_array[13][5] <= 0;
            connected_array[14][5] <= 0;
            connected_array[15][5] <= 0;
            connected_array[0][6] <= 0;
            connected_array[1][6] <= 0;
            connected_array[2][6] <= 0;
            connected_array[3][6] <= 0;
            connected_array[4][6] <= 0;
            connected_array[5][6] <= 0;
            connected_array[6][6] <= 0;
            connected_array[7][6] <= 1;
            connected_array[8][6] <= 1;
            connected_array[9][6] <= 0;
            connected_array[10][6] <= 0;
            connected_array[11][6] <= 0;
            connected_array[12][6] <= 0;
            connected_array[13][6] <= 0;
            connected_array[14][6] <= 0;
            connected_array[15][6] <= 0;
            connected_array[0][7] <= 0;
            connected_array[1][7] <= 0;
            connected_array[2][7] <= 0;
            connected_array[3][7] <= 0;
            connected_array[4][7] <= 0;
            connected_array[5][7] <= 0;
            connected_array[6][7] <= 0;
            connected_array[7][7] <= 1;
            connected_array[8][7] <= 1;
            connected_array[9][7] <= 0;
            connected_array[10][7] <= 0;
            connected_array[11][7] <= 0;
            connected_array[12][7] <= 0;
            connected_array[13][7] <= 0;
            connected_array[14][7] <= 0;
            connected_array[15][7] <= 0;
            connected_array[0][8] <= 0;
            connected_array[1][8] <= 0;
            connected_array[2][8] <= 0;
            connected_array[3][8] <= 0;
            connected_array[4][8] <= 0;
            connected_array[5][8] <= 0;
            connected_array[6][8] <= 0;
            connected_array[7][8] <= 1;
            connected_array[8][8] <= 1;
            connected_array[9][8] <= 0;
            connected_array[10][8] <= 0;
            connected_array[11][8] <= 0;
            connected_array[12][8] <= 0;
            connected_array[13][8] <= 0;
            connected_array[14][8] <= 0;
            connected_array[15][8] <= 0;
            connected_array[0][9] <= 0;
            connected_array[1][9] <= 0;
            connected_array[2][9] <= 0;
            connected_array[3][9] <= 0;
            connected_array[4][9] <= 0;
            connected_array[5][9] <= 0;
            connected_array[6][9] <= 0;
            connected_array[7][9] <= 1;
            connected_array[8][9] <= 1;
            connected_array[9][9] <= 0;
            connected_array[10][9] <= 0;
            connected_array[11][9] <= 0;
            connected_array[12][9] <= 0;
            connected_array[13][9] <= 0;
            connected_array[14][9] <= 0;
            connected_array[15][9] <= 0;
            connected_array[0][10] <= 0;
            connected_array[1][10] <= 0;
            connected_array[2][10] <= 0;
            connected_array[3][10] <= 0;
            connected_array[4][10] <= 0;
            connected_array[5][10] <= 0;
            connected_array[6][10] <= 0;
            connected_array[7][10] <= 0;
            connected_array[8][10] <= 0;
            connected_array[9][10] <= 0;
            connected_array[10][10] <= 0;
            connected_array[11][10] <= 0;
            connected_array[12][10] <= 0;
            connected_array[13][10] <= 0;
            connected_array[14][10] <= 0;
            connected_array[15][10] <= 0;
            connected_array[0][11] <= 0;
            connected_array[1][11] <= 0;
            connected_array[2][11] <= 0;
            connected_array[3][11] <= 0;
            connected_array[4][11] <= 0;
            connected_array[5][11] <= 0;
            connected_array[6][11] <= 0;
            connected_array[7][11] <= 0;
            connected_array[8][11] <= 0;
            connected_array[9][11] <= 0;
            connected_array[10][11] <= 0;
            connected_array[11][11] <= 0;
            connected_array[12][11] <= 0;
            connected_array[13][11] <= 0;
            connected_array[14][11] <= 0;
            connected_array[15][11] <= 0;
            connected_array[0][12] <= 0;
            connected_array[1][12] <= 0;
            connected_array[2][12] <= 0;
            connected_array[3][12] <= 0;
            connected_array[4][12] <= 0;
            connected_array[5][12] <= 0;
            connected_array[6][12] <= 0;
            connected_array[7][12] <= 0;
            connected_array[8][12] <= 0;
            connected_array[9][12] <= 0;
            connected_array[10][12] <= 0;
            connected_array[11][12] <= 0;
            connected_array[12][12] <= 0;
            connected_array[13][12] <= 0;
            connected_array[14][12] <= 0;
            connected_array[15][12] <= 0;
            connected_array[0][13] <= 0;
            connected_array[1][13] <= 0;
            connected_array[2][13] <= 0;
            connected_array[3][13] <= 0;
            connected_array[4][13] <= 0;
            connected_array[5][13] <= 0;
            connected_array[6][13] <= 0;
            connected_array[7][13] <= 0;
            connected_array[8][13] <= 0;
            connected_array[9][13] <= 0;
            connected_array[10][13] <= 0;
            connected_array[11][13] <= 0;
            connected_array[12][13] <= 0;
            connected_array[13][13] <= 0;
            connected_array[14][13] <= 0;
            connected_array[15][13] <= 0;
            connected_array[0][14] <= 0;
            connected_array[1][14] <= 0;
            connected_array[2][14] <= 0;
            connected_array[3][14] <= 0;
            connected_array[4][14] <= 0;
            connected_array[5][14] <= 0;
            connected_array[6][14] <= 0;
            connected_array[7][14] <= 0;
            connected_array[8][14] <= 0;
            connected_array[9][14] <= 0;
            connected_array[10][14] <= 0;
            connected_array[11][14] <= 0;
            connected_array[12][14] <= 0;
            connected_array[13][14] <= 0;
            connected_array[14][14] <= 0;
            connected_array[15][14] <= 0;
            connected_array[0][15] <= 0;
            connected_array[1][15] <= 0;
            connected_array[2][15] <= 0;
            connected_array[3][15] <= 0;
            connected_array[4][15] <= 0;
            connected_array[5][15] <= 0;
            connected_array[6][15] <= 0;
            connected_array[7][15] <= 0;
            connected_array[8][15] <= 0;
            connected_array[9][15] <= 0;
            connected_array[10][15] <= 0;
            connected_array[11][15] <= 0;
            connected_array[12][15] <= 0;
            connected_array[13][15] <= 0;
            connected_array[14][15] <= 0;
            connected_array[15][15] <= 0;
        end
        // 'random' grid colours
        begin
            pointer_array[0][0] <= 34;
            pointer_array[1][0] <= 40;
            pointer_array[2][0] <= 32;
            pointer_array[3][0] <= 55;
            pointer_array[4][0] <= 50;
            pointer_array[5][0] <= 41;
            pointer_array[6][0] <= 39;
            pointer_array[7][0] <= 45;
            pointer_array[8][0] <= 63;
            pointer_array[9][0] <= 31;
            pointer_array[10][0] <= 19;
            pointer_array[11][0] <= 52;
            pointer_array[12][0] <= 17;
            pointer_array[13][0] <= 0;
            pointer_array[14][0] <= 28;
            pointer_array[15][0] <= 46;
            pointer_array[0][1] <= 31;
            pointer_array[1][1] <= 53;
            pointer_array[2][1] <= 30;
            pointer_array[3][1] <= 60;
            pointer_array[4][1] <= 56;
            pointer_array[5][1] <= 18;
            pointer_array[6][1] <= 26;
            pointer_array[7][1] <= 25;
            pointer_array[8][1] <= 1;
            pointer_array[9][1] <= 5;
            pointer_array[10][1] <= 23;
            pointer_array[11][1] <= 30;
            pointer_array[12][1] <= 43;
            pointer_array[13][1] <= 8;
            pointer_array[14][1] <= 13;
            pointer_array[15][1] <= 28;
            pointer_array[0][2] <= 51;
            pointer_array[1][2] <= 17;
            pointer_array[2][2] <= 43;
            pointer_array[3][2] <= 30;
            pointer_array[4][2] <= 4;
            pointer_array[5][2] <= 12;
            pointer_array[6][2] <= 27;
            pointer_array[7][2] <= 25;
            pointer_array[8][2] <= 19;
            pointer_array[9][2] <= 8;
            pointer_array[10][2] <= 53;
            pointer_array[11][2] <= 57;
            pointer_array[12][2] <= 30;
            pointer_array[13][2] <= 38;
            pointer_array[14][2] <= 38;
            pointer_array[15][2] <= 60;
            pointer_array[0][3] <= 54;
            pointer_array[1][3] <= 22;
            pointer_array[2][3] <= 37;
            pointer_array[3][3] <= 22;
            pointer_array[4][3] <= 19;
            pointer_array[5][3] <= 10;
            pointer_array[6][3] <= 21;
            pointer_array[7][3] <= 31;
            pointer_array[8][3] <= 40;
            pointer_array[9][3] <= 55;
            pointer_array[10][3] <= 20;
            pointer_array[11][3] <= 57;
            pointer_array[12][3] <= 23;
            pointer_array[13][3] <= 25;
            pointer_array[14][3] <= 9;
            pointer_array[15][3] <= 18;
            pointer_array[0][4] <= 42;
            pointer_array[1][4] <= 17;
            pointer_array[2][4] <= 26;
            pointer_array[3][4] <= 31;
            pointer_array[4][4] <= 12;
            pointer_array[5][4] <= 17;
            pointer_array[6][4] <= 38;
            pointer_array[7][4] <= 34;
            pointer_array[8][4] <= 11;
            pointer_array[9][4] <= 4;
            pointer_array[10][4] <= 51;
            pointer_array[11][4] <= 18;
            pointer_array[12][4] <= 32;
            pointer_array[13][4] <= 38;
            pointer_array[14][4] <= 40;
            pointer_array[15][4] <= 4;
            pointer_array[0][5] <= 45;
            pointer_array[1][5] <= 18;
            pointer_array[2][5] <= 12;
            pointer_array[3][5] <= 41;
            pointer_array[4][5] <= 36;
            pointer_array[5][5] <= 44;
            pointer_array[6][5] <= 0;
            pointer_array[7][5] <= 53;
            pointer_array[8][5] <= 9;
            pointer_array[9][5] <= 16;
            pointer_array[10][5] <= 2;
            pointer_array[11][5] <= 7;
            pointer_array[12][5] <= 0;
            pointer_array[13][5] <= 47;
            pointer_array[14][5] <= 41;
            pointer_array[15][5] <= 33;
            pointer_array[0][6] <= 21;
            pointer_array[1][6] <= 32;
            pointer_array[2][6] <= 4;
            pointer_array[3][6] <= 38;
            pointer_array[4][6] <= 56;
            pointer_array[5][6] <= 61;
            pointer_array[6][6] <= 1;
            pointer_array[7][6] <= 43;
            pointer_array[8][6] <= 31;
            pointer_array[9][6] <= 5;
            pointer_array[10][6] <= 14;
            pointer_array[11][6] <= 40;
            pointer_array[12][6] <= 1;
            pointer_array[13][6] <= 16;
            pointer_array[14][6] <= 54;
            pointer_array[15][6] <= 3;
            pointer_array[0][7] <= 55;
            pointer_array[1][7] <= 38;
            pointer_array[2][7] <= 28;
            pointer_array[3][7] <= 46;
            pointer_array[4][7] <= 5;
            pointer_array[5][7] <= 47;
            pointer_array[6][7] <= 51;
            pointer_array[7][7] <= 60;
            pointer_array[8][7] <= 52;
            pointer_array[9][7] <= 52;
            pointer_array[10][7] <= 33;
            pointer_array[11][7] <= 18;
            pointer_array[12][7] <= 42;
            pointer_array[13][7] <= 45;
            pointer_array[14][7] <= 41;
            pointer_array[15][7] <= 26;
            pointer_array[0][8] <= 26;
            pointer_array[1][8] <= 20;
            pointer_array[2][8] <= 58;
            pointer_array[3][8] <= 38;
            pointer_array[4][8] <= 55;
            pointer_array[5][8] <= 41;
            pointer_array[6][8] <= 48;
            pointer_array[7][8] <= 27;
            pointer_array[8][8] <= 5;
            pointer_array[9][8] <= 45;
            pointer_array[10][8] <= 32;
            pointer_array[11][8] <= 54;
            pointer_array[12][8] <= 56;
            pointer_array[13][8] <= 11;
            pointer_array[14][8] <= 11;
            pointer_array[15][8] <= 55;
            pointer_array[0][9] <= 15;
            pointer_array[1][9] <= 58;
            pointer_array[2][9] <= 4;
            pointer_array[3][9] <= 55;
            pointer_array[4][9] <= 33;
            pointer_array[5][9] <= 62;
            pointer_array[6][9] <= 56;
            pointer_array[7][9] <= 50;
            pointer_array[8][9] <= 39;
            pointer_array[9][9] <= 9;
            pointer_array[10][9] <= 23;
            pointer_array[11][9] <= 38;
            pointer_array[12][9] <= 16;
            pointer_array[13][9] <= 37;
            pointer_array[14][9] <= 54;
            pointer_array[15][9] <= 51;
            pointer_array[0][10] <= 19;
            pointer_array[1][10] <= 61;
            pointer_array[2][10] <= 41;
            pointer_array[3][10] <= 25;
            pointer_array[4][10] <= 25;
            pointer_array[5][10] <= 46;
            pointer_array[6][10] <= 9;
            pointer_array[7][10] <= 31;
            pointer_array[8][10] <= 3;
            pointer_array[9][10] <= 27;
            pointer_array[10][10] <= 63;
            pointer_array[11][10] <= 42;
            pointer_array[12][10] <= 47;
            pointer_array[13][10] <= 18;
            pointer_array[14][10] <= 0;
            pointer_array[15][10] <= 63;
            pointer_array[0][11] <= 28;
            pointer_array[1][11] <= 4;
            pointer_array[2][11] <= 45;
            pointer_array[3][11] <= 31;
            pointer_array[4][11] <= 55;
            pointer_array[5][11] <= 30;
            pointer_array[6][11] <= 22;
            pointer_array[7][11] <= 13;
            pointer_array[8][11] <= 32;
            pointer_array[9][11] <= 16;
            pointer_array[10][11] <= 40;
            pointer_array[11][11] <= 2;
            pointer_array[12][11] <= 15;
            pointer_array[13][11] <= 60;
            pointer_array[14][11] <= 40;
            pointer_array[15][11] <= 39;
            pointer_array[0][12] <= 6;
            pointer_array[1][12] <= 22;
            pointer_array[2][12] <= 23;
            pointer_array[3][12] <= 8;
            pointer_array[4][12] <= 1;
            pointer_array[5][12] <= 30;
            pointer_array[6][12] <= 44;
            pointer_array[7][12] <= 12;
            pointer_array[8][12] <= 56;
            pointer_array[9][12] <= 3;
            pointer_array[10][12] <= 5;
            pointer_array[11][12] <= 41;
            pointer_array[12][12] <= 18;
            pointer_array[13][12] <= 28;
            pointer_array[14][12] <= 8;
            pointer_array[15][12] <= 44;
            pointer_array[0][13] <= 11;
            pointer_array[1][13] <= 29;
            pointer_array[2][13] <= 2;
            pointer_array[3][13] <= 24;
            pointer_array[4][13] <= 44;
            pointer_array[5][13] <= 37;
            pointer_array[6][13] <= 40;
            pointer_array[7][13] <= 26;
            pointer_array[8][13] <= 61;
            pointer_array[9][13] <= 26;
            pointer_array[10][13] <= 52;
            pointer_array[11][13] <= 20;
            pointer_array[12][13] <= 12;
            pointer_array[13][13] <= 27;
            pointer_array[14][13] <= 0;
            pointer_array[15][13] <= 55;
            pointer_array[0][14] <= 46;
            pointer_array[1][14] <= 10;
            pointer_array[2][14] <= 2;
            pointer_array[3][14] <= 36;
            pointer_array[4][14] <= 43;
            pointer_array[5][14] <= 33;
            pointer_array[6][14] <= 60;
            pointer_array[7][14] <= 5;
            pointer_array[8][14] <= 33;
            pointer_array[9][14] <= 44;
            pointer_array[10][14] <= 5;
            pointer_array[11][14] <= 26;
            pointer_array[12][14] <= 23;
            pointer_array[13][14] <= 8;
            pointer_array[14][14] <= 17;
            pointer_array[15][14] <= 49;
            pointer_array[0][15] <= 16;
            pointer_array[1][15] <= 35;
            pointer_array[2][15] <= 4;
            pointer_array[3][15] <= 62;
            pointer_array[4][15] <= 11;
            pointer_array[5][15] <= 20;
            pointer_array[6][15] <= 13;
            pointer_array[7][15] <= 51;
            pointer_array[8][15] <= 53;
            pointer_array[9][15] <= 34;
            pointer_array[10][15] <= 39;
            pointer_array[11][15] <= 41;
            pointer_array[12][15] <= 31;
            pointer_array[13][15] <= 61;
            pointer_array[14][15] <= 26;
            pointer_array[15][15] <= 24;
        end
    end

    always@(posedge clk) begin    
        // check currently connected cells
        if(connected_array[xcount][ycount] == 1) begin
            //if matched 
            if(pointer_array[xcount][ycount] == selected_pointer) begin
                // check adjacent connected cells 
                if(connected_array[xcount+1][ycount] == 0)begin
                    connected_array[xcount+1][ycount] <= 1;
                end
                
                if(connected_array[xcount-1][ycount] == 0)begin
                    connected_array[xcount-1][ycount] <= 1;
                end
                
                if(connected_array[xcount][ycount+1] == 0)begin
                    connected_array[xcount][ycount+1] <= 1;
                end
                
                if(connected_array[xcount][ycount-1] == 0)begin
                    connected_array[xcount][ycount-1] <= 1;
                end
                
                //set matched, change colour
                connected_array[xcount][ycount] <= 2;
                pointer_array[xcount][ycount] <= selected_pointer;
            end
        //update already matched cell
        end else if(connected_array[xcount][ycount] == 2) begin
            pointer_array[xcount][ycount] <= selected_pointer;
        end        
    
        // create background cell grid
        for(k=0;k<16;k=k+1)begin
            for(h=0;h<16;h=h+1)begin
                if ((x_coord >= BORDER + h*CELL_WIDTH -1) && (x_coord < BORDER + h*CELL_WIDTH + CELL_WIDTH +1) &&
                    (y_coord >= BORDER + BANNER_HEIGHT + k*CELL_HEIGHT) && (y_coord < BORDER + BANNER_HEIGHT + k*CELL_HEIGHT + CELL_HEIGHT+1)
                    )begin col_pointer <= pointer_array[h][k]; end
            end
        end
    
        // cell position counters
        if(ycount > 15) begin
            ycount <= 0;
            xcount <= 0;
        end else if(xcount > 15) begin
            xcount <= 0;
            ycount <= ycount + 1;
        end else begin
            xcount <= xcount + 1;
        end   
    end 
       
    assign pointer = col_pointer;        
endmodule







