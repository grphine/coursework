// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Tue May  9 18:00:48 2023
// Host        : Stativus running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {C:/Users/juheb/OneDrive - University of
//               Warwick/Assignments/ES3B2/Final/Final.srcs/sources_1/ip/blk_mem_gen_3/blk_mem_gen_3_sim_netlist.v}
// Design      : blk_mem_gen_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_3,blk_mem_gen_v8_4_3,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_3,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_3
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [14:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [11:0]douta;

  wire [14:0]addra;
  wire clka;
  wire [11:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [11:0]NLW_U0_doutb_UNCONNECTED;
  wire [14:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [14:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [11:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "15" *) 
  (* C_ADDRB_WIDTH = "15" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "9" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.936631 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_3.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "26000" *) 
  (* C_READ_DEPTH_B = "26000" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "12" *) 
  (* C_READ_WIDTH_B = "12" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "26000" *) 
  (* C_WRITE_DEPTH_B = "26000" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "12" *) 
  (* C_WRITE_WIDTH_B = "12" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  blk_mem_gen_3_blk_mem_gen_v8_4_3 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[11:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[14:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[14:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[11:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module blk_mem_gen_3_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [3:0]addra;

  wire [3:0]addra;
  wire [0:0]ena_array;

  LUT4 #(
    .INIT(16'h1000)) 
    ENOUT
       (.I0(addra[1]),
        .I1(addra[0]),
        .I2(addra[2]),
        .I3(addra[3]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_generic_cstr" *) 
module blk_mem_gen_3_blk_mem_gen_generic_cstr
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [11:0]douta;
  wire [12:12]ena_array;
  wire [8:0]p_15_out;
  wire [8:0]ram_douta;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;

  blk_mem_gen_3_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[14:11]),
        .ena_array(ena_array));
  blk_mem_gen_3_blk_mem_gen_mux \has_mux_a.A 
       (.DOADO({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .DOPADOP(\ramloop[5].ram.r_n_8 ),
        .addra(addra[14:11]),
        .clka(clka),
        .douta(douta[8:0]),
        .\douta[7] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\douta[7]_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\douta[7]_1 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\douta[7]_2 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\douta[8] (\ramloop[4].ram.r_n_8 ),
        .\douta[8]_0 (\ramloop[3].ram.r_n_8 ),
        .\douta[8]_1 (\ramloop[2].ram.r_n_8 ),
        .\douta[8]_2 (\ramloop[1].ram.r_n_8 ),
        .p_15_out(p_15_out),
        .ram_douta(ram_douta));
  blk_mem_gen_3_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[1].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[2].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[3].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\ramloop[4].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.DOADO({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .DOPADOP(\ramloop[5].ram.r_n_8 ),
        .addra(addra),
        .clka(clka));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[10:0]),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[9]));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[10]));
  blk_mem_gen_3_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.addra(addra),
        .clka(clka),
        .douta(douta[11]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module blk_mem_gen_3_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    p_15_out,
    DOPADOP,
    \douta[8] ,
    \douta[8]_0 ,
    \douta[8]_1 ,
    \douta[8]_2 ,
    ram_douta,
    DOADO,
    \douta[7] ,
    \douta[7]_0 ,
    \douta[7]_1 ,
    \douta[7]_2 );
  output [8:0]douta;
  input [3:0]addra;
  input clka;
  input [8:0]p_15_out;
  input [0:0]DOPADOP;
  input [0:0]\douta[8] ;
  input [0:0]\douta[8]_0 ;
  input [0:0]\douta[8]_1 ;
  input [0:0]\douta[8]_2 ;
  input [8:0]ram_douta;
  input [7:0]DOADO;
  input [7:0]\douta[7] ;
  input [7:0]\douta[7]_0 ;
  input [7:0]\douta[7]_1 ;
  input [7:0]\douta[7]_2 ;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [3:0]addra;
  wire clka;
  wire [8:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire [7:0]\douta[7] ;
  wire [7:0]\douta[7]_0 ;
  wire [7:0]\douta[7]_1 ;
  wire [7:0]\douta[7]_2 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire [0:0]\douta[8] ;
  wire [0:0]\douta[8]_0 ;
  wire [0:0]\douta[8]_1 ;
  wire [0:0]\douta[8]_2 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire [8:0]p_15_out;
  wire [8:0]ram_douta;
  wire [3:0]sel_pipe;
  wire [3:0]sel_pipe_d1;

  MUXF7 \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(\douta[0]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[0]_INST_0_i_1 
       (.I0(\douta[7]_0 [0]),
        .I1(\douta[7]_1 [0]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [0]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[0]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[0]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[0]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[0]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [0]),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  MUXF7 \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[1]_INST_0_i_1 
       (.I0(\douta[7]_0 [1]),
        .I1(\douta[7]_1 [1]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [1]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[1]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[1]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[1]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[1]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [1]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  MUXF7 \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[2]_INST_0_i_1 
       (.I0(\douta[7]_0 [2]),
        .I1(\douta[7]_1 [2]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [2]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[2]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[2]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[2]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [2]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  MUXF7 \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[3]_INST_0_i_1 
       (.I0(\douta[7]_0 [3]),
        .I1(\douta[7]_1 [3]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [3]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[3]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[3]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[3]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[3]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [3]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  MUXF7 \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[4]_INST_0_i_1 
       (.I0(\douta[7]_0 [4]),
        .I1(\douta[7]_1 [4]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [4]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[4]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[4]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[4]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[4]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [4]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  MUXF7 \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[5]_INST_0_i_1 
       (.I0(\douta[7]_0 [5]),
        .I1(\douta[7]_1 [5]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [5]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[5]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[5]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[5]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[5]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [5]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  MUXF7 \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[6]_INST_0_i_1 
       (.I0(\douta[7]_0 [6]),
        .I1(\douta[7]_1 [6]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [6]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[6]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[6]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[6]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[6]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [6]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[7]_INST_0_i_1 
       (.I0(\douta[7]_0 [7]),
        .I1(\douta[7]_1 [7]),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[7]_2 [7]),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[7]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[7]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[7]),
        .I2(sel_pipe_d1[2]),
        .I3(DOADO[7]),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[7] [7]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe_d1[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \douta[8]_INST_0_i_1 
       (.I0(\douta[8]_0 ),
        .I1(\douta[8]_1 ),
        .I2(sel_pipe_d1[2]),
        .I3(\douta[8]_2 ),
        .I4(sel_pipe_d1[1]),
        .I5(ram_douta[8]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0F004F4F0F004040)) 
    \douta[8]_INST_0_i_2 
       (.I0(sel_pipe_d1[0]),
        .I1(p_15_out[8]),
        .I2(sel_pipe_d1[2]),
        .I3(DOPADOP),
        .I4(sel_pipe_d1[1]),
        .I5(\douta[8] ),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[3]),
        .Q(sel_pipe_d1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[3] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[3]),
        .Q(sel_pipe[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width
   (ram_douta,
    clka,
    addra);
  output [8:0]ram_douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [8:0]ram_douta;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ram_douta(ram_douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [14:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized4
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [14:0]addra;

  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [14:0]addra;
  wire clka;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.DOADO(DOADO),
        .DOPADOP(DOPADOP),
        .addra(addra),
        .clka(clka));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized5
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .ena_array(ena_array),
        .p_15_out(p_15_out));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized6
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized7
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module blk_mem_gen_3_blk_mem_gen_prim_width__parameterized8
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;

  blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init
   (ram_douta,
    clka,
    addra);
  output [8:0]ram_douta;
  input clka;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ;
  wire [14:0]addra;
  wire clka;
  wire [8:0]ram_douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h000000000000000000000FFE0000000000000000000000000000000000000000),
    .INITP_03(256'h00000000000000000000000000000000000FFF00000000000000000000000000),
    .INITP_04(256'h0700000000000000000000000000000000000000000000000E07000000000000),
    .INITP_05(256'h0000000000003C0F00000000000000000000000000000000000000000000000E),
    .INITP_06(256'h000000000000000000000000003C0F0000000000000000000000000000000000),
    .INITP_07(256'hFFFFFFFFFC000000000000000000000000000000381FFFFFFFFFFFFFFFFC0000),
    .INITP_08(256'h00007FFF800000000000000C000000000000000000000000000000781FFFFFFF),
    .INITP_09(256'h0000000000000000007FFF000000000000000C00000000000000000000000000),
    .INITP_0A(256'hCC0000000000000000000000000000007FFFFFFFFFFFFFFFFFCC000000000000),
    .INITP_0B(256'hFFFFFFFFFFFFFFCC0000000000000000000000000000007FFFFFFFFFFFFFFFFF),
    .INITP_0C(256'h00000000007FFFFFFFFFFFFFFFFFCC0000FC0000000000000000000000007FFF),
    .INITP_0D(256'h0000000000000000000000007FFFFFFFFFFFFFFFFFCC0001C600000000000000),
    .INITP_0E(256'hFFFFFFCC0003E10000000000000000000000007FFFFFFFFFFFFFFFFFCC0003C3),
    .INITP_0F(256'h007FFFFFFFFFFFFFFFFFCC0003F10000000000000000000000007FFFFFFFFFFF),
    .INIT_00(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_01(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_02(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_03(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_04(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_05(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_06(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_07(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_08(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_09(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0E(256'h4747474747474747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4747474747),
    .INIT_10(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_11(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_12(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_13(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_14(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_15(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47515151515151515151515147),
    .INIT_16(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_17(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_18(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_19(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1B(256'hAFAFAFAFAFAFAFAFAFAFAF4751939393939393939393516847AFAFAFAFAFAFAF),
    .INIT_1C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_20(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_21(256'hAFAFAF47519393C6C6C6C6C6C693935147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_22(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_23(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_24(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_25(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_26(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_27(256'hC6C6C6C6C693935147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_28(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4747519393C6),
    .INIT_29(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2D(256'h47AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4768515193C6C6C6C6C6C693939351),
    .INIT_2F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_30(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_31(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_32(256'h4747474747474747474747474747474747474747474747AFAFAFAFAFAFAFAFAF),
    .INIT_33(256'h4747474747474747474747474747474747474747474747474747474747474747),
    .INIT_34(256'hAFAFAFAFAFAFAFAFAF4751939393C6C6C6C6C6C6939351514747474747474747),
    .INIT_35(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_36(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_37(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_38(256'h515151515151515151515151515147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_39(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_3A(256'hAF47519393C6C6C6C6C6C6939351515151515151515151515151515151515151),
    .INIT_3B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3E(256'h93939393935147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3F(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_40(256'hC6C6C69393515193939393939393939393939393939393939393939393939393),
    .INIT_41(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4768519393C6C6C6),
    .INIT_42(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_43(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_44(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_45(256'hC6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6935147AF),
    .INIT_46(256'h93C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6),
    .INIT_47(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47519393939393939393939351515193),
    .INIT_48(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_49(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4B(256'hC6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_4C(256'hC6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6),
    .INIT_4D(256'hAFAFAFAFAFAFAFAF47519393939393939393939351515193C6C6C6C6C6C6C6C6),
    .INIT_4E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_50(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_51(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_52(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_53(256'h4751939393939393939393935151939393939393939393939393939393939393),
    .INIT_54(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_55(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_56(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_57(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF474747474747474747),
    .INIT_58(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_59(256'h9393939351519393939393939393939393939393939393939393939393939393),
    .INIT_5A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393),
    .INIT_5B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAF47478E888888888888884747AFAFAFAFAFAFAF),
    .INIT_5E(256'h9393939393939393939393939393939393939393939393939393C6C6935147AF),
    .INIT_5F(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_60(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47519393939393939393939351519393),
    .INIT_61(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_62(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_63(256'hAFAFAFAF47478888CCCCCCCCCCCC88884747AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_64(256'h939393939393939393939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_65(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_66(256'hAFAFAFAFAFAFAFAF475193939393939393939393515193939393939393939393),
    .INIT_67(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_68(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_69(256'hCCCCCCCCCCCCCC888847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6A(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF478888CC),
    .INIT_6B(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_6C(256'h4751939393939393939393935151939393939393939393939393939393939393),
    .INIT_6D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6F(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_70(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_71(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_72(256'h9393939351519393939393939393939393939393939393939393939393939393),
    .INIT_73(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393),
    .INIT_74(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_75(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_76(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_77(256'h9393939393939393939393939393939393939393939393939393C6C6935147AF),
    .INIT_78(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_79(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47519393939393939393939351519393),
    .INIT_7A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7C(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7D(256'h939393939393939393939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_7E(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_7F(256'hAFAFAFAFAFAFAFAF475193939393939393939393515193939393939393939393),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],ram_douta[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],ram_douta[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h01)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000007FFFFFFFFFFFFFFFFFCC0003F90000000000000000000000),
    .INITP_01(256'h0003FD0000000000000000000000007FFFFFFFFFFFFFFFFFCC0003F900000000),
    .INITP_02(256'hFFFFFFFFFFFFCC0003FF0000000000000000000000007FFFFFFFFFFFFFFFFFCC),
    .INITP_03(256'h000000003FFFFFFFFFFFFFFFFFCC0003FF0000000000000000000000007FFFFF),
    .INITP_04(256'h00000000000000000000003FFFFFFFFFFFFFFFFFCC0003FF0000000000000000),
    .INITP_05(256'h01FFCC0003FF0000000000000000000000003FFF000000000003FFCC0003FF00),
    .INITP_06(256'h0FFF000000000000FFCC0003FF0000000000000000000000000FFF0000000000),
    .INITP_07(256'h000000000000000FFE000000000000FFCC0003FF000000000000000000000000),
    .INITP_08(256'h03FF0000000000000000000000000FFE000000000000FFCC0003FF0000000000),
    .INITP_09(256'h00000000FFCC0003FF0000000000000000000000000000000000000000FFCC00),
    .INITP_0A(256'h0000000000000000000000FFCC0003FF00000000000000000000000000000000),
    .INITP_0B(256'h000000000000000000000000000000000000FFCC0003FF000000000000000000),
    .INITP_0C(256'hFFCC0003FF0000000000000000000000000000000000000000FFCC0003FF0000),
    .INITP_0D(256'h00000000000000FFCC0003FF0000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000FFCC0003FF00000000000000000000000000),
    .INITP_0F(256'hFF0000000000000000000000000000000000000000FFCC0003FF000000000000),
    .INIT_00(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_01(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_02(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_03(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_04(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_05(256'h4751939393939393939393935151939393939393939393939393939393939393),
    .INIT_06(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_07(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_08(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_09(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_0A(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_0B(256'h9393939351515193939393939393939393939393939393939393939393939393),
    .INIT_0C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393),
    .INIT_0D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0F(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_10(256'h9393939393939393939393939393939393939393939393939393C6C6935147AF),
    .INIT_11(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_12(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47519393939393939393939351515193),
    .INIT_13(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_14(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_15(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_16(256'h939393939393939393939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_17(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_18(256'hAFAFAFAFAFAFAFAF476851939393939393939393935151519393939393939393),
    .INIT_19(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1B(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1C(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_1D(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_1E(256'hAF47519393939393939393939351515193939393939393939393939393939393),
    .INIT_1F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_20(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_21(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_22(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_23(256'h5151515151515151515151515151515151515151515151939393939393939393),
    .INIT_24(256'h9393939393935193515151515151515151515151515151515151515151515151),
    .INIT_25(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47519393939393),
    .INIT_26(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_27(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_28(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_29(256'h4747474747474747474747474747685193939393939393939393C6C6935147AF),
    .INIT_2A(256'h4747474747474747474747474747474747474747474747474747474747474747),
    .INIT_2B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF476851519393939393939393939351),
    .INIT_2C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2E(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2F(256'hAFAFAFAFAFAF476851939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_30(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_31(256'hAFAFAFAFAFAFAFAFAFAF474751939393939393939393935147AFAFAFAFAFAFAF),
    .INIT_32(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_33(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_34(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_35(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_36(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_37(256'hAFAFAF4751939393939393939393515147AFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_38(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_39(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3A(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3B(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_3C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF475193939393939393),
    .INIT_3D(256'h939393939393514747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393),
    .INIT_3F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_40(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_41(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_42(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393939393C6C6935147AF),
    .INIT_43(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_44(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47515151515151515151516847),
    .INIT_45(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_46(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_47(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_48(256'hAFAFAFAFAFAFAF4751939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_49(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4A(256'hAFAFAFAFAFAFAFAFAFAFAF474747474747474747474747AFAFAFAFAFAFAFAFAF),
    .INIT_4B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4D(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4E(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_4F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_50(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_51(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_52(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_53(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_54(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_55(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF475193939393939393),
    .INIT_56(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_57(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_58(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_59(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5A(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_5B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393939393C6C6935147AF),
    .INIT_5C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_60(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_61(256'hAFAFAFAFAFAFAF4751939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_62(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_63(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_64(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_65(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_66(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_67(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_68(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_69(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6C(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6D(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_6E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF475193939393939393),
    .INIT_6F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_70(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_71(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_72(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_73(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_74(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393939393C6C6935147AF),
    .INIT_75(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_76(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_77(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_78(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_79(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7A(256'hAFAFAFAFAFAFAF4751939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_7B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7F(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h000000FFCC0003FF0000000000000000000000000000000000000000FFCC0003),
    .INITP_01(256'h00000000000000000000FFCC0003FF0000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000FFCC0003FF00000000000000000000),
    .INITP_03(256'hCC0003FF00000000000000000000000000000FF800000000FFCC0003FF000000),
    .INITP_04(256'h0C1C00000001FFCC0003FF00000000000000000000000000000FFC00000000FF),
    .INITP_05(256'h000000000000001C1C00000003FFCC0003FF0000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000383FFFFFFFFFFFCC0003FF00000000000000),
    .INITP_07(256'h0003FFCC0003FF0000000000000000000000000000B83FFFFFFFFFFFCC0003FF),
    .INITP_08(256'h000003BFFF00000007FFCC0003FF0000000000000000000000000001BFFF8000),
    .INITP_09(256'h00000000000000000007BFFFFFFFFFFFFFCC0003FF0000000000000000000000),
    .INITP_0A(256'h0003FF0000000000000000000000000007BFFFFFFFFFFFFFCC0003FF00000000),
    .INITP_0B(256'hFFFFFFFFFFFFCC0003FF000000000000000000000000000FBFFFFFFFFFFFFFCC),
    .INITP_0C(256'h00000000001FBFFFFFFFFFFFFFCC0003FF000000000000000000000000000FBF),
    .INITP_0D(256'h0000000000000000000000001FBFFFFFFFFFFFFFCC0003FF0000000000000000),
    .INITP_0E(256'hFDFFCC0003FF000000000000000000000000001FBFFFFFFFFFFFFFCC0003FF00),
    .INITP_0F(256'h003FBFFD00000002FFCC0003FF000000000000000000000000003FBFFDFFFFFF),
    .INIT_00(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_01(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_02(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_03(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_04(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_05(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_06(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_07(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF475193939393939393),
    .INIT_08(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_09(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0C(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_0D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4751939393939393939393C6C6935147AF),
    .INIT_0E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_10(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_11(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_12(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_13(256'hAFAFAFAFAFAFAF4751939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_14(256'h474747474747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_15(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47474747),
    .INIT_16(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_17(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_18(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_19(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_1A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_1B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF476851515151515151514747AF),
    .INIT_1C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1E(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1F(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_20(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF475193939393939393),
    .INIT_21(256'hAFAFAFAFAFAFAFAFAFAFAF47519393939393939351514747AFAFAFAFAFAFAFAF),
    .INIT_22(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_23(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_24(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_25(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_26(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAF476851939393939393939393C6C6935147AF),
    .INIT_27(256'h474747475193C6C6C6C6C69393510047AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_28(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_29(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2B(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2C(256'h474747474747685193939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_2D(256'hC6C6C69393510047474747474747474747474747474747474747474747474747),
    .INIT_2E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4747470000515193C6C6),
    .INIT_2F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_30(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_31(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_32(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_33(256'h5151515151515151515151515151515151515151515151515151515151515193),
    .INIT_34(256'hAFAFAFAFAFAFAFAFAFAFAFAFAF4747121212515193C6C6C6C6C6939393515151),
    .INIT_35(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_36(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_37(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_38(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_39(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_3A(256'hAFAFAFAF474712129F12519393C6C6C6C6C69393515151939393939393939393),
    .INIT_3B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3E(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_3F(256'hC6C6C6C6C6C6C6C6C6C6C6C6C6C6939393939393939393939393C6C6935147AF),
    .INIT_40(256'h9F12519393939393939393935151519393C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6),
    .INIT_41(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712129F),
    .INIT_42(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_43(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_44(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_45(256'hC6C6C6C6C693939393939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_46(256'h9393939351519393C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6),
    .INIT_47(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF476A129F9F9F12519393939393),
    .INIT_48(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_49(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4A(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4B(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_4C(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_4D(256'hAFAFAFAFAFAFAFAFAFAFAF47129F9F9F9F125193939393939393939351519393),
    .INIT_4E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_50(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_51(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_52(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_53(256'hAFAF476A129F9F9F9F1251939393939393939393515193939393939393939393),
    .INIT_54(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_55(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_56(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_57(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_58(256'h9393939393939393939393939393939393939393939393939393C6C6935147AF),
    .INIT_59(256'h9F12519393939393939393935151939393939393939393939393939393939393),
    .INIT_5A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F9F9F),
    .INIT_5B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5D(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5E(256'h939393939393939393939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_5F(256'h9393939351519393939393939393939393939393939393939393939393939393),
    .INIT_60(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF476A129F9F9F9F9F12519393939393),
    .INIT_61(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_62(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_63(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_64(256'h93939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_65(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_66(256'hAFAFAFAFAFAFAFAFAF47129F9F9F9F9F9F125193939393939393939351515193),
    .INIT_67(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_68(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_69(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6A(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_6B(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_6C(256'h4747129F9F9F9F9F9F1251939393939393939393515151939393939393939393),
    .INIT_6D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_70(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_71(256'h5151515151515151515151515151519393939393939393939393C6C6935147AF),
    .INIT_72(256'h9F12519393939393939393939351515151515151515151515151515151515151),
    .INIT_73(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712129F9F9F9F9F),
    .INIT_74(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_75(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_76(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_77(256'h363636363636665193939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_78(256'h9393939393510036363636363636363636363636363636363636363636363636),
    .INIT_79(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F9F9F9F9F9F12519393939393),
    .INIT_7A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7C(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_7D(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_7E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3666),
    .INIT_7F(256'hAFAFAFAFAFAFAF4747129F9F9F9F9F9F9F125251939393939393939393510036),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3 
       (.I0(addra[13]),
        .I1(addra[12]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized2
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h00000000000000003FDFFF00000001FFCC0003FF000000000000000000000000),
    .INITP_01(256'h03FF000000000000000000000000007FDFFE00000001FFCC0003FF0000000000),
    .INITP_02(256'h00000001FFCC0003FF000000000000000000000000007FB7FE00000001FFCC00),
    .INITP_03(256'h00000000FF200000000001FFCC0003FF00000000000000000000000000FFAFFC),
    .INITP_04(256'h0000000000000000000000FF600000000001FFCC0003FF000000000000000000),
    .INITP_05(256'hFFCC0003FF00000000000000000000000000FF400000000001FFCC0003FF0000),
    .INITP_06(256'hFF400000000001FFCC0003FF00000000000000000000000000FF400000000001),
    .INITP_07(256'h00000000000000FEC00000000001FFCC0003FF00000000000000000000000000),
    .INITP_08(256'hFF00000000000000000000000000FE800000000001FFCC0003FF000000000000),
    .INITP_09(256'h000001FFCC0003FF00000000000000000000000000FE800000000001FFCC0003),
    .INITP_0A(256'h000000FE800000000001FFCC0003FF001C0000000000000000000000FE800000),
    .INITP_0B(256'h00000000000000000000FE800000000001FFCC0003FF00FF8000000000000000),
    .INITP_0C(256'hCC0003FF01FE3000000000000000000000FE800000000001FFCC0003FF00FFE0),
    .INITP_0D(256'h800000000001FFCC0003FF03FC1000000000000000000000FE800000000001FF),
    .INITP_0E(256'h000000000004FE800000000001FFCC0003FF07FF8800000000000000000000FE),
    .INITP_0F(256'h0FFFE4FFFFFFFFFFFFFFFFFFFCFE07FFFFFFFFFEFFCFFF0BFF0FFFCC00000000),
    .INIT_00(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_01(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_02(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_03(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_04(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF365193939393939393),
    .INIT_05(256'h12129F9F9F9F9F9F9F9F1251939393939393939393513636AFAFAFAFAFAFAFAF),
    .INIT_06(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47),
    .INIT_07(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_08(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_09(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_0A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3651939393939393939393C6C6935147AF),
    .INIT_0B(256'h9F9F12515193939393939393515136AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F9F9F9F9F9F),
    .INIT_0D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_0F(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_10(256'hAFAFAFAFAFAFAF3651939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_11(256'h51515151513636AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_12(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAF476A129F9F699F9F9F9F9F12593666515151),
    .INIT_13(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_14(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_15(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_16(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_17(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF36),
    .INIT_18(256'hAFAFAFAFAFAF47129F9F9F699F9F9F9F9F1236AF36363636363636363636AFAF),
    .INIT_19(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1B(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1C(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_1D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF365193939393939393),
    .INIT_1E(256'h9F9F9F699F9F9F9F121236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_1F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712),
    .INIT_20(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_21(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_22(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_23(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3651939393939393939393C6C6935147AF),
    .INIT_24(256'h123636AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_25(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F9F699F9F9F9F),
    .INIT_26(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_27(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_28(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_29(256'hAFAFAFAFAFAFAF3651939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_2A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F699F9F9F9F9F1236AFAFAFAFAFAF),
    .INIT_2C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2E(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_2F(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_30(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF36),
    .INIT_31(256'hAFAFAFAFAFAF47129F9F699F9F9F9F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_32(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_33(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_34(256'h8847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_35(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_36(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF365193939393939393),
    .INIT_37(256'h9F9F699F9F9F9F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_38(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712),
    .INIT_39(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3B(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAF),
    .INIT_3C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3651939393939393939393C6C6935147AF),
    .INIT_3D(256'h5936AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_3E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F699F9F9F9F12),
    .INIT_3F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_40(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_41(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_42(256'hAFAFAFAFAFAFAF3651939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_43(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_44(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F9F699F9F9F9F1236AFAFAFAFAFAFAF),
    .INIT_45(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_46(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_47(256'hCCCCCCCCCCCCCCCC8847AFAFAFAFAFAFAF47474747474747AFAFAFAFAFAFAFAF),
    .INIT_48(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_49(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF36),
    .INIT_4A(256'hAFAFAFAFAFAF47129F9F699F9F9F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4D(256'h8847AFAFAFAFAF474747888888888847474747AFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_4E(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_4F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF365193939393939393),
    .INIT_50(256'h9F9F699F9F9F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_51(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712),
    .INIT_52(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_53(256'h888888CCCCCC888888884747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_54(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAFAF4747),
    .INIT_55(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3651939393939393939393C6C6935147AF),
    .INIT_56(256'h36AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_57(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F69699F9F9F9F12),
    .INIT_58(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_59(256'hCC8888474747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5A(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AFAFAF474788CCCCCCCCCCCCCCCC),
    .INIT_5B(256'hAFAFAFAFAFAFAF3651939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_5C(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5D(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F699F9F9F9F9F1236AFAFAFAFAFAFAF),
    .INIT_5E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_5F(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_60(256'hCCCCCCCCCCCCCCCC8847AFAF47478888CCCCCCCCCCCCCCCCCCCCCC888847AFAF),
    .INIT_61(256'h51939393939393939393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCC),
    .INIT_62(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF36),
    .INIT_63(256'hAFAFAFAFAFAF47129F699F9F9F9F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_64(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_65(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_66(256'h8847AF47478888CCCCCCCCCCCCCCCCCCCCCCCCCC884747AFAFAFAFAFAFAFAFAF),
    .INIT_67(256'h9393C6C6935147AFAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC),
    .INIT_68(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF365193939393939393),
    .INIT_69(256'h9F699F9F699F9F1236AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6A(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF4712),
    .INIT_6B(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6C(256'hCCCCCCCCCCCCCCCCCCCCCCCC88884747AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_6D(256'hAFAFAFAFAFAFAFAFAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847AF478888CCCC),
    .INIT_6E(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF3651939393939393939393C6C6935147AF),
    .INIT_6F(256'h36AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_70(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF47129F699F9F699F9F12),
    .INIT_71(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_72(256'hCCCCCCCCCC888847AFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_73(256'hAFAFAFAF4788CCCCCCCCCCCCCCCCCCCC8847474788CCCCCCCCCCCCCCCCCCCCCC),
    .INIT_74(256'hAFAFAFAFAFAFAF3651939393939393939393C6C6935147AFAFAFAFAFAFAFAFAF),
    .INIT_75(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_76(256'hAFAFAFAFAFAFAFAFAFAFAFAFAF5947129F699F9F699F9F1236AFAFAFAFAFAFAF),
    .INIT_77(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_78(256'hAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAFAF),
    .INIT_79(256'hCCCCCCCCCCCCCCCC88474788CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8847),
    .INIT_7A(256'h51939393939393939393C6C6935112363636363636363636AFAFAFAF5988CCCC),
    .INIT_7B(256'h3636363636363636363636363636363636363636363636363636363636363601),
    .INIT_7C(256'h36363636361212129F699F9F699F9F1201262626263636363636363636363636),
    .INIT_7D(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_7E(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_7F(256'h88474788CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC88011236363636363636),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[12]),
        .I1(addra[13]),
        .I2(addra[14]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ,
    clka,
    addra);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  output [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input [14:0]addra;

  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 ;
  wire [0:0]\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h07FEFFCFFFF3FF0FFFF4FFFFFFFFFFFFFFFFFFFDFE03FFFFFFFFFEFFCFFFF3FF),
    .INITP_01(256'hFFFDFE0000000003FEFFCFFFF3FF1FFFFEFF83FFFFFFFFFFFFFFFDFE00000000),
    .INITP_02(256'hFF9FFFFFFFFFFFFFFDFE0000000001FEFFCFFFF3FF1FFFFEF83C7FFFFFFFFFFF),
    .INITP_03(256'hFFF3FF1FFFFE0FFFCFFFFC7FFFFFFFFDFE0000000000FEFFDFFFF3FF1FFFFEE7),
    .INITP_04(256'h000000007EFFFFFFF3FF3FC0FE1FFFE7FFF18FFFFFFFFDFF0000000000FEFFDF),
    .INITP_05(256'hFCFFFFFFFBFF00000000003EFFFFFFF3FF3F80FE3FFC33FE0FE1FFFFFFFDFF00),
    .INITP_06(256'h1C7FFFFF09F3FFFF7FFFFFFBFF80000000001EFFFFFFF3FF3F1C7E7FFE1BFCFF),
    .INITP_07(256'h06FFFFFFF3FFFF3E7FFFFFC5E7FFE13FFFFFFBFF800FFFC0000EFFFFFFF3FFFF),
    .INITP_08(256'hF7FF9FFFFFF00002FFFFFFF3FFFF3E7FFFFFE40FFFE0BFFFFFFBFF800FFFE000),
    .INITP_09(256'hFE3FFFFE4FFFFFF7FF8FFFFFF80000FFFFFFF3FFFF3E7FFFFFE61FFFF85FFFFF),
    .INITP_0A(256'hF3FFFF3E7FFC01FE7FFFFE27FFFFF7FFC00000000002FFFFFFF3FFFF3E7FFE03),
    .INITP_0B(256'hFFFE0000FFFDFFF3FFFF3E7FFC71FFFFFFFF31FFFFC7FFCFFFFFFE0000FFFFFF),
    .INITP_0C(256'h99FFFFCFFFC7FF83FF0000FFFDFFF3FFFF3E7FF8F8FFFFFFFF91FFFFCFFFC7FF),
    .INITP_0D(256'h7FF9FCFFFF000FF9FFFF1FFFE7FF80000000FFFDFFF3FFFF3E7FF8F8FFFFE0FF),
    .INITP_0E(256'hFFFDFFF3FFFF3E7FF9FCFFFF0C0FF9FFFF1FFFE7FF00000000FFFDFFF3FFFF3E),
    .INITP_0F(256'hFFE3FF007FFE00FFFDFFF3FFFF3E7FF9FCFFFE3FC7F9FFFE1FFFE7FF00000000),
    .INIT_00(256'h9393C6C6935112363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_01(256'h3636363636363636363636363636363636363636363636015193939393939393),
    .INIT_02(256'h9F699F9F699F9F12010303032626363636363636363636363636363636363636),
    .INIT_03(256'h363636363636363636363636363636363636363636363636363636363612129F),
    .INIT_04(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_05(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCC888812363636363636361212121212121236),
    .INIT_06(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCC88478888CCCCCCCC),
    .INIT_07(256'h2626262626363636363636363636360151939393939393939393C6C693511236),
    .INIT_08(256'h0103030303262626262626262626262626262626262626262626262626262626),
    .INIT_09(256'h36363636363636363636363636363636363636363612129F9F699F9F699F9F12),
    .INIT_0A(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_0B(256'hCCCCCCCCCCCCCC88123636361212121212888888888837121212363636363636),
    .INIT_0C(256'h363636360288CCCCCCCCCCCCCCCCCCCC884788CCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_0D(256'h363636363636360151939393939393939393C6C6935112363636363636363636),
    .INIT_0E(256'h0303030303030303030303030303030303030303030303030303030326263636),
    .INIT_0F(256'h3636363636363636363636363612129F9F699F9F699F9F120103030303030303),
    .INIT_10(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_11(256'h12361212378888888888CCCCCCCC888888371212363636363636363636363636),
    .INIT_12(256'hCCCCCCCCCCCCCCCC884788CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC88),
    .INIT_13(256'h51939393939393939393C6C6935112363636363636363636363636360288CCCC),
    .INIT_14(256'h0303030303030303030303030303030303030303032626363636363636363601),
    .INIT_15(256'h363636363612129F9F699F699F9F9F1201030303030303030303030303030303),
    .INIT_16(256'h1212363636363636363636363636363636363636363636363636363636363636),
    .INIT_17(256'hCCCCCCCCCCCCCCCCCC8888121236363636363636363636363636363636121212),
    .INIT_18(256'h884788CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC881212128888CCCCCC),
    .INIT_19(256'h9393C693935112363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_1A(256'h0303030303030303030303030303262636363636363636015193939393939393),
    .INIT_1B(256'h9F699F699F9F9F12130103030303030303030303030303030303030303030303),
    .INIT_1C(256'h363636363636363636363636363636363636363636363636363636363612129F),
    .INIT_1D(256'hCCCC888812123636363636363636363636363612121288888837121212363636),
    .INIT_1E(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800008888CCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_1F(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCC888888CCCCCCCCCC),
    .INIT_20(256'h0303030303030326363636363636360151939393939393939393C69393511236),
    .INIT_21(256'h1201030303030303030303030303030303030303030303030303030303030303),
    .INIT_22(256'h36363636363636363636363636363636363636363612129F9F699F699F9F9F9F),
    .INIT_23(256'h363636363636121212121237888888CCCC888888121212123636363636363636),
    .INIT_24(256'hCCCCCCCCCCCCCC88008888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8888121236),
    .INIT_25(256'h363636360288CCCCCCCCCCCCCCCCCCCC8888CCCCCCCCCCCCCCCC888888888888),
    .INIT_26(256'h2636363636363601519393939393939393939393935112363636363636363636),
    .INIT_27(256'h0303030303030303030303030303030303030303030303030303030303030326),
    .INIT_28(256'h3636363636363636363636361224129F9F699F699F9F9F9F1201030303030303),
    .INIT_29(256'h88888888CCCCCCCCCCCCCC888888881212363636363636363636363636363636),
    .INIT_2A(256'h8888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC888812363636363636121288),
    .INIT_2B(256'hCCCCCCCCCCCCCCCC8888CCCCCCCCCCCCCC88880000000088CCCCCCCCCCCCCC88),
    .INIT_2C(256'h519393939393939393939393935112363636363636363636363636360288CCCC),
    .INIT_2D(256'h0303030303030303030303030303030303030303030303032626363636363601),
    .INIT_2E(256'h3636363612129F9F9F699F699F9F9F9F12130103030303030303030303030303),
    .INIT_2F(256'hCCCCCCCCCCCC8888371236363636363636363636363636363636363636363636),
    .INIT_30(256'hCCCCCCCCCCCCCCCCCCCCCCCCCC8812123636361212378888CCCCCCCCCCCCCCCC),
    .INIT_31(256'h8888CCCCCCCCCCCC888800363636008888CCCCCCCCCCCC8888CCCCCCCCCCCCCC),
    .INIT_32(256'h93939393935112363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_33(256'h2626260303030303030303030303030303262636363636015193939393939393),
    .INIT_34(256'h9F699F699F9F9F9F9F1201030303030303030326262626262626262626262626),
    .INIT_35(256'h8812123636363636363636363636363636363636363636363636363612129F9F),
    .INIT_36(256'hCCCCCCCCCC888812363612128888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_37(256'h880000363636000088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_38(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_39(256'h0303030303030303030326263636360151939393939393939393939393511236),
    .INIT_3A(256'h9F12012603030303030303263636363636363636363636363636262603030303),
    .INIT_3B(256'h363636363636363636363636363636363636363612129F9F9F699F699F9F9F9F),
    .INIT_3C(256'h1212128888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8888123636363636),
    .INIT_3D(256'h88CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8812),
    .INIT_3E(256'h363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363600),
    .INIT_3F(256'h0303032626363601519393939393939393939393935112363636363636363636),
    .INIT_40(256'h2626262636363636363636363636363636363626260303030303030303030303),
    .INIT_41(256'h36363636363636363636361224129F9F699F9F699F9F9F9F9F12012626262626),
    .INIT_42(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC883712363636363636363636363636),
    .INIT_43(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC888800008888CCCCCCCC),
    .INIT_44(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCC),
    .INIT_45(256'h519393939393939393939393935112363636363636363636363636360288CCCC),
    .INIT_46(256'h3636363636363636363636362626030303030303030303030303030326263601),
    .INIT_47(256'h36363612129F9F9F699F9F699F9F9F9F9F120136363636363636363636363636),
    .INIT_48(256'hCCCCCCCCCCCCCCCCCCCC88121236363636363636363636363636363636363636),
    .INIT_49(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC88008888CCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_4A(256'hCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_4B(256'h93939393935112363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_4C(256'h3636363636262603030303030303030303030303032626015193939393939393),
    .INIT_4D(256'h699F699F9F9F9F9F9F1213013636363636363636363636363636363636363636),
    .INIT_4E(256'hCCCC8888121236363636363636363636363636363636363636363612129F9F9F),
    .INIT_4F(256'hCCCCCCCCCCCCCC888888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_50(256'h880036363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCC88888888888888CCCC),
    .INIT_51(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_52(256'h2603030303030303030303030303160151939393939393939393939393511236),
    .INIT_53(256'h9F9F120126262626262626262626262626262626262626262626262626262626),
    .INIT_54(256'h3636363636363636363636363636363636361212129F9F9F699F699F9F9F9F9F),
    .INIT_55(256'h88CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8888123636),
    .INIT_56(256'h88CCCCCCCCCCCCCCCCCCCCCCCCCC888800000000008888CCCCCCCCCCCCCCCC88),
    .INIT_57(256'h363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363600),
    .INIT_58(256'h0303030303030301519393939393939393939393935112363636363636363636),
    .INIT_59(256'h3636363636363636363636363636363636363636363636260303030303030303),
    .INIT_5A(256'h363636363636363636360112129F9F699F9F699F9F9F9F9F9F9F120136363636),
    .INIT_5B(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880101363636363636363636),
    .INIT_5C(256'hCCCCCCCCCCCC880000363636000088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_5D(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCC),
    .INIT_5E(256'h519393939393939393939393935101363636363636363636363636360288CCCC),
    .INIT_5F(256'h3636363636363636363636363636362626030303030303030303030303030301),
    .INIT_60(256'h363601129F9F9F699F9F699F9F9F699F9F9F1201013636363636363636363636),
    .INIT_61(256'hCCCCCCCCCCCCCCCCCCCCCCCC8888013636363636363636363636363636363636),
    .INIT_62(256'h3636363636008888CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_63(256'hCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCCCCCCCCCCCC888800),
    .INIT_64(256'h93939393935101363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_65(256'h3636363636363636260303030303030303030303030303015193939393939393),
    .INIT_66(256'h9F9F699F9F9F699F9F9F12120136363636363636363636363626262626263636),
    .INIT_67(256'hCCCCCCCCCC88013636363636363636363636363636363636363613129F9F9F69),
    .INIT_68(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8888888888CCCCCCCCCCCCCCCC),
    .INIT_69(256'h880036363636360088CCCCCCCCCCCCCCCCCCCCCCCC8800003636363636000088),
    .INIT_6A(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_6B(256'h2603030303030303030303030303030151939393939393939393939393510136),
    .INIT_6C(256'h9F9F9F1201363636363636363636363636260303032626262626262626262626),
    .INIT_6D(256'h363636363636363636363636363636362601139F9F9F699F9F9F699F9F9F699F),
    .INIT_6E(256'hCCCCCCCCCCCCCCCC888888880000008888888888CCCCCCCCCCCCCCCCCC880136),
    .INIT_6F(256'h88CCCCCCCCCCCCCCCCCCCCCCCC8800363636363636360088CCCCCCCCCCCCCCCC),
    .INIT_70(256'h363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363600),
    .INIT_71(256'h0303030303030301519393939393939393939393935101363636363636363636),
    .INIT_72(256'h3636363636363636262603030303030303030303030303030303030303030303),
    .INIT_73(256'h36363636363636360101129F9F9F699F9F9F699F9F9F699F9F9F9F1201363636),
    .INIT_74(256'h880000003636000000000088CCCCCCCCCCCCCCCCCC8801363636363636363636),
    .INIT_75(256'hCCCCCCCCCC8800363636363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_76(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCC),
    .INIT_77(256'h519393939393939393939393935101363636363636363636363636360288CCCC),
    .INIT_78(256'h2603030303030303030303030303030303030303030303030303030303030301),
    .INIT_79(256'h1312129F9F699F9F9F9F699F9F9F699F9F9F9F12013636363636363636363636),
    .INIT_7A(256'h3636008888CCCCCCCCCCCCCCCC88013636363636363636363636363636363601),
    .INIT_7B(256'h3636363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC888800363636363636),
    .INIT_7C(256'hCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCCCCCCCCCCCC880036),
    .INIT_7D(256'h93939393935101363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_7E(256'h0315151515151515151515151515150303030303030303015193939393939393),
    .INIT_7F(256'h9F699F9F9F9F699F9F9F9F121301363636363636363636362603030303030303),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_0 }),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_1 }),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h02)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(addra[14]),
        .I1(addra[12]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized4
   (DOADO,
    DOPADOP,
    clka,
    addra);
  output [7:0]DOADO;
  output [0:0]DOPADOP;
  input clka;
  input [14:0]addra;

  wire \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ;
  wire [7:0]DOADO;
  wire [0:0]DOPADOP;
  wire [14:0]addra;
  wire clka;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'hFE7FE7F8FFF8FFFFF3FF007FFF00FFFDFFF3FFFF3E7FF9FCFFFE7FE7F9FFF87F),
    .INITP_01(256'hFFFF3E7FF9FCFFFE7FE7F87FE1FFFFF3FF1FFFFF80FFFDFFF3FFFF3E7FF9FCFF),
    .INITP_02(256'hFFFFE0FFFDFFF3FFFF3E7FF9FCFFFE7FE7FC0FC1FFFFF3FF1FFFFFC0FFFDFFF3),
    .INITP_03(256'h801FFFFFF3FF9FFFFFF0FFFDFFF3FFFF3E7FF9FCFFFE7FE7FE0207FFFFF3FF9F),
    .INITP_04(256'hF9FCFFFE7FE7FFE07FFFFFF3FF9FFFFFF8FFFDFFF3FFFF3E7FF9FCFFFE7FE7FF),
    .INITP_05(256'hFDFFF3FFFF3E7FF9FCFFFE7FE7FFFFFFFFFFF1FF9FFFFFFCFFFDFFF3FFFF3E7F),
    .INITP_06(256'hF9FFCFFFFFFEFFFDFFF3FFFF3E7FF9FCFFFE7FE7FFFFFFFFFFF9FFCFFFFFFCFF),
    .INITP_07(256'h1FE7FFFFFFFFFFF9FFCFFFFFFEFFFDFFF3FFFF1E7FF9FCFFFE7FE7FFFFFFFFFF),
    .INITP_08(256'hFF0E7FF8FCFFFE0FE7FFFFFFFFFFF9FFCFFFFFFEFFFC3FF3FFFF1E7FF8FCFFFE),
    .INITP_09(256'hFFFFFFFFCFF3FFFF007FF804FFFE07E7FFFFFFFFFFF9FFC7FFFFFFFFFF9FF3FF),
    .INITP_0A(256'hFFFFFFF9FF87FFFFFFFFFFE7F3FFFF007FF800FFFE03C7FFFFFFFFFFF9FF87FF),
    .INITP_0B(256'h00FFFE0007FFFFFFFFFFF9FE07FFFFFFFFFFF7F3FFFF007FF800FFFE0007FFFF),
    .INITP_0C(256'hF7F3FFFF007FF800FFFE0007FFFFFFFFFFF9FE03FFFFFFFFFFF7F3FFFF007FF8),
    .INITP_0D(256'hF007FFFFFFFFFFF7F3FFFF007FF800FFFE0007FFFFFFFFFFF1FC03FFFFFFFFFF),
    .INITP_0E(256'hFFFFFFFFFFFFF3E007FFFFFFFFFFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3),
    .INITP_0F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE38007FFFFFFFFFFF7F3FFFFFFFFFFFFFFFFFF),
    .INIT_00(256'hCCCCCCCCCC88013636363636363636363636363636010113129F9F9F9F699F9F),
    .INIT_01(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363636363636360088CCCCCC),
    .INIT_02(256'h880036363636360088CCCCCCCCCCCCCCCCCCCCCCCC8800363636363636360088),
    .INIT_03(256'h3636363636363636363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_04(256'h3636363636361515030303030303030151939393939393939393939393510136),
    .INIT_05(256'h9F9F9F9F12013636363636363636363626030303030303030315363636363636),
    .INIT_06(256'h363636363636363636363636360112129F9F9F9F699F9F9F9F699F9F9F9F699F),
    .INIT_07(256'hCCCCCCCCCCCCCC8800363636363636363636360088CCCCCCCCCCCCCCCC880101),
    .INIT_08(256'h88CCCCCCCCCCCCCCCCCCCCCCCC8800363636363636360088CCCCCCCCCCCCCCCC),
    .INIT_09(256'h363636360288CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363600),
    .INIT_0A(256'h1503030303030301519393939393939393939393935101363636363636363636),
    .INIT_0B(256'h3636363636363636260303151515151515153636363636363636363636363615),
    .INIT_0C(256'h363636010101129F9F9F9F69699F9F9F9F699F9F9F9F699F9F9F9F9F12013636),
    .INIT_0D(256'h00363636363636363636360088CCCCCCCCCCCCCCCC8888010136363636363636),
    .INIT_0E(256'hCCCCCCCCCC8800363636363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC88),
    .INIT_0F(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880036363636360088CCCCCCCCCCCCCC),
    .INIT_10(256'h519393939393939393939393935101363636363636363636363636360288CCCC),
    .INIT_11(256'h2626031536363636363636363636363636363636363636361515030303030301),
    .INIT_12(256'h9F9F69699F9F9F9F9F699F9F9F9F699F9F9F9F9F120136363636363636363636),
    .INIT_13(256'h3636360088CCCCCCCCCCCCCCCCCC88880101010136363636363601011212129F),
    .INIT_14(256'h3636363636360088CCCCCCCCCCCCCCCCCCCCCCCCCCCCCC880036363636363636),
    .INIT_15(256'hCCCCCCCCCCCCCCCC880036363636360000CCCCCCCCCCCCCCCCCCCCCCCC880036),
    .INIT_16(256'h93939393935101363636363636363636363636360288CCCCCCCCCCCCCCCCCCCC),
    .INIT_17(256'h3636363636363636363636363636363636151503030303015193939393939393),
    .INIT_18(256'h699F9F9F9F9F699F9F9F9F9F1201363636363636363636363626031536363636),
    .INIT_19(256'hCCCCCCCCCCCCCC88880000010101360101011312129F9F9F9F9F699F9F9F9F9F),
    .INIT_1A(256'hCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC8800363636363636363636360088CCCCCC),
    .INIT_1B(256'h0000363636363600009CCCCCCCCCCCCCCCCCCCCCCC0000363636363636360088),
    .INIT_1C(256'h3636363636363636363636360200CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC),
    .INIT_1D(256'h3636363636363636363615150303030151939393939393939393939393510136),
    .INIT_1E(256'h9F9F9F9F12013636363636363636363636260315363636363636363636363636),
    .INIT_1F(256'hCC000000000101011212129F9F9F9F9F9F69699F9F9F9F9F699F9F9F9F9F699F),
    .INIT_20(256'hCCCCCCCCCCCCCC0000363636363636363636360000CCCCCCCCCCCCCCCCCCCCCC),
    .INIT_21(256'h009C9CCCCCCCCCCCCCCC9C9C9C0000363636363636360088CCCCCCCCCCCCCCCC),
    .INIT_22(256'h3636363602009C9C9CCCCCCCCCCCCCCCCCCCCCCCCCCC9C9C0000363636363600),
    .INIT_23(256'h3636361515030301519393939393939393939393935101363636363636363636),
    .INIT_24(256'h3636363636363636362603153636363636363636363636363636363636363636),
    .INIT_25(256'h129F9F9F9F9F9F9F699F9F9F9F9F9F699F9F9F9F9F69699F9F9F9F9F12013636),
    .INIT_26(256'h003636363636363636363600009C9C9CCCCCCCCCCCCC9C9C9C9C9C0012121212),
    .INIT_27(256'h9C9C9C9F9F0000363636363636360000CCCCCCCCCCCCCCCCCCCCCCCCCCCC9C00),
    .INIT_28(256'h9C9C9C9C9C9C9CCCCCCCCCCC9C9C9C9C0000363636363600009F9C9C9C9C9C9C),
    .INIT_29(256'h5193939393939393939393939351013636363636363636363636363602009F9F),
    .INIT_2A(256'h3626261515363636363636363636363636363636363636363636363615150301),
    .INIT_2B(256'h9F9F9F9F9F9F9F699F9F9F9F9F699F9F9F9F9F9F121301363636363636363636),
    .INIT_2C(256'h36363600129F9F9C9C9C9C9C9C9C9C9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6969),
    .INIT_2D(256'h36363636363600129C9C9CCCCCCCCCCCCCCCCC9C9C9C9C000036363636363636),
    .INIT_2E(256'h9C9C9C9C9C9F9F9F1200363636363600129F9F9F9F9F9F9F9F9F9F9F9F000036),
    .INIT_2F(256'h939393939351013636363636363636363636363602129F9F9F9F9F9F9C9C9C9C),
    .INIT_30(256'h3636363636363636363636363636363636363636361503015193939393939393),
    .INIT_31(256'h9F9F9F9F9F699F9F9F9F9F9F9F12013636363636363636363636260315363636),
    .INIT_32(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F699F9F9F9F9F9F9F699F),
    .INIT_33(256'h9F9F9C9C9C9C9C9C9C9C9C9C9F9F9F12003636363636363636363600129F9F9F),
    .INIT_34(256'h1200363636363600129F9F9F9F9F9F9F9F9F9F9F9F1200363636363636360012),
    .INIT_35(256'h36363636363636363636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_36(256'h3636363636363636363636363615150151939393939393939393939393510136),
    .INIT_37(256'h9F9F9F9F9F120136363636363636363636362603153636363636363636363636),
    .INIT_38(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F699F9F9F9F9F9F699F9F),
    .INIT_39(256'h9F9F9F9F9F9F9F12003636363636363636363600129F9F9F9F9F9F9F9F9F9F9F),
    .INIT_3A(256'h129F9F9F9F9F9F9F9F9F9F9F9F12003636363636363600129F9F9F9F9F9F9F9F),
    .INIT_3B(256'h3636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F1200033636363600),
    .INIT_3C(256'h3636363636361501519393939393939393939393935101373636363636363636),
    .INIT_3D(256'h3636363636363636363626031536363636363636363636363636363636363636),
    .INIT_3E(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F699F9F9F9F9F9F699F9F9F9F9F9F9F9F120136),
    .INIT_3F(256'h000303363636363636363600129F9F6969699F9F9F9F9F9F9F9F9F9F9F696969),
    .INIT_40(256'h9F9F9F9F9F12000336363636363600129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F12),
    .INIT_41(256'h9F9F6969699F9F9F9F9F9F9F9F9F9F9F1200033636363600129F9F9F9F9F9F9F),
    .INIT_42(256'h5193939393939393939393939351010101013736363636363636363602129F9F),
    .INIT_43(256'h3636260315153636363636363636363636363636363636363636363636121201),
    .INIT_44(256'h9F9F9F9F69699F9F9F9F9F9F699F9F9F9F9F9F9F9F1201363636363636363636),
    .INIT_45(256'h36363600129F9F9F9F9F69696969696969696969699F9F9F9F9F9F9F9F9F9F9F),
    .INIT_46(256'h36363636363600129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F120003030336363636),
    .INIT_47(256'h9F9F9F9F9F9F9F9F1200030336363600129F9F9F9F9F9F9F9F9F9F9F9F120003),
    .INIT_48(256'h939393939351515151010136363636363636363602129F9F9F9F9F9F6969699F),
    .INIT_49(256'h3636363636363636363636363636363636363612124251515193939393939393),
    .INIT_4A(256'h9F9F9F69699F9F9F9F9F9F9F9F12013636363636363636363636260303153636),
    .INIT_4B(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F9F9F),
    .INIT_4C(256'h9F9F69699F9F9F9F9F9F9F9F9F9F9F12000303030336363636363600129F9F9F),
    .INIT_4D(256'h1200030303030300129F9F9F9F9F9F9F9F9F9F9F9F1200030303030303360012),
    .INIT_4E(256'h51510101363636363636363602129F9F9F9F9F9F9F9F9F6969696969699F9F9F),
    .INIT_4F(256'h3636363636363636363636125151935151939393939393939393939393515193),
    .INIT_50(256'h9F9F9F9F9F120136363636363636363636262603031536363636363636363636),
    .INIT_51(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F9F9F9F9F9F9F699F9F9F9F),
    .INIT_52(256'h9F9F9F9F9F9F9F12000303030303363636360300129F9F9F9F9F9F9F9F9F9F9F),
    .INIT_53(256'h129F9F9F9F9F9F9F9F9F9F9F9F12000303030303030300129F9F9F9F69696969),
    .INIT_54(256'h3636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F1200030303030300),
    .INIT_55(256'h3636121251939351519393939393939393939393935151939351510101363636),
    .INIT_56(256'h3636363636363636362603030315363636363636363636363636363636363636),
    .INIT_57(256'h9F9F9F9F9F9F9F9F9F69699F9F9F9F9F9F9F69699F9F9F9F9F9F9F9F9F120136),
    .INIT_58(256'h000303030303030303030300129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_59(256'h9F9F9F9F9F12000303030303030300129F9F9F9F9F9F9F69696969699F9F9F12),
    .INIT_5A(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F1200030303030300129F9F9F9F9F9F9F),
    .INIT_5B(256'h5151939393939393939393935151519393935151013636363636363602129F9F),
    .INIT_5C(256'h2626030303151536363636363636363636363636363636363636125151939351),
    .INIT_5D(256'h69699F9F9F9F9F9F9F9F699F9F9F9F9F9F9F9F9F9F1201363636363636363626),
    .INIT_5E(256'h03030300129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_5F(256'h03030303030300129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F120003030303030303),
    .INIT_60(256'h9F9F9F9F9F9F9F9F1200030303030300129F9F9F9F9F9F9F9F9F9F9F9F120003),
    .INIT_61(256'h939393515151519393939351013636363636363602129F9F9F9F9F9F9F9F9F9F),
    .INIT_62(256'h3636363636363636363636363636363636361251939393515151519393939393),
    .INIT_63(256'h9F69699F9F9F9F9F9F9F9F9F9F12013636363636363636260303030303031536),
    .INIT_64(256'h9F9F9F9F9F69696969699F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F),
    .INIT_65(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F12000000000000000000000000129F9F9F),
    .INIT_66(256'h1200000000000000129F9F9F9F9F9F9F9F9F9F9F9F1200000000000000000012),
    .INIT_67(256'h93939351013636363636363602129F9F69699F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_68(256'h3636363636363636363612519393939351515151515151515151515151519393),
    .INIT_69(256'h9F9F9F9F12130136363636363636262603030303030315363636363636363636),
    .INIT_6A(256'h9F9F9F9F9F9F9F9F9F9F696969699F9F9F9F9F9F9F9F9F9F69699F9F9F9F9F9F),
    .INIT_6B(256'h9F9F9F9F9F9F9F12121212121212121212121212129F9F9F699F9F9F9F9F9F9F),
    .INIT_6C(256'h129F9F9F9F9F699F9F9F9F9F9F12121212121212121212129F9F9F699F9F9F9F),
    .INIT_6D(256'h3636363602129F9F9F699F9F9F9F9F9F9F9F9F9F9F9F9F9F1212121212121212),
    .INIT_6E(256'h3636125193939393939351515151515151515151519393939393935101363636),
    .INIT_6F(256'h3636363626262603030303030315153636363636363636363636363636363636),
    .INIT_70(256'h6969699F9F9F9F9F9F9F9F9F9F9F9F9F699F9F9F9F9F9F9F9F9F9F9F12013636),
    .INIT_71(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F9F9F9F9F9F9F9F9F9F9F9F9F6969),
    .INIT_72(256'h699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F9F9F),
    .INIT_73(256'h9F9F9F9F9F9F9F9F9F9F699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69),
    .INIT_74(256'h9393939393939393939393939393939393939351013636363636363602129F9F),
    .INIT_75(256'h0303030303153636363636363636363636363636363636363636125193939393),
    .INIT_76(256'h9F9F9F9F9F9F69699F9F9F9F9F9F9F9F9F9F9F9F120136363636362626030303),
    .INIT_77(256'h9F9F9F9F9F9F9F699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_78(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_79(256'h9F9F69699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F),
    .INIT_7A(256'h939393939393939393939351013636363636363602129F9F9F9F9F9F9F9F9F9F),
    .INIT_7B(256'h3636363636363636363636363636363636361251939393939393939393939393),
    .INIT_7C(256'h9F9F9F9F9F9F9F9F9F9F9F121301363636262626030303030303030303153636),
    .INIT_7D(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F),
    .INIT_7E(256'h9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F),
    .INIT_7F(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F696969699F9F9F9F9F9F9F9F9F9F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra[11:0],1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:8],DOADO}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:1],DOPADOP}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT3 #(
    .INIT(8'h08)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[14]),
        .I2(addra[13]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized5
   (p_15_out,
    clka,
    ena_array,
    addra);
  output [8:0]p_15_out;
  input clka;
  input [0:0]ena_array;
  input [10:0]addra;

  wire [10:0]addra;
  wire clka;
  wire [0:0]ena_array;
  wire [8:0]p_15_out;
  wire [15:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .INITP_00(256'hFFFFFFF7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6000FFFFFFFFFFFF7F3FFFF),
    .INITP_01(256'hFFFF00001FFFFFFFFFFFE7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80001FFFFF),
    .INITP_02(256'hFFFFFFFFFFFFFFFFFE00003FFFFFFFFFFFCFF3FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INITP_03(256'hF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0000FFFFFFFFFFFF9FF3FFFFFFFFFFFF),
    .INITP_04(256'hFFFFFFFF80007FF00000000000000000000000000000000000FFFFFFFFFFFE3F),
    .INITP_05(256'h0000000000000000000000000000F00000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h93939351013636363636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F9F),
    .INIT_01(256'h3636363636363636363612519393939393939393939393939393939393939393),
    .INIT_02(256'h9F9F121201363626262603030303030303030303151536363636363636363636),
    .INIT_03(256'h69699F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F69699F9F9F9F9F9F9F9F9F9F),
    .INIT_04(256'h9F9F9F6969699F9F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F9F9F69),
    .INIT_05(256'h9F9F6969699F9F9F9F9F9F9F9F69696969699F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_06(256'h3636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F),
    .INIT_07(256'h3636125151939393939393939393939393939393939393939393515101363636),
    .INIT_08(256'h0303030303030303030303151536363636363636363636363636363636363636),
    .INIT_09(256'h9F9F9F9F9F9F9F9F9F6969699F9F9F9F9F9F9F9F9F9F9F9F9F12120101262626),
    .INIT_0A(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F696969696969),
    .INIT_0B(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_0C(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F6969696969696969696969699F9F9F9F9F),
    .INIT_0D(256'h9393939393939393939393939393939393515101013636363636363602129F9F),
    .INIT_0E(256'h0303031536363636363636363636363636363636363636363636121251519393),
    .INIT_0F(256'h9F699F9F9F9F9F9F9F9F9F9F9F9F9F9F12120101262603030303030303030303),
    .INIT_10(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_11(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_12(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_13(256'h939393939393935151420124373636363636363602129F9F9F9F9F9F9F9F9F9F),
    .INIT_14(256'h3636363636363636363636363636363636363612125151519393939393939393),
    .INIT_15(256'h9F9F9F9F9F9F9F12120101030303030303030303030303030303151536363636),
    .INIT_16(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_17(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_18(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_19(256'h51010136363736363636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_1A(256'h3636363636363636363636361212125151519393939393939393939393935151),
    .INIT_1B(256'h0101260303030303030303030303030315151536363636363636363636363636),
    .INIT_1C(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F1212),
    .INIT_1D(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_1E(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_1F(256'h3636363602129F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_20(256'h3636363636361212125151515151515151515151515151010101373636363636),
    .INIT_21(256'h0303030303030303153636363636363636363636363636363636363636363636),
    .INIT_22(256'h1212121212121212121212121212121212121212121212010126030303030303),
    .INIT_23(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_24(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_25(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_26(256'h1200000000000000000000000000000101363636363636363636363602121212),
    .INIT_27(256'h1536363636363636363636363636363636363636363636363636363636363636),
    .INIT_28(256'h0000000000000000000000000000000126030303030303030303030303030303),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000036363636020000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:8],p_15_out[7:0]}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:0]),
        .DOPADOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1],p_15_out[8]}),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(ena_array),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized6
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FC7FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'hFE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FE7FFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFF87FE7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF9FFC0000000000000001FFFFFFFFFFFFFFFFFF),
    .INIT_07(256'hFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FF80000000000000001FFFF),
    .INIT_08(256'hFFFF3FF1FFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1FF9FFFFFF),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFF3FF1FFFFFFFFFFFFFFF9FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'hF9FFFE00FFFFFFFFFFFFFFFFFFFFFFFF3FF3FFFFFFFFFFFFFFF9FFFFFFFFFFFF),
    .INIT_0B(256'hFFFFFFFFFFFFFFF9FFF8FE7FFFFFFFFFFFFFFFFFFFFFFF3FF3FFFFFFFFFFFFFF),
    .INIT_0C(256'hFFFFFFFFFF3FF3FFFFFFFFFFFFFFF9FFF3033FFFFFFFFFFFFFFFFFFFFFFF3FF3),
    .INIT_0D(256'hBFFFFFFFFFFFFFFFFFFFFFFF3FF3FFFFFFFFFFFFFFF9FFF601BFFFFFFFFFFFFF),
    .INIT_0E(256'hFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF3FF3FFFFFFFFFFFFFFF9FFF400),
    .INIT_0F(256'hFF3FF3FFFFFFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF3FF3FFFFFFFF),
    .INIT_10(256'hFFFFFFFFFFFFFFFF3FF3FFFFFFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFF400BFFFFFFFFFFFFFFFFFFFFFFF3FF1FFFFFFFFFFFFFFF9FFF400BFFFFFFF),
    .INIT_12(256'hFFFFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF3FF1FFFFFFFFFFFFFFF9),
    .INIT_13(256'hFFFFFFFF9FF8FFFFFFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF1FF8FF),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFF9FFD000000000001FFF9FFF400BFFFFFFFFFFFFFFF),
    .INIT_15(256'hFC7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF87FE000000000000FFF9FFF400BF),
    .INIT_16(256'hE7FC7FFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFC7FE7FFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFE7FC7FFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hF400BFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFE7FF9FFF400BFFFFFFFFF),
    .INIT_19(256'hFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFE7FF9FF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFF),
    .INIT_1D(256'hFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'h00BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFF),
    .INIT_20(256'hFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7FF9FFF4),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'hF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFE7FF9FFF400BFFFFF),
    .INIT_24(256'h07F8FFFFFFFC7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFFE7F0FFFFFFFE7F),
    .INIT_25(256'hFFFFFFFFFFFFFC07F800000000FFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'hBFFFFFFFFFFFFFFFFFFFFFFFFFF80FF800000001FFF9FFF400BFFFFFFFFFFFFF),
    .INIT_27(256'hFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFF09FF1FFFFFFFFFFF9FFF400),
    .INIT_28(256'hFFFFEB9FF3FFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFF19FF1FFFF),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFE79FF3FFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFF400BFFFFFFFFFFFFFFFFFFFFFFFFFD79FF3FFFFFFFFFFF9FFF400BFFFFFFF),
    .INIT_2B(256'hF3FFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFCF9FF3FFFFFFFFFFF9),
    .INIT_2C(256'hFFFFFFFFFF9F9FF1FFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFFAF9F),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFF1F9FF1FFFFFFFFFFF9FFF400BFFFFFFFFFFFFFFF),
    .INIT_2E(256'hFCFFF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFF1F9FF800000001FFF9FFF400BF),
    .INIT_2F(256'hFE3F8FF9FFFFFFFE7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFF3F9FF9FFFFFF),
    .INIT_30(256'hFFFFFFFFFFFFFFFE3FCFFBFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hF400BFFFFFFFFFFFFFFFFFFFFFFFFE7FC7F3FFFFFFFF7FF9FFF400BFFFFFFFFF),
    .INIT_32(256'hFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFD7F9007FFFFFFFF7FF9FF),
    .INIT_33(256'hFFFFFFFCFF3FFFFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFCFFBFFF),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFCFF7FFFFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFF),
    .INIT_35(256'h7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFCFF7FFFFFFFFFFF7FF9FFF400BFFF),
    .INIT_36(256'hFF7FFFFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFCFF7FFFFFFFFFFF),
    .INIT_37(256'hFFFFFFFFFFFFFCFE7FFFFFFFFFFF7FF9FFF400BFFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_38(256'h00BF80FFFFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF7FF9FFF400BFFFFFFFFFFF),
    .INIT_39(256'hFFFFFF7FF9FFF400BE3E1FFFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF7FF9FFF4),
    .INIT_3A(256'hFFFFFCFEFFFFFFFFFFFF7FF9FFF400BCE3CFFFFFFFFFFFFFFFFFFFFCFEFFFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF7FF9FFF400B90063FFFFFFFFFFFFFF),
    .INIT_3C(256'hF9FFF400A60009FFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF7FF9FFF400B3001B),
    .INIT_3D(256'hFFFFFFFFFFFF7FF9FFF400AC000CFFFFFFFFFFFFFFFFFFFCFEFFFFFFFFFFFF7F),
    .INIT_3E(256'hFFFFFFFFFFF8FEFFFFFFFFFFFF7FF9FFF400880006FFFFFFFFFFFFFFFFFFFCFE),
    .INIT_3F(256'h9000027FFFFFFFFFFFFFFFFFF8FE7FFFFFFFFFFE7FF9FFF400900002FFFFFFFF),
    .INIT_40(256'hFFFE7FF9FFF400B000037F01FFFFFFFFFFFFFFF9FE0FFFFFFFFFFE7FF9FFF400),
    .INIT_41(256'hFFF9FE000000000FFE7FF9FFF400A00001707E3FFFFFFFFFFFFFF9FE07FFFFFF),
    .INIT_42(256'h0067FFF83FFFFFFFF9FE0000000007FE7FF9FFF400A000014FC3CFFFFFFFFFFF),
    .INIT_43(256'hFFF400E00001300033FFE3C7FFFFFFF9FE0000000003FE7FF9FFF400A0000118),
    .INIT_44(256'h00000001FE7FF9FFF400C03F01600019FC1E70FFFFFFF9FF0000000001FE7FF9),
    .INIT_45(256'h03BFFFFFF3FF0000000000FE7FF9FFF400C06101C0000DF9F01E7FFFFFF1FF00),
    .INIT_46(256'h9C80000006CC00009FFFFFF3FF801FFFE0007E7FF9FFF400C0DD81800004E700),
    .INIT_47(256'h1E7FF9FFF40000BE80000002180000DFFFFFF3FF901FFFF0003E7FF9FFF40000),
    .INIT_48(256'hE7FF9FFFFFFC000E7FF9FFF40000BE800000033000006FFFFFE3FF9FFFFFF800),
    .INIT_49(256'h01C0000033FFFFE7FF8FFFFFFE00067FF9FFF40000BE8000000160000027FFFF),
    .INIT_4A(256'hF40000BE800306018000001BFFFFC7FFCFFFFFFF80007FF9FFF40000BE8001FC),
    .INIT_4B(256'hFFFF80007FF9FFF40000BE8002720000000009FFFFC7FFCFFFFFFF00007FF9FF),
    .INIT_4C(256'h05FFFFCFFFC7FFFFFF80007FF9FFF40000BE8006FB000000000DFFFFCFFFC7FF),
    .INIT_4D(256'h8005FD0000F1F005FFFF9FFFE7FFC7FF80007FF9FFF40000BE8004F900001F00),
    .INIT_4E(256'h7FF9FFF40000BE8005FD00008C1005FFFF1FFFE7FFC00000007FF9FFF40000BE),
    .INIT_4F(256'hFFE3FF800000007FF9FFF40000BE8005FD0001BFD805FFFE1FFFE7FF80000000),
    .INIT_50(256'h017FE804FFF8FFFFF3FF803FFC007FF9FFF40000BE8005FD00017FE805FFF87F),
    .INIT_51(256'h0000BE8005FD00017FE8067FE1FFFFF3FF803FFE007FF9FFF40000BE8005FD00),
    .INIT_52(256'hFFFF807FF9FFF40000BE0005FD00017FE8030FC1FFFFF3FFCFFFFF007FF9FFF4),
    .INIT_53(256'h001FFFFFF3FFCFFFFFC07FF9FFF000003E4001FD00017FE8018207FFFFF3FFCF),
    .INIT_54(256'hF9FC00027FE703E07FFFFFF3FFCFFFFFE07FF9FFF380033E6039FD00007FE000),
    .INIT_55(256'hF9FFF3FFFF3E7FF9FCE01E7FE7FFFFFFFFFFF1FFE7FFFFF07FF9FFF3FE0F3E7F),
    .INIT_56(256'hF9FFE7FFFFF87FF9FFF3FFFF3E7FF9FCFFFE7FE7FFFFFFFFFFF9FFE7FFFFF87F),
    .INIT_57(256'h1FE7FFFFFFFFFFF9FFE7FFFFFC7FF9FFF3FFFF1E7FF9FCFFFE7FE7FFFFFFFFFF),
    .INIT_58(256'hFF0E7FF8FCFFFE0FE7FFFFFFFFFFF9FFE3FFFFF87FF83FF3FFFF1E7FF8FCFFFE),
    .INIT_59(256'hFFE27FF90FF3FFFF007FF804FFFE07E7FFFFFFFFFFF9FFE3FFFFE07FF81FF3FF),
    .INIT_5A(256'hFFFFFFF9FFC3FFFFC67FF987F3FFFF007FF800FFFE03C7FFFFFFFFFFF9FFE3FF),
    .INIT_5B(256'h00FFFE0007FFFFFFFFFFF9FFC1FFFFC63FF1C7F3FFFF007FF800FFFE0007FFFF),
    .INIT_5C(256'hE7F3FFFF007FF800FFFE0007FFFFFFFFFFF9FF01FFFFCE1FE1E7F3FFFF007FF8),
    .INIT_5D(256'hFE01FFFFCFC007E7F3FFFF007FF800FFFE0007FFFFFFFFFFF1FF01FFFFCF0003),
    .INIT_5E(256'hFFFFFFFFFFFFF3F803FFFFCFFFFFE7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3),
    .INIT_5F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFE3F003FFFFCFFFFFE7F3FFFFFFFFFFFFFFFFFF),
    .INIT_60(256'hC7FFFFC7F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C003FFFFCFFFFFE7F3FFFF),
    .INIT_61(256'hFFFF0C000FFFFFC3FFFF87F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF870007FFFF),
    .INIT_62(256'hFFFFFFFFFFFFFFFFFE00000FFFFFE0FFFE1FF3FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_63(256'hF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC20001FFFFFF03FFC1FF3FFFFFFFFFFFF),
    .INIT_64(256'h7FFFFFFF00007FF000000000000000000000000000000040007FFFFFFC00003F),
    .INIT_65(256'h0000000000000000000000000000F00000000000000000000000000000008000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized7
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000001FFF000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000010010000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000100180000000000000000000000000),
    .INIT_04(256'hF8800000000000000000000000000000000000000000000011F8800000000000),
    .INIT_05(256'h00000000000063F0800000000000000000000000000000000000000000000031),
    .INIT_06(256'h0000000000000000000000000043F0FFFFFFFFFFFFFFFE000000000000000000),
    .INIT_07(256'h000000000200000000000000000000000000000047E000000000000000020000),
    .INIT_08(256'h000080007FFFFFFFFFFFFFF2000000000000000000000000000000C7E0000000),
    .INIT_09(256'h0000000000000000008000FFFFFFFFFFFFFFF200000000000000000000000000),
    .INIT_0A(256'h320001FF00000000000000000000000080000000000000000032000000000000),
    .INIT_0B(256'h00000000000000320006FF800000000000000000000000800000000000000000),
    .INIT_0C(256'h000000000080000000000000000032000F03C000000000000000000000008000),
    .INIT_0D(256'hC0000000000000000000000080000000000000000032000E39C0000000000000),
    .INIT_0E(256'h00000032000C1EC0000000000000000000000080000000000000000032000C3C),
    .INIT_0F(256'h0080000000000000000032000C0EC00000000000000000000000800000000000),
    .INIT_10(256'h000000000000000080000000000000000032000C06C000000000000000000000),
    .INIT_11(256'h000C02C0000000000000000000000080000000000000000032000C06C0000000),
    .INIT_12(256'h00000000000032000C00C0000000000000000000000080000000000000000032),
    .INIT_13(256'h0000000040000000000000000032000C00C00000000000000000000000C00000),
    .INIT_14(256'h000000000000000000000040000000000000000032000C00C000000000000000),
    .INIT_15(256'h030032000C00C000000000000000000000006000FFFFFFFFFFFE0032000C00C0),
    .INIT_16(256'h10008000000000010032000C00C0000000000000000000000030008000000000),
    .INIT_17(256'h0000000000000010018000000000010032000C00C00000000000000000000000),
    .INIT_18(256'h0C00C0000000000000000000000010030000000000010032000C00C000000000),
    .INIT_19(256'h000000010032000C00C000000000000000000000001FFE000000000001003200),
    .INIT_1A(256'h00000000000000000000010032000C00C0000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000010032000C00C00000000000000000),
    .INIT_1C(256'h0032000C00C0000000000000000000000000000000000000010032000C00C000),
    .INIT_1D(256'h000000000000010032000C00C000000000000000000000000000000000000001),
    .INIT_1E(256'h00000000000000000000000000010032000C00C0000000000000000000000000),
    .INIT_1F(256'h00C0000000000000000000000000000000000000010032000C00C00000000000),
    .INIT_20(256'h0000010032000C00C0000000000000000000000000000000000000010032000C),
    .INIT_21(256'h000000000000000000010032000C00C000000000000000000000000000000000),
    .INIT_22(256'h00000000000000000000000FFC000000010032000C00C0000000000000000000),
    .INIT_23(256'h32000C00C0000000000000000000000000001806000000010032000C00C00000),
    .INIT_24(256'hF3E1000000030032000C00C00000000000000000000000000010030000000100),
    .INIT_25(256'h0000000000000383E1FFFFFFFE0032000C00C000000000000000000000000000),
    .INIT_26(256'hC00000000000000000000000000607C0000000000032000C00C0000000000000),
    .INIT_27(256'hFFFC0032000C00C00000000000000000000000000C07C0000000000032000C00),
    .INIT_28(256'h0000180000FFFFFFF80032000C00C00000000000000000000000000800007FFF),
    .INIT_29(256'h000000000000000000100000000000000032000C00C000000000000000000000),
    .INIT_2A(256'h000C00C0000000000000000000000000300000000000000032000C00C0000000),
    .INIT_2B(256'h00000000000032000C00C0000000000000000000000000200000000000000032),
    .INIT_2C(256'h0000000000400000000000000032000C00C00000000000000000000000006000),
    .INIT_2D(256'h000000000000000000000000C00000000000000032000C00C000000000000000),
    .INIT_2E(256'h020032000C00C0000000000000000000000000800000000000000032000C00C0),
    .INIT_2F(256'h01800000000000010032000C00C0000000000000000000000000800000000000),
    .INIT_30(256'h0000000000000001000000000000000032000C00C00000000000000000000000),
    .INIT_31(256'h0C00C0000000000000000000000001000000000000000032000C00C000000000),
    .INIT_32(256'h000000000032000C00C000000000000000000000000300280000000000003200),
    .INIT_33(256'h00000002000000000000000032000C00C0000000000000000000000002000000),
    .INIT_34(256'h0000000000000000000002000000000000000032000C00C00000000000000000),
    .INIT_35(256'h0032000C00C0000000000000000000000002000000000000000032000C00C000),
    .INIT_36(256'h000000000000000032000C00C000000000000000000000000200000000000000),
    .INIT_37(256'h00000000000002008000000000000032000C00C0000000000000000000000002),
    .INIT_38(256'h00C07F0000000000000000000002000000000000000032000C00C00000000000),
    .INIT_39(256'h0000000032000C00C1FFE000000000000000000002000000000000000032000C),
    .INIT_3A(256'h000002000000000000000032000C00C3E3F00000000000000000000200000000),
    .INIT_3B(256'h00000000000000000002000000000000000032000C00C7007C00000000000000),
    .INIT_3C(256'h32000C00DE01CE00000000000000000002000000000000000032000C00CF001C),
    .INIT_3D(256'h0000000000000032000C00DC03EF000000000000000000020000000000000000),
    .INIT_3E(256'h000000000006000000000000000032000C00F800770000000000000000000200),
    .INIT_3F(256'hF0001A00000000000000000000000000000000000030000C00F0003300000000),
    .INIT_40(256'h00000030000400F0000B00000000000000000000000000000000000030000400),
    .INIT_41(256'h0000000000000000000030000400E00001007C00000000000000000000000000),
    .INIT_42(256'h006000000000000000000000000000000030000400E0000107C3800000000000),
    .INIT_43(256'h000400E0000130003000038000000000000000000000000020000400E0000118),
    .INIT_44(256'h00000000000000000400C03F01600018000E7000000000000000000000000020),
    .INIT_45(256'h0300000000000000000000000000000400C06101C003CC01F01E000000000000),
    .INIT_46(256'h80800000F60C000080000000000000000000000000000400C0C1818001E40300),
    .INIT_47(256'h00000000040000808000003A18001EC000000000000000000000000000040000),
    .INIT_48(256'h0000000000000000000000040000808000001B30001F40000000000000000000),
    .INIT_49(256'h01C00001B0000000000000000000000000000400008080000019600007A00000),
    .INIT_4A(256'h0400008080030601800001D800000000000000000000000000040000808001FC),
    .INIT_4B(256'h000000000000000400008080020200000000C800000000000000000000000000),
    .INIT_4C(256'h640000000000000000000000000004000080800603000000006C000000000000),
    .INIT_4D(256'h8004010000F1F004000000000000000000000000000400008080040100001F00),
    .INIT_4E(256'h0000000400008080040100008010040000000000000000000000000004000080),
    .INIT_4F(256'h0000000000000000000004000080800401000180180400000000000000000000),
    .INIT_50(256'h0100080400000000000000000000000000040000808004010001000804000000),
    .INIT_51(256'h0000808004010001000806000000000000000000000000000400008080040100),
    .INIT_52(256'h0000000000000400008000040100010008030000000000000000000000000004),
    .INIT_53(256'h0000000000000000000000000000000000000001000100080180000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000010000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module blk_mem_gen_3_blk_mem_gen_prim_wrapper_init__parameterized8
   (douta,
    clka,
    addra);
  output [0:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [0:0]douta;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(1),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_01(256'hFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_02(256'hFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_03(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_04(256'h007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0007FFFFFFFFFFF),
    .INIT_05(256'hFFFFFFFFFFFF80007FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0),
    .INIT_06(256'hFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000001FFFFFFFFFFFFFFFFFF),
    .INIT_07(256'h0000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000000001FFFF),
    .INIT_08(256'hFFFF00000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000),
    .INIT_09(256'hFFFFFFFFFFFFFFFFFF00000000000000000001FFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_0A(256'h01FFFE00FFFFFFFFFFFFFFFFFFFFFFFF00000000000000000001FFFFFFFFFFFF),
    .INIT_0B(256'h0000000000000001FFF9007FFFFFFFFFFFFFFFFFFFFFFF000000000000000000),
    .INIT_0C(256'hFFFFFFFFFF00000000000000000001FFF0FC3FFFFFFFFFFFFFFFFFFFFFFF0000),
    .INIT_0D(256'h3FFFFFFFFFFFFFFFFFFFFFFF00000000000000000001FFF1FE3FFFFFFFFFFFFF),
    .INIT_0E(256'h00000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF00000000000000000001FFF3FF),
    .INIT_0F(256'hFF00000000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_10(256'hFFFFFFFFFFFFFFFF00000000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFF),
    .INIT_11(256'hFFF3FF3FFFFFFFFFFFFFFFFFFFFFFF00000000000000000001FFF3FF3FFFFFFF),
    .INIT_12(256'h00000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF00000000000000000001),
    .INIT_13(256'hFFFFFFFF80000000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF000000),
    .INIT_14(256'hFFFFFFFFFFFFFFFFFFFFFF80000000000000000001FFF3FF3FFFFFFFFFFFFFFF),
    .INIT_15(256'hFC0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF80000000000000000001FFF3FF3F),
    .INIT_16(256'hE0007FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFC0007FFFFFFFFF),
    .INIT_17(256'hFFFFFFFFFFFFFFE0007FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_18(256'hF3FF3FFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFFFFFE0001FFF3FF3FFFFFFFFF),
    .INIT_19(256'hFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFFFFFE0001FF),
    .INIT_1A(256'hFFFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFF),
    .INIT_1C(256'h0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFF),
    .INIT_1D(256'hFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE),
    .INIT_1E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_1F(256'hFF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFF),
    .INIT_20(256'hFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFF3),
    .INIT_21(256'hFFFFFFFFFFFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_22(256'hFFFFFFFFFFFFFFFFFFFFFFF003FFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFF),
    .INIT_23(256'h01FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFE001FFFFFFFE0001FFF3FF3FFFFF),
    .INIT_24(256'h0000FFFFFFFC0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFFE000FFFFFFFE00),
    .INIT_25(256'hFFFFFFFFFFFFFC0000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_26(256'h3FFFFFFFFFFFFFFFFFFFFFFFFFF80000000000000001FFF3FF3FFFFFFFFFFFFF),
    .INIT_27(256'h00000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000001FFF3FF),
    .INIT_28(256'hFFFFE00000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFF000000000),
    .INIT_29(256'hFFFFFFFFFFFFFFFFFFE00000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFF),
    .INIT_2A(256'hFFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000001FFF3FF3FFFFFFF),
    .INIT_2B(256'h00000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFFC00000000000000001),
    .INIT_2C(256'hFFFFFFFFFF800000000000000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFF8000),
    .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001FFF3FF3FFFFFFFFFFFFFFF),
    .INIT_2E(256'h000001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFF000000000000000001FFF3FF3F),
    .INIT_2F(256'hFE000000FFFFFFFC0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFF000000000000),
    .INIT_30(256'hFFFFFFFFFFFFFFFE000000FFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFF),
    .INIT_31(256'hF3FF3FFFFFFFFFFFFFFFFFFFFFFFFE000001FFFFFFFE0001FFF3FF3FFFFFFFFF),
    .INIT_32(256'hFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFC000001FFFFFFFE0001FF),
    .INIT_33(256'hFFFFFFFC001FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFC001003),
    .INIT_34(256'hFFFFFFFFFFFFFFFFFFFFFC001FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFF),
    .INIT_35(256'h0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFE0001FFF3FF3FFF),
    .INIT_36(256'h003FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFC003FFFFFFFFFFE),
    .INIT_37(256'hFFFFFFFFFFFFFC003FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFFFFFFFFFFFFFFFC),
    .INIT_38(256'hFF3F80FFFFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFE0001FFF3FF3FFFFFFFFFFF),
    .INIT_39(256'hFFFFFE0001FFF3FF3E001FFFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFE0001FFF3),
    .INIT_3A(256'hFFFFFC007FFFFFFFFFFE0001FFF3FF3C1C0FFFFFFFFFFFFFFFFFFFFC007FFFFF),
    .INIT_3B(256'hFFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFE0001FFF3FF38FF83FFFFFFFFFFFFFF),
    .INIT_3C(256'h01FFF3FF21FFF1FFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFE0001FFF3FF30FFE3),
    .INIT_3D(256'h7FFFFFFFFFFE0001FFF3FF23FFF0FFFFFFFFFFFFFFFFFFFC007FFFFFFFFFFE00),
    .INIT_3E(256'hFFFFFFFFFFF8007FFFFFFFFFFE0001FFF3FF07FFF8FFFFFFFFFFFFFFFFFFFC00),
    .INIT_3F(256'h0FFFFC0000000000000000000000000000000000000000F3FF0FFFFCFFFFFFFF),
    .INIT_40(256'h000000000003FF0FFFFC000000000000000000000000000000000000000003FF),
    .INIT_41(256'h00000000000000000000000003FF1FFFFE000000000000000000000000000000),
    .INIT_42(256'hFF80000000000000000000000000000000000003FF1FFFFE003C000000000000),
    .INIT_43(256'h0003FF1FFFFE0FFFC0000000000000000000000000000000000003FF1FFFFE07),
    .INIT_44(256'h000000000000000003FF3FC0FE1FFFE000018000000000000000000000000000),
    .INIT_45(256'hFC000000000000000000000000000003FF3F80FE3FFFF0000FE0000000000000),
    .INIT_46(256'h007FFFFFF803FFFF000000000000000000000000000003FF3F007E7FFFF800FF),
    .INIT_47(256'h0000000003FFFF007FFFFFFC07FFFF000000000000000000000000000003FFFF),
    .INIT_48(256'h000000000000000000000003FFFF007FFFFFFC0FFFFF80000000000000000000),
    .INIT_49(256'hFE3FFFFFC00000000000000000000000000003FFFF007FFFFFFE1FFFFFC00000),
    .INIT_4A(256'h03FFFF007FFC01FE7FFFFFE00000000000000000000000000003FFFF007FFE03),
    .INIT_4B(256'h0000000000000003FFFF007FFC01FFFFFFFFF000000000000000000000000000),
    .INIT_4C(256'hF80000000000000000000000000003FFFF007FF800FFFFFFFFF0000000000000),
    .INIT_4D(256'h7FF800FFFF000FF80000000000000000000000000003FFFF007FF800FFFFE0FF),
    .INIT_4E(256'h00000003FFFF007FF800FFFF000FF80000000000000000000000000003FFFF00),
    .INIT_4F(256'h0000000000000000000003FFFF007FF800FFFE0007F800000000000000000000),
    .INIT_50(256'hFE0007F80000000000000000000000000003FFFF007FF800FFFE0007F8000000),
    .INIT_51(256'hFFFF007FF800FFFE0007F80000000000000000000000000003FFFF007FF800FF),
    .INIT_52(256'h00000000000003FFFF007FF800FFFE0007FC0000000000000000000000000003),
    .INIT_53(256'h8000000000000000000000000003FFFF003FF800FFFE0007FE00000000000000),
    .INIT_54(256'h0000FFFC0000FC00000000000000000000000000007FFC001FC000FFFE0007FF),
    .INIT_55(256'h0000000000000000001FE0000000000000000000000000000000000001F00000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,addra}),
        .ADDRBWRADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:1],douta}),
        .DOBDO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({1'b0,1'b0,1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_top" *) 
module blk_mem_gen_3_blk_mem_gen_top
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [11:0]douta;

  blk_mem_gen_3_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* C_ADDRA_WIDTH = "15" *) (* C_ADDRB_WIDTH = "15" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "9" *) (* C_COMMON_CLK = "0" *) (* C_COUNT_18K_BRAM = "1" *) 
(* C_COUNT_36K_BRAM = "9" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     8.936631 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "0" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "blk_mem_gen_3.mem" *) 
(* C_INIT_FILE_NAME = "blk_mem_gen_3.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "3" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "26000" *) (* C_READ_DEPTH_B = "26000" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "12" *) (* C_READ_WIDTH_B = "12" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "0" *) (* C_USE_BYTE_WEB = "0" *) (* C_USE_DEFAULT_DATA = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "1" *) (* C_WEB_WIDTH = "1" *) (* C_WRITE_DEPTH_A = "26000" *) 
(* C_WRITE_DEPTH_B = "26000" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
(* C_WRITE_WIDTH_A = "12" *) (* C_WRITE_WIDTH_B = "12" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3" *) (* downgradeipidentifiedwarnings = "yes" *) 
module blk_mem_gen_3_blk_mem_gen_v8_4_3
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [14:0]addra;
  input [11:0]dina;
  output [11:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [14:0]addrb;
  input [11:0]dinb;
  output [11:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [14:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [11:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [11:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [14:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [14:0]addra;
  wire clka;
  wire [11:0]douta;

  assign dbiterr = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  blk_mem_gen_3_blk_mem_gen_v8_4_3_synth inst_blk_mem_gen
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_4_3_synth" *) 
module blk_mem_gen_3_blk_mem_gen_v8_4_3_synth
   (douta,
    clka,
    addra);
  output [11:0]douta;
  input clka;
  input [14:0]addra;

  wire [14:0]addra;
  wire clka;
  wire [11:0]douta;

  blk_mem_gen_3_blk_mem_gen_top \gnbram.gnativebmg.native_blk_mem_gen 
       (.addra(addra),
        .clka(clka),
        .douta(douta));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
