//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 23.04.2023 19:10:48
//// Design Name: 
//// Module Name: colour_grid
//// Project Name: 
//// Target Devices: 
//// Tool Versions: 
//// Description: 
//// 
//// Dependencies: 
//// 
//// Revision:
//// Revision 0.01 - File Created
//// Additional Comments:
//// 
////////////////////////////////////////////////////////////////////////////////////


//module colour_grid(
//    input clk, rst,
//    input [10:0] x_coord, y_coord,
//    input [6:0] selected_pointer,
//    output [6:0] pointer   
//    );    
        
//    // screen size params
//    parameter WIDTH = 11'd1426;     // total display width available
//    parameter HEIGHT = 11'd898;     // ... height
//    parameter BORDER = 11'd8;     // border on 'gameplay' edges
//    parameter BANNER_HEIGHT = 11'd130;  // size of info banner at top of screen
//    // gameplay area has 1408x752 remaining available space
    
//    // player control area 
//    parameter CONTROL_X = 11'd625 + BORDER;   // top corner reference coordinates
//    parameter CONTROL_Y = 11'd297 + BANNER_HEIGHT + BORDER;
//    parameter CONTROL_COLOUR_BORDER = 11'd10;   // size of colour selection border
//    parameter CONTROL_BORDER = 11'd5;   // size of border of control area
//    parameter CONTROL_WIDTH = 11'd157;  // overall width
//    parameter CONTROL_HEIGHT = 11'd157; // ... height       
    
//    // colour selector parameters
//    parameter GRADIENT_START_X = CONTROL_X + CONTROL_COLOUR_BORDER + CONTROL_BORDER;
//    parameter GRADIENT_START_Y = CONTROL_Y + CONTROL_COLOUR_BORDER + CONTROL_BORDER;
//    parameter GRADIENT_LENGTH = 128;  
        
//    parameter GRID = 256;   // cells in grid
    
//    // adjacency
//    reg [1:0] connected_array [0:15][0:15];   // 16x16 cell reference array, x/y
//    reg [6:0] pointer_array [0:15][0:15];       // current pointer array
//    integer j;
//    reg [5:0] xcount, ycount;
  
////    // generate random number array
////    reg [6:0] data [255:0];
////    reg [6:0] rand_data [GRID-1:0];
////    integer i;
        
//    reg [6:0] col_pointer;
    
////    reg [6:0] temp_p;
    
//    initial begin
    
//    begin
//    	pointer_array[0][0] <= 52;
//	connected_array[0][0] <= 0;
//	pointer_array[1][0] <= 25;
//	connected_array[1][0] <= 0;
//	pointer_array[2][0] <= 47;
//	connected_array[2][0] <= 0;
//	pointer_array[3][0] <= 33;
//	connected_array[3][0] <= 0;
//	pointer_array[4][0] <= 7;
//	connected_array[4][0] <= 0;
//	pointer_array[5][0] <= 55;
//	connected_array[5][0] <= 0;
//	pointer_array[6][0] <= 43;
//	connected_array[6][0] <= 0;
//	pointer_array[7][0] <= 2;
//	connected_array[7][0] <= 0;
//	pointer_array[8][0] <= 43;
//	connected_array[8][0] <= 0;
//	pointer_array[9][0] <= 17;
//	connected_array[9][0] <= 0;
//	pointer_array[10][0] <= 2;
//	connected_array[10][0] <= 0;
//	pointer_array[11][0] <= 42;
//	connected_array[11][0] <= 0;
//	pointer_array[12][0] <= 36;
//	connected_array[12][0] <= 0;
//	pointer_array[13][0] <= 53;
//	connected_array[13][0] <= 0;
//	pointer_array[14][0] <= 57;
//	connected_array[14][0] <= 0;
//	pointer_array[15][0] <= 58;
//	connected_array[15][0] <= 0;
//	pointer_array[0][1] <= 55;
//	connected_array[0][1] <= 0;
//	pointer_array[1][1] <= 2;
//	connected_array[1][1] <= 0;
//	pointer_array[2][1] <= 32;
//	connected_array[2][1] <= 0;
//	pointer_array[3][1] <= 55;
//	connected_array[3][1] <= 0;
//	pointer_array[4][1] <= 18;
//	connected_array[4][1] <= 0;
//	pointer_array[5][1] <= 39;
//	connected_array[5][1] <= 0;
//	pointer_array[6][1] <= 51;
//	connected_array[6][1] <= 0;
//	pointer_array[7][1] <= 33;
//	connected_array[7][1] <= 0;
//	pointer_array[8][1] <= 31;
//	connected_array[8][1] <= 0;
//	pointer_array[9][1] <= 11;
//	connected_array[9][1] <= 0;
//	pointer_array[10][1] <= 50;
//	connected_array[10][1] <= 0;
//	pointer_array[11][1] <= 3;
//	connected_array[11][1] <= 0;
//	pointer_array[12][1] <= 28;
//	connected_array[12][1] <= 0;
//	pointer_array[13][1] <= 29;
//	connected_array[13][1] <= 0;
//	pointer_array[14][1] <= 0;
//	connected_array[14][1] <= 0;
//	pointer_array[15][1] <= 24;
//	connected_array[15][1] <= 0;
//	pointer_array[0][2] <= 51;
//	connected_array[0][2] <= 0;
//	pointer_array[1][2] <= 19;
//	connected_array[1][2] <= 0;
//	pointer_array[2][2] <= 39;
//	connected_array[2][2] <= 0;
//	pointer_array[3][2] <= 41;
//	connected_array[3][2] <= 0;
//	pointer_array[4][2] <= 7;
//	connected_array[4][2] <= 0;
//	pointer_array[5][2] <= 3;
//	connected_array[5][2] <= 0;
//	pointer_array[6][2] <= 59;
//	connected_array[6][2] <= 0;
//	pointer_array[7][2] <= 11;
//	connected_array[7][2] <= 0;
//	pointer_array[8][2] <= 26;
//	connected_array[8][2] <= 0;
//	pointer_array[9][2] <= 3;
//	connected_array[9][2] <= 0;
//	pointer_array[10][2] <= 24;
//	connected_array[10][2] <= 0;
//	pointer_array[11][2] <= 14;
//	connected_array[11][2] <= 0;
//	pointer_array[12][2] <= 61;
//	connected_array[12][2] <= 0;
//	pointer_array[13][2] <= 18;
//	connected_array[13][2] <= 0;
//	pointer_array[14][2] <= 17;
//	connected_array[14][2] <= 0;
//	pointer_array[15][2] <= 35;
//	connected_array[15][2] <= 0;
//	pointer_array[0][3] <= 54;
//	connected_array[0][3] <= 0;
//	pointer_array[1][3] <= 52;
//	connected_array[1][3] <= 0;
//	pointer_array[2][3] <= 30;
//	connected_array[2][3] <= 0;
//	pointer_array[3][3] <= 40;
//	connected_array[3][3] <= 0;
//	pointer_array[4][3] <= 59;
//	connected_array[4][3] <= 0;
//	pointer_array[5][3] <= 52;
//	connected_array[5][3] <= 0;
//	pointer_array[6][3] <= 55;
//	connected_array[6][3] <= 0;
//	pointer_array[7][3] <= 17;
//	connected_array[7][3] <= 0;
//	pointer_array[8][3] <= 23;
//	connected_array[8][3] <= 0;
//	pointer_array[9][3] <= 30;
//	connected_array[9][3] <= 0;
//	pointer_array[10][3] <= 17;
//	connected_array[10][3] <= 0;
//	pointer_array[11][3] <= 32;
//	connected_array[11][3] <= 0;
//	pointer_array[12][3] <= 19;
//	connected_array[12][3] <= 0;
//	pointer_array[13][3] <= 54;
//	connected_array[13][3] <= 0;
//	pointer_array[14][3] <= 52;
//	connected_array[14][3] <= 0;
//	pointer_array[15][3] <= 16;
//	connected_array[15][3] <= 0;
//	pointer_array[0][4] <= 22;
//	connected_array[0][4] <= 0;
//	pointer_array[1][4] <= 5;
//	connected_array[1][4] <= 0;
//	pointer_array[2][4] <= 6;
//	connected_array[2][4] <= 0;
//	pointer_array[3][4] <= 59;
//	connected_array[3][4] <= 0;
//	pointer_array[4][4] <= 3;
//	connected_array[4][4] <= 0;
//	pointer_array[5][4] <= 16;
//	connected_array[5][4] <= 0;
//	pointer_array[6][4] <= 47;
//	connected_array[6][4] <= 0;
//	pointer_array[7][4] <= 53;
//	connected_array[7][4] <= 0;
//	pointer_array[8][4] <= 44;
//	connected_array[8][4] <= 0;
//	pointer_array[9][4] <= 39;
//	connected_array[9][4] <= 0;
//	pointer_array[10][4] <= 49;
//	connected_array[10][4] <= 0;
//	pointer_array[11][4] <= 35;
//	connected_array[11][4] <= 0;
//	pointer_array[12][4] <= 29;
//	connected_array[12][4] <= 0;
//	pointer_array[13][4] <= 36;
//	connected_array[13][4] <= 0;
//	pointer_array[14][4] <= 50;
//	connected_array[14][4] <= 0;
//	pointer_array[15][4] <= 15;
//	connected_array[15][4] <= 0;
//	pointer_array[0][5] <= 7;
//	connected_array[0][5] <= 0;
//	pointer_array[1][5] <= 7;
//	connected_array[1][5] <= 0;
//	pointer_array[2][5] <= 28;
//	connected_array[2][5] <= 0;
//	pointer_array[3][5] <= 58;
//	connected_array[3][5] <= 0;
//	pointer_array[4][5] <= 37;
//	connected_array[4][5] <= 0;
//	pointer_array[5][5] <= 54;
//	connected_array[5][5] <= 0;
//	pointer_array[6][5] <= 5;
//	connected_array[6][5] <= 0;
//	pointer_array[7][5] <= 27;
//	connected_array[7][5] <= 0;
//	pointer_array[8][5] <= 5;
//	connected_array[8][5] <= 0;
//	pointer_array[9][5] <= 10;
//	connected_array[9][5] <= 0;
//	pointer_array[10][5] <= 56;
//	connected_array[10][5] <= 0;
//	pointer_array[11][5] <= 0;
//	connected_array[11][5] <= 0;
//	pointer_array[12][5] <= 59;
//	connected_array[12][5] <= 0;
//	pointer_array[13][5] <= 11;
//	connected_array[13][5] <= 0;
//	pointer_array[14][5] <= 32;
//	connected_array[14][5] <= 0;
//	pointer_array[15][5] <= 10;
//	connected_array[15][5] <= 0;
//	pointer_array[0][6] <= 23;
//	connected_array[0][6] <= 0;
//	pointer_array[1][6] <= 12;
//	connected_array[1][6] <= 0;
//	pointer_array[2][6] <= 35;
//	connected_array[2][6] <= 0;
//	pointer_array[3][6] <= 55;
//	connected_array[3][6] <= 0;
//	pointer_array[4][6] <= 62;
//	connected_array[4][6] <= 0;
//	pointer_array[5][6] <= 11;
//	connected_array[5][6] <= 0;
//	pointer_array[6][6] <= 54;
//	connected_array[6][6] <= 1;
//	pointer_array[7][6] <= 42;
//	connected_array[7][6] <= 1;
//	pointer_array[8][6] <= 23;
//	connected_array[8][6] <= 0;
//	pointer_array[9][6] <= 38;
//	connected_array[9][6] <= 0;
//	pointer_array[10][6] <= 46;
//	connected_array[10][6] <= 0;
//	pointer_array[11][6] <= 60;
//	connected_array[11][6] <= 0;
//	pointer_array[12][6] <= 44;
//	connected_array[12][6] <= 0;
//	pointer_array[13][6] <= 18;
//	connected_array[13][6] <= 0;
//	pointer_array[14][6] <= 51;
//	connected_array[14][6] <= 0;
//	pointer_array[15][6] <= 29;
//	connected_array[15][6] <= 0;
//	pointer_array[0][7] <= 59;
//	connected_array[0][7] <= 0;
//	pointer_array[1][7] <= 3;
//	connected_array[1][7] <= 0;
//	pointer_array[2][7] <= 55;
//	connected_array[2][7] <= 0;
//	pointer_array[3][7] <= 16;
//	connected_array[3][7] <= 0;
//	pointer_array[4][7] <= 48;
//	connected_array[4][7] <= 0;
//	pointer_array[5][7] <= 62;
//	connected_array[5][7] <= 0;
//	pointer_array[6][7] <= 60;
//	connected_array[6][7] <= 1;
//	pointer_array[7][7] <= 39;
//	connected_array[7][7] <= 1;
//	pointer_array[8][7] <= 38;
//	connected_array[8][7] <= 0;
//	pointer_array[9][7] <= 57;
//	connected_array[9][7] <= 0;
//	pointer_array[10][7] <= 27;
//	connected_array[10][7] <= 0;
//	pointer_array[11][7] <= 33;
//	connected_array[11][7] <= 0;
//	pointer_array[12][7] <= 16;
//	connected_array[12][7] <= 0;
//	pointer_array[13][7] <= 57;
//	connected_array[13][7] <= 0;
//	pointer_array[14][7] <= 7;
//	connected_array[14][7] <= 0;
//	pointer_array[15][7] <= 45;
//	connected_array[15][7] <= 0;
//	pointer_array[0][8] <= 52;
//	connected_array[0][8] <= 0;
//	pointer_array[1][8] <= 13;
//	connected_array[1][8] <= 0;
//	pointer_array[2][8] <= 38;
//	connected_array[2][8] <= 0;
//	pointer_array[3][8] <= 25;
//	connected_array[3][8] <= 0;
//	pointer_array[4][8] <= 61;
//	connected_array[4][8] <= 0;
//	pointer_array[5][8] <= 63;
//	connected_array[5][8] <= 0;
//	pointer_array[6][8] <= 32;
//	connected_array[6][8] <= 1;
//	pointer_array[7][8] <= 62;
//	connected_array[7][8] <= 1;
//	pointer_array[8][8] <= 52;
//	connected_array[8][8] <= 0;
//	pointer_array[9][8] <= 17;
//	connected_array[9][8] <= 0;
//	pointer_array[10][8] <= 0;
//	connected_array[10][8] <= 0;
//	pointer_array[11][8] <= 8;
//	connected_array[11][8] <= 0;
//	pointer_array[12][8] <= 19;
//	connected_array[12][8] <= 0;
//	pointer_array[13][8] <= 53;
//	connected_array[13][8] <= 0;
//	pointer_array[14][8] <= 44;
//	connected_array[14][8] <= 0;
//	pointer_array[15][8] <= 10;
//	connected_array[15][8] <= 0;
//	pointer_array[0][9] <= 12;
//	connected_array[0][9] <= 0;
//	pointer_array[1][9] <= 50;
//	connected_array[1][9] <= 0;
//	pointer_array[2][9] <= 6;
//	connected_array[2][9] <= 0;
//	pointer_array[3][9] <= 63;
//	connected_array[3][9] <= 0;
//	pointer_array[4][9] <= 60;
//	connected_array[4][9] <= 0;
//	pointer_array[5][9] <= 19;
//	connected_array[5][9] <= 0;
//	pointer_array[6][9] <= 32;
//	connected_array[6][9] <= 1;
//	pointer_array[7][9] <= 30;
//	connected_array[7][9] <= 1;
//	pointer_array[8][9] <= 14;
//	connected_array[8][9] <= 0;
//	pointer_array[9][9] <= 10;
//	connected_array[9][9] <= 0;
//	pointer_array[10][9] <= 1;
//	connected_array[10][9] <= 0;
//	pointer_array[11][9] <= 62;
//	connected_array[11][9] <= 0;
//	pointer_array[12][9] <= 34;
//	connected_array[12][9] <= 0;
//	pointer_array[13][9] <= 13;
//	connected_array[13][9] <= 0;
//	pointer_array[14][9] <= 7;
//	connected_array[14][9] <= 0;
//	pointer_array[15][9] <= 43;
//	connected_array[15][9] <= 0;
//	pointer_array[0][10] <= 46;
//	connected_array[0][10] <= 0;
//	pointer_array[1][10] <= 43;
//	connected_array[1][10] <= 0;
//	pointer_array[2][10] <= 50;
//	connected_array[2][10] <= 0;
//	pointer_array[3][10] <= 58;
//	connected_array[3][10] <= 0;
//	pointer_array[4][10] <= 48;
//	connected_array[4][10] <= 0;
//	pointer_array[5][10] <= 57;
//	connected_array[5][10] <= 0;
//	pointer_array[6][10] <= 12;
//	connected_array[6][10] <= 0;
//	pointer_array[7][10] <= 26;
//	connected_array[7][10] <= 0;
//	pointer_array[8][10] <= 49;
//	connected_array[8][10] <= 0;
//	pointer_array[9][10] <= 39;
//	connected_array[9][10] <= 0;
//	pointer_array[10][10] <= 0;
//	connected_array[10][10] <= 0;
//	pointer_array[11][10] <= 33;
//	connected_array[11][10] <= 0;
//	pointer_array[12][10] <= 44;
//	connected_array[12][10] <= 0;
//	pointer_array[13][10] <= 0;
//	connected_array[13][10] <= 0;
//	pointer_array[14][10] <= 2;
//	connected_array[14][10] <= 0;
//	pointer_array[15][10] <= 17;
//	connected_array[15][10] <= 0;
//	pointer_array[0][11] <= 47;
//	connected_array[0][11] <= 0;
//	pointer_array[1][11] <= 42;
//	connected_array[1][11] <= 0;
//	pointer_array[2][11] <= 0;
//	connected_array[2][11] <= 0;
//	pointer_array[3][11] <= 0;
//	connected_array[3][11] <= 0;
//	pointer_array[4][11] <= 30;
//	connected_array[4][11] <= 0;
//	pointer_array[5][11] <= 48;
//	connected_array[5][11] <= 0;
//	pointer_array[6][11] <= 38;
//	connected_array[6][11] <= 0;
//	pointer_array[7][11] <= 45;
//	connected_array[7][11] <= 0;
//	pointer_array[8][11] <= 36;
//	connected_array[8][11] <= 0;
//	pointer_array[9][11] <= 39;
//	connected_array[9][11] <= 0;
//	pointer_array[10][11] <= 44;
//	connected_array[10][11] <= 0;
//	pointer_array[11][11] <= 55;
//	connected_array[11][11] <= 0;
//	pointer_array[12][11] <= 17;
//	connected_array[12][11] <= 0;
//	pointer_array[13][11] <= 57;
//	connected_array[13][11] <= 0;
//	pointer_array[14][11] <= 56;
//	connected_array[14][11] <= 0;
//	pointer_array[15][11] <= 30;
//	connected_array[15][11] <= 0;
//	pointer_array[0][12] <= 54;
//	connected_array[0][12] <= 0;
//	pointer_array[1][12] <= 8;
//	connected_array[1][12] <= 0;
//	pointer_array[2][12] <= 30;
//	connected_array[2][12] <= 0;
//	pointer_array[3][12] <= 19;
//	connected_array[3][12] <= 0;
//	pointer_array[4][12] <= 29;
//	connected_array[4][12] <= 0;
//	pointer_array[5][12] <= 16;
//	connected_array[5][12] <= 0;
//	pointer_array[6][12] <= 48;
//	connected_array[6][12] <= 0;
//	pointer_array[7][12] <= 45;
//	connected_array[7][12] <= 0;
//	pointer_array[8][12] <= 52;
//	connected_array[8][12] <= 0;
//	pointer_array[9][12] <= 52;
//	connected_array[9][12] <= 0;
//	pointer_array[10][12] <= 39;
//	connected_array[10][12] <= 0;
//	pointer_array[11][12] <= 54;
//	connected_array[11][12] <= 0;
//	pointer_array[12][12] <= 60;
//	connected_array[12][12] <= 0;
//	pointer_array[13][12] <= 1;
//	connected_array[13][12] <= 0;
//	pointer_array[14][12] <= 63;
//	connected_array[14][12] <= 0;
//	pointer_array[15][12] <= 8;
//	connected_array[15][12] <= 0;
//	pointer_array[0][13] <= 24;
//	connected_array[0][13] <= 0;
//	pointer_array[1][13] <= 36;
//	connected_array[1][13] <= 0;
//	pointer_array[2][13] <= 0;
//	connected_array[2][13] <= 0;
//	pointer_array[3][13] <= 48;
//	connected_array[3][13] <= 0;
//	pointer_array[4][13] <= 35;
//	connected_array[4][13] <= 0;
//	pointer_array[5][13] <= 13;
//	connected_array[5][13] <= 0;
//	pointer_array[6][13] <= 33;
//	connected_array[6][13] <= 0;
//	pointer_array[7][13] <= 50;
//	connected_array[7][13] <= 0;
//	pointer_array[8][13] <= 12;
//	connected_array[8][13] <= 0;
//	pointer_array[9][13] <= 25;
//	connected_array[9][13] <= 0;
//	pointer_array[10][13] <= 19;
//	connected_array[10][13] <= 0;
//	pointer_array[11][13] <= 25;
//	connected_array[11][13] <= 0;
//	pointer_array[12][13] <= 17;
//	connected_array[12][13] <= 0;
//	pointer_array[13][13] <= 55;
//	connected_array[13][13] <= 0;
//	pointer_array[14][13] <= 43;
//	connected_array[14][13] <= 0;
//	pointer_array[15][13] <= 25;
//	connected_array[15][13] <= 0;
//	pointer_array[0][14] <= 22;
//	connected_array[0][14] <= 0;
//	pointer_array[1][14] <= 14;
//	connected_array[1][14] <= 0;
//	pointer_array[2][14] <= 43;
//	connected_array[2][14] <= 0;
//	pointer_array[3][14] <= 53;
//	connected_array[3][14] <= 0;
//	pointer_array[4][14] <= 4;
//	connected_array[4][14] <= 0;
//	pointer_array[5][14] <= 40;
//	connected_array[5][14] <= 0;
//	pointer_array[6][14] <= 15;
//	connected_array[6][14] <= 0;
//	pointer_array[7][14] <= 46;
//	connected_array[7][14] <= 0;
//	pointer_array[8][14] <= 20;
//	connected_array[8][14] <= 0;
//	pointer_array[9][14] <= 21;
//	connected_array[9][14] <= 0;
//	pointer_array[10][14] <= 31;
//	connected_array[10][14] <= 0;
//	pointer_array[11][14] <= 22;
//	connected_array[11][14] <= 0;
//	pointer_array[12][14] <= 36;
//	connected_array[12][14] <= 0;
//	pointer_array[13][14] <= 51;
//	connected_array[13][14] <= 0;
//	pointer_array[14][14] <= 7;
//	connected_array[14][14] <= 0;
//	pointer_array[15][14] <= 36;
//	connected_array[15][14] <= 0;
//	pointer_array[0][15] <= 42;
//	connected_array[0][15] <= 0;
//	pointer_array[1][15] <= 60;
//	connected_array[1][15] <= 0;
//	pointer_array[2][15] <= 54;
//	connected_array[2][15] <= 0;
//	pointer_array[3][15] <= 59;
//	connected_array[3][15] <= 0;
//	pointer_array[4][15] <= 46;
//	connected_array[4][15] <= 0;
//	pointer_array[5][15] <= 60;
//	connected_array[5][15] <= 0;
//	pointer_array[6][15] <= 44;
//	connected_array[6][15] <= 0;
//	pointer_array[7][15] <= 19;
//	connected_array[7][15] <= 0;
//	pointer_array[8][15] <= 21;
//	connected_array[8][15] <= 0;
//	pointer_array[9][15] <= 44;
//	connected_array[9][15] <= 0;
//	pointer_array[10][15] <= 11;
//	connected_array[10][15] <= 0;
//	pointer_array[11][15] <= 57;
//	connected_array[11][15] <= 0;
//	pointer_array[12][15] <= 7;
//	connected_array[12][15] <= 0;
//	pointer_array[13][15] <= 5;
//	connected_array[13][15] <= 0;
//	pointer_array[14][15] <= 8;
//	connected_array[14][15] <= 0;
//	pointer_array[15][15] <= 3;
//	connected_array[15][15] <= 0;
//    end

////      for(i = 0; i < (GRID-1); i = i + 1)
////        rand_data[i] <= $urandom%64;
//    end

    
    
//    always@(posedge clk) begin
    
////    if (pointer_array[7][6] == selected_pointer) begin
////        pointer_array[7][6] <= selected_pointer;     // connected
////    end
////    if (pointer_array[7][7] == selected_pointer) begin
////        pointer_array[7][7] <= selected_pointer;     // connected
////    end
////    if (pointer_array[7][8] == selected_pointer) begin
////        pointer_array[7][8] <= selected_pointer;     // connected
////    end
////    if (pointer_array[7][9] == selected_pointer) begin
////        pointer_array[7][9] <= selected_pointer;     // connected
////    end
////    if (pointer_array[8][6] == selected_pointer) begin
////        pointer_array[8][6] <= selected_pointer;     // connected
////    end
////    if (pointer_array[8][7] == selected_pointer) begin
////        pointer_array[8][7] <= selected_pointer;     // connected
////    end
////    if (pointer_array[8][8] == selected_pointer) begin
////        pointer_array[8][8] <= selected_pointer;     // connected
////    end
////    if (pointer_array[8][9] == selected_pointer) begin
////        pointer_array[8][9] <= selected_pointer;     // connected
////    end
        
//////        pointer_array[3][3] <= selected_pointer;

////        pointer_array[3][3] <= selected_pointer;

////        // check currently connected cells
////        if(connected_array[xcount][ycount] == 1) begin
////            if(pointer_array[xcount][ycount] == selected_pointer) begin
////                connected_array[xcount][ycount] <= 2;
////            end
////        end
    
//        // check currently connected cells
//        if(connected_array[7][6] == 1) begin
//            if (pointer_array[7][6] == selected_pointer) begin
//                connected_array[7][6] <= 2;     // connected
//            end
//        end        
//        if(connected_array[7+1][6] == 1) begin
//            if (pointer_array[7+1][6] == selected_pointer) begin
//                connected_array[7+1][6] <= 2;     // connected
//            end
//        end        
//        if(connected_array[7-1][6] == 1) begin
//            if (pointer_array[7-1][6] == selected_pointer) begin
//                connected_array[7-1][6] <= 2;     // connected
//            end
//        end        
//        if(connected_array[7][6+1] == 1) begin
//            if (pointer_array[7][6+1] == selected_pointer) begin
//                connected_array[7][6+1] <= 2;     // connected
//            end
//        end        
//        if(connected_array[7][6-1] == 1) begin
//            if (pointer_array[7][6-1] == selected_pointer) begin
//                connected_array[7][6-1] <= 2;     // connected
//            end
//        end       
        
//        if(connected_array[7][6] == 2) begin
//            if(connected_array[7+1][6] != 2) begin
//                connected_array[7+1][6] <= 1;
//            end
//            if(connected_array[7-1][6] != 2) begin
//                connected_array[7-1][6] <= 1;
//            end
//            if(connected_array[7][6+1] != 2) begin
//                connected_array[7][6+1] <= 1;
//            end
//            if(connected_array[7][6-1] != 2) begin
//                connected_array[7][6-1] <= 1;
//            end            
            
//            pointer_array[7][6] <= selected_pointer;
//        end        
               
    
////        case (connected_array[xcount][ycount]) 
////            2'd1: begin
////                    if (pointer_array[xcount][ycount] == selected_pointer) begin
////                        connected_array[xcount][ycount] <= 2'd2;
////                    end
////                end
////            2'd2: pointer_array[xcount][ycount] = $urandom%64;
            
////        endcase
        
////        // if adjacent
////        if(connected_array[xcount][ycount] == 1) begin
////            // if matching
////            if (pointer_array[xcount][ycount] == selected_pointer) begin
////                connected_array[xcount][ycount] <= 2;
////            end
////        // update matched colour
////        end else if (connected_array[xcount][ycount] == 2) begin
//////            pointer_array[xcount][ycount] = selected_pointer;
////        end

////        // check currently connected cells
////        if(connected_array[xcount][ycount] == 1) begin
////            if(pointer_array[xcount][ycount] == selected_pointer) begin
////                connected_array[xcount][ycount] <= 2;
////            end
////        end
        
                
////        // update adjacent cells for checking
////        if(connected_array[xcount][ycount] == 2) begin
////            if(connected_array[xcount+1][ycount] != 2) begin
////                connected_array[xcount+1][ycount] <= 1;
////            end
////            if(connected_array[xcount-1][ycount] != 2) begin
////                connected_array[xcount-1][ycount] <= 1;
////            end
////            if(connected_array[xcount][ycount+1] != 2) begin
////                connected_array[xcount][ycount+1] <= 1;
////            end
////            if(connected_array[xcount][ycount-1] != 2) begin
////                connected_array[xcount][ycount-1] <= 1;
////            end
////        end
            
////        if(ycount == 16) begin
////            ycount <= 0;
////            xcount <= 0;
////        end else if(xcount == 16) begin
////            xcount <= 0;
////            ycount <= ycount + 1;
////        end else begin
////            xcount <= xcount + 1;
////        end

        
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[0][0]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[1][0]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[2][0]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[3][0]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[4][0]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[5][0]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[6][0]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[7][0]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[8][0]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[9][0]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[10][0]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[11][0]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[12][0]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[13][0]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[14][0]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 0) && (y_coord < BORDER + BANNER_HEIGHT + 47))begin col_pointer <= pointer_array[15][0]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[0][1]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[1][1]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[2][1]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[3][1]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[4][1]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[5][1]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[6][1]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[7][1]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[8][1]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[9][1]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[10][1]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[11][1]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[12][1]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[13][1]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[14][1]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 47) && (y_coord < BORDER + BANNER_HEIGHT + 94))begin col_pointer <= pointer_array[15][1]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[0][2]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[1][2]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[2][2]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[3][2]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[4][2]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[5][2]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[6][2]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[7][2]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[8][2]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[9][2]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[10][2]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[11][2]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[12][2]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[13][2]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[14][2]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 94) && (y_coord < BORDER + BANNER_HEIGHT + 141))begin col_pointer <= pointer_array[15][2]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[0][3]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[1][3]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[2][3]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[3][3]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[4][3]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[5][3]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[6][3]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[7][3]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[8][3]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[9][3]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[10][3]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[11][3]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[12][3]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[13][3]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[14][3]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 141) && (y_coord < BORDER + BANNER_HEIGHT + 188))begin col_pointer <= pointer_array[15][3]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[0][4]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[1][4]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[2][4]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[3][4]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[4][4]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[5][4]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[6][4]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[7][4]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[8][4]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[9][4]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[10][4]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[11][4]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[12][4]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[13][4]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[14][4]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 188) && (y_coord < BORDER + BANNER_HEIGHT + 235))begin col_pointer <= pointer_array[15][4]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[0][5]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[1][5]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[2][5]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[3][5]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[4][5]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[5][5]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[6][5]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[7][5]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[8][5]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[9][5]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[10][5]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[11][5]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[12][5]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[13][5]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[14][5]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 235) && (y_coord < BORDER + BANNER_HEIGHT + 282))begin col_pointer <= pointer_array[15][5]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[0][6]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[1][6]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[2][6]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[3][6]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[4][6]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[5][6]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[6][6]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[7][6]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[8][6]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[9][6]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[10][6]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[11][6]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[12][6]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[13][6]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[14][6]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 282) && (y_coord < BORDER + BANNER_HEIGHT + 329))begin col_pointer <= pointer_array[15][6]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[0][7]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[1][7]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[2][7]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[3][7]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[4][7]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[5][7]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[6][7]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[7][7]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[8][7]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[9][7]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[10][7]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[11][7]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[12][7]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[13][7]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[14][7]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 329) && (y_coord < BORDER + BANNER_HEIGHT + 376))begin col_pointer <= pointer_array[15][7]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[0][8]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[1][8]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[2][8]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[3][8]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[4][8]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[5][8]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[6][8]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[7][8]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[8][8]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[9][8]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[10][8]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[11][8]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[12][8]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[13][8]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[14][8]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 376) && (y_coord < BORDER + BANNER_HEIGHT + 423))begin col_pointer <= pointer_array[15][8]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[0][9]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[1][9]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[2][9]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[3][9]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[4][9]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[5][9]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[6][9]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[7][9]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[8][9]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[9][9]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[10][9]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[11][9]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[12][9]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[13][9]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[14][9]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 423) && (y_coord < BORDER + BANNER_HEIGHT + 470))begin col_pointer <= pointer_array[15][9]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[0][10]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[1][10]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[2][10]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[3][10]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[4][10]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[5][10]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[6][10]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[7][10]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[8][10]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[9][10]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[10][10]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[11][10]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[12][10]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[13][10]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[14][10]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 470) && (y_coord < BORDER + BANNER_HEIGHT + 517))begin col_pointer <= pointer_array[15][10]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[0][11]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[1][11]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[2][11]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[3][11]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[4][11]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[5][11]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[6][11]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[7][11]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[8][11]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[9][11]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[10][11]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[11][11]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[12][11]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[13][11]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[14][11]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 517) && (y_coord < BORDER + BANNER_HEIGHT + 564))begin col_pointer <= pointer_array[15][11]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[0][12]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[1][12]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[2][12]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[3][12]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[4][12]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[5][12]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[6][12]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[7][12]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[8][12]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[9][12]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[10][12]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[11][12]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[12][12]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[13][12]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[14][12]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 564) && (y_coord < BORDER + BANNER_HEIGHT + 611))begin col_pointer <= pointer_array[15][12]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[0][13]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[1][13]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[2][13]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[3][13]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[4][13]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[5][13]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[6][13]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[7][13]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[8][13]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[9][13]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[10][13]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[11][13]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[12][13]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[13][13]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[14][13]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 611) && (y_coord < BORDER + BANNER_HEIGHT + 658))begin col_pointer <= pointer_array[15][13]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[0][14]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[1][14]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[2][14]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[3][14]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[4][14]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[5][14]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[6][14]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[7][14]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[8][14]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[9][14]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[10][14]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[11][14]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[12][14]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[13][14]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[14][14]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 658) && (y_coord < BORDER + BANNER_HEIGHT + 705))begin col_pointer <= pointer_array[15][14]; end else
//if ((x_coord >= BORDER + -1) && (x_coord < BORDER + 87) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[0][15]; end else
//if ((x_coord >= BORDER + 87) && (x_coord < BORDER + 175) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[1][15]; end else
//if ((x_coord >= BORDER + 175) && (x_coord < BORDER + 263) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[2][15]; end else
//if ((x_coord >= BORDER + 263) && (x_coord < BORDER + 351) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[3][15]; end else
//if ((x_coord >= BORDER + 351) && (x_coord < BORDER + 439) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[4][15]; end else
//if ((x_coord >= BORDER + 439) && (x_coord < BORDER + 527) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[5][15]; end else
//if ((x_coord >= BORDER + 527) && (x_coord < BORDER + 615) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[6][15]; end else
//if ((x_coord >= BORDER + 615) && (x_coord < BORDER + 703) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord < BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[7][15]; end else
//if ((x_coord >= BORDER + 703) && (x_coord < BORDER + 791) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[8][15]; end else
//if ((x_coord >= BORDER + 791) && (x_coord < BORDER + 879) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[9][15]; end else
//if ((x_coord >= BORDER + 879) && (x_coord < BORDER + 967) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[10][15]; end else
//if ((x_coord >= BORDER + 967) && (x_coord < BORDER + 1055) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[11][15]; end else
//if ((x_coord >= BORDER + 1055) && (x_coord < BORDER + 1143) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[12][15]; end else
//if ((x_coord >= BORDER + 1143) && (x_coord < BORDER + 1231) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[13][15]; end else
//if ((x_coord >= BORDER + 1231) && (x_coord < BORDER + 1319) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[14][15]; end else
//if ((x_coord >= BORDER + 1319) && (x_coord < BORDER + 1407) && (y_coord >= BORDER + BANNER_HEIGHT + 705) && (y_coord <= BORDER + BANNER_HEIGHT + 752))begin col_pointer <= pointer_array[15][15]; end 



//    end
    
//    assign pointer = col_pointer;
        
//endmodule







