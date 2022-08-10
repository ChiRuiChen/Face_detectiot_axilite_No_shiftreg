// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_buffer_ap_fixed_ap_fixed_config9_s (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_V_address0,
        data_V_ce0,
        data_V_q0,
        output_V_address0,
        output_V_ce0,
        output_V_we0,
        output_V_d0,
        output_V_q0
);

parameter    ap_ST_fsm_state1 = 24'd1;
parameter    ap_ST_fsm_state2 = 24'd2;
parameter    ap_ST_fsm_state3 = 24'd4;
parameter    ap_ST_fsm_state4 = 24'd8;
parameter    ap_ST_fsm_state5 = 24'd16;
parameter    ap_ST_fsm_state6 = 24'd32;
parameter    ap_ST_fsm_state7 = 24'd64;
parameter    ap_ST_fsm_state8 = 24'd128;
parameter    ap_ST_fsm_state9 = 24'd256;
parameter    ap_ST_fsm_state10 = 24'd512;
parameter    ap_ST_fsm_state11 = 24'd1024;
parameter    ap_ST_fsm_state12 = 24'd2048;
parameter    ap_ST_fsm_state13 = 24'd4096;
parameter    ap_ST_fsm_state14 = 24'd8192;
parameter    ap_ST_fsm_state15 = 24'd16384;
parameter    ap_ST_fsm_state16 = 24'd32768;
parameter    ap_ST_fsm_state17 = 24'd65536;
parameter    ap_ST_fsm_state18 = 24'd131072;
parameter    ap_ST_fsm_state19 = 24'd262144;
parameter    ap_ST_fsm_state20 = 24'd524288;
parameter    ap_ST_fsm_state21 = 24'd1048576;
parameter    ap_ST_fsm_state22 = 24'd2097152;
parameter    ap_ST_fsm_state23 = 24'd4194304;
parameter    ap_ST_fsm_state24 = 24'd8388608;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] data_V_address0;
output   data_V_ce0;
input  [15:0] data_V_q0;
output  [8:0] output_V_address0;
output   output_V_ce0;
output   output_V_we0;
output  [15:0] output_V_d0;
input  [15:0] output_V_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_V_ce0;
reg[8:0] output_V_address0;
reg output_V_ce0;
reg output_V_we0;
reg[15:0] output_V_d0;

(* fsm_encoding = "none" *) reg   [23:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [10:0] linebuffer_V_3_address0;
reg    linebuffer_V_3_ce0;
reg    linebuffer_V_3_we0;
reg   [15:0] linebuffer_V_3_d0;
wire   [15:0] linebuffer_V_3_q0;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] reg_273;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state23;
wire   [5:0] i0_fu_285_p2;
reg   [5:0] i0_reg_733;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln177_fu_279_p2;
reg   [15:0] data_V_load_reg_743;
wire    ap_CS_fsm_state3;
wire   [11:0] zext_ln203_fu_296_p1;
reg   [11:0] zext_ln203_reg_748;
wire    ap_CS_fsm_state4;
wire   [7:0] zext_ln203_1_fu_300_p1;
reg   [7:0] zext_ln203_1_reg_755;
wire   [7:0] add_ln182_fu_337_p2;
reg   [7:0] add_ln182_reg_765;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln180_fu_313_p2;
wire   [1:0] add_ln187_fu_342_p2;
reg   [1:0] add_ln187_reg_770;
wire   [7:0] add_ln187_1_fu_360_p2;
reg   [7:0] add_ln187_1_reg_776;
wire    ap_CS_fsm_state6;
wire   [6:0] zext_ln187_fu_373_p1;
reg   [6:0] zext_ln187_reg_791;
reg   [10:0] linebuffer_V_3_addr_1_reg_797;
reg   [15:0] tmp_V_reg_802;
wire   [4:0] i2_fu_401_p2;
reg   [4:0] i2_reg_810;
wire    ap_CS_fsm_state8;
wire   [6:0] add_ln203_2_fu_419_p2;
reg   [6:0] add_ln203_2_reg_815;
wire   [0:0] icmp_ln189_fu_395_p2;
wire   [6:0] add_ln203_4_fu_436_p2;
reg   [6:0] add_ln203_4_reg_820;
wire   [7:0] add_ln203_1_fu_459_p2;
reg   [7:0] add_ln203_1_reg_825;
wire   [1:0] i1_fu_464_p2;
reg   [1:0] i1_reg_830;
wire   [11:0] add_ln203_3_fu_477_p2;
reg   [11:0] add_ln203_3_reg_835;
wire    ap_CS_fsm_state9;
wire   [11:0] add_ln203_5_fu_489_p2;
reg   [11:0] add_ln203_5_reg_840;
wire    ap_CS_fsm_state10;
reg   [15:0] linebuffer_V_3_load_reg_850;
wire    ap_CS_fsm_state11;
wire   [1:0] i0_1_fu_512_p2;
reg   [1:0] i0_1_reg_858;
wire    ap_CS_fsm_state14;
wire   [6:0] zext_ln126_2_fu_530_p1;
reg   [6:0] zext_ln126_2_reg_863;
wire   [0:0] icmp_ln122_fu_506_p2;
wire   [6:0] add_ln126_fu_534_p2;
reg   [6:0] add_ln126_reg_868;
wire   [1:0] i1_2_fu_546_p2;
reg   [1:0] i1_2_reg_876;
wire    ap_CS_fsm_state15;
wire   [9:0] sub_ln126_fu_576_p2;
reg   [9:0] sub_ln126_reg_881;
wire   [0:0] icmp_ln124_fu_540_p2;
wire   [5:0] i2_2_fu_592_p2;
reg   [5:0] i2_2_reg_890;
wire    ap_CS_fsm_state16;
wire   [9:0] add_ln126_1_fu_607_p2;
reg   [9:0] add_ln126_1_reg_895;
wire   [0:0] icmp_ln125_fu_586_p2;
wire   [9:0] add_ln126_4_fu_621_p2;
reg   [9:0] add_ln126_4_reg_900;
wire    ap_CS_fsm_state17;
reg   [15:0] output_V_load_reg_910;
wire    ap_CS_fsm_state18;
wire   [1:0] i1_1_fu_648_p2;
reg   [1:0] i1_1_reg_918;
wire    ap_CS_fsm_state20;
wire   [8:0] sub_ln134_fu_674_p2;
reg   [8:0] sub_ln134_reg_923;
wire   [0:0] icmp_ln131_fu_642_p2;
wire   [7:0] zext_ln133_fu_680_p1;
reg   [7:0] zext_ln133_reg_928;
wire   [5:0] i2_1_fu_690_p2;
reg   [5:0] i2_1_reg_936;
wire    ap_CS_fsm_state21;
wire   [8:0] add_ln134_fu_708_p2;
reg   [8:0] add_ln134_reg_941;
wire   [0:0] icmp_ln133_fu_684_p2;
wire   [7:0] add_ln203_6_fu_717_p2;
reg   [7:0] add_ln203_6_reg_946;
wire    ap_CS_fsm_state22;
reg   [6:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [5:0] i0_0_reg_183;
reg   [1:0] i1_0_reg_195;
wire    ap_CS_fsm_state13;
reg   [4:0] i2_0_reg_207;
wire    ap_CS_fsm_state12;
reg   [1:0] i0_0_i_reg_218;
reg   [1:0] i1_0_i_reg_229;
reg   [5:0] i2_0_i_reg_240;
wire    ap_CS_fsm_state19;
reg   [1:0] i11_0_i_reg_251;
reg   [5:0] i22_0_i_reg_262;
wire    ap_CS_fsm_state24;
wire   [63:0] zext_ln179_fu_291_p1;
wire   [63:0] tmp_fu_304_p3;
wire   [63:0] zext_ln182_1_fu_365_p1;
wire   [63:0] zext_ln187_2_fu_369_p1;
wire   [63:0] zext_ln203_2_fu_390_p1;
wire   [63:0] zext_ln203_8_fu_494_p1;
wire   [63:0] zext_ln203_6_fu_498_p1;
wire   [63:0] zext_ln203_4_fu_502_p1;
wire   [63:0] zext_ln126_1_fu_629_p1;
wire   [63:0] zext_ln126_fu_637_p1;
wire   [63:0] zext_ln203_10_fu_722_p1;
wire   [63:0] zext_ln134_fu_726_p1;
wire   [1:0] xor_ln182_fu_319_p2;
wire   [6:0] tmp_2_fu_325_p3;
wire   [7:0] zext_ln182_fu_333_p1;
wire   [6:0] tmp_3_fu_348_p3;
wire   [7:0] zext_ln187_1_fu_356_p1;
wire   [11:0] tmp_4_cast_fu_376_p4;
wire   [11:0] add_ln203_fu_385_p2;
wire   [5:0] tmp_7_fu_407_p3;
wire   [6:0] zext_ln203_5_fu_415_p1;
wire   [5:0] tmp_10_fu_424_p3;
wire   [6:0] zext_ln203_7_fu_432_p1;
wire   [1:0] sub_ln195_fu_441_p2;
wire   [6:0] tmp_6_fu_447_p3;
wire   [7:0] zext_ln203_3_fu_455_p1;
wire   [11:0] tmp_9_cast_fu_470_p3;
wire   [11:0] tmp_12_cast_fu_482_p3;
wire   [0:0] trunc_ln126_fu_518_p1;
wire   [5:0] shl_ln_fu_522_p3;
wire   [8:0] shl_ln126_1_fu_552_p3;
wire   [6:0] shl_ln126_2_fu_564_p3;
wire   [9:0] zext_ln126_3_fu_560_p1;
wire   [9:0] zext_ln126_4_fu_572_p1;
wire   [6:0] zext_ln125_fu_582_p1;
wire   [6:0] add_ln126_2_fu_598_p2;
wire   [9:0] zext_ln126_5_fu_603_p1;
wire   [6:0] add_ln126_3_fu_612_p2;
wire   [9:0] zext_ln126_6_fu_617_p1;
wire  signed [31:0] sext_ln126_1_fu_626_p1;
wire  signed [31:0] sext_ln126_fu_634_p1;
wire   [6:0] shl_ln134_1_fu_662_p3;
wire   [8:0] shl_ln1_fu_654_p3;
wire   [8:0] zext_ln134_1_fu_670_p1;
wire   [6:0] or_ln_fu_696_p3;
wire   [8:0] zext_ln134_2_fu_704_p1;
wire   [7:0] zext_ln203_9_fu_713_p1;
reg   [23:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'd1;
end

cnnshift_arr_buffer_ap_fixed_ap_fixed_config9_s_linebuffeThq #(
    .DataWidth( 16 ),
    .AddressRange( 1088 ),
    .AddressWidth( 11 ))
linebuffer_V_3_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_3_address0),
    .ce0(linebuffer_V_3_ce0),
    .we0(linebuffer_V_3_we0),
    .d0(linebuffer_V_3_d0),
    .q0(linebuffer_V_3_q0)
);

cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_tmpinput_V #(
    .DataWidth( 16 ),
    .AddressRange( 96 ),
    .AddressWidth( 7 ))
tmpinput_V_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(tmpinput_V_address0),
    .ce0(tmpinput_V_ce0),
    .we0(tmpinput_V_we0),
    .d0(tmpinput_V_d0),
    .q0(tmpinput_V_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln177_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_218 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln124_fu_540_p2 == 1'd1))) begin
        i0_0_i_reg_218 <= i0_1_reg_858;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln180_fu_313_p2 == 1'd1))) begin
        i0_0_reg_183 <= i0_reg_733;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i0_0_reg_183 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln122_fu_506_p2 == 1'd1))) begin
        i11_0_i_reg_251 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln133_fu_684_p2 == 1'd1))) begin
        i11_0_i_reg_251 <= i1_1_reg_918;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln125_fu_586_p2 == 1'd1))) begin
        i1_0_i_reg_229 <= i1_2_reg_876;
    end else if (((icmp_ln122_fu_506_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        i1_0_i_reg_229 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i1_0_reg_195 <= i1_reg_830;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i1_0_reg_195 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_642_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        i22_0_i_reg_262 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        i22_0_i_reg_262 <= i2_1_reg_936;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_540_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        i2_0_i_reg_240 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        i2_0_i_reg_240 <= i2_2_reg_890;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i2_0_reg_207 <= i2_reg_810;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_207 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln125_fu_586_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        add_ln126_1_reg_895 <= add_ln126_1_fu_607_p2;
        add_ln126_4_reg_900 <= add_ln126_4_fu_621_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_506_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        add_ln126_reg_868[6 : 5] <= add_ln126_fu_534_p2[6 : 5];
        zext_ln126_2_reg_863[5] <= zext_ln126_2_fu_530_p1[5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_684_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        add_ln134_reg_941 <= add_ln134_fu_708_p2;
        add_ln203_6_reg_946 <= add_ln203_6_fu_717_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln180_fu_313_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln182_reg_765 <= add_ln182_fu_337_p2;
        add_ln187_1_reg_776 <= add_ln187_1_fu_360_p2;
        add_ln187_reg_770 <= add_ln187_fu_342_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_395_p2 == 1'd1))) begin
        add_ln203_1_reg_825 <= add_ln203_1_fu_459_p2;
        i1_reg_830 <= i1_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln189_fu_395_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln203_2_reg_815 <= add_ln203_2_fu_419_p2;
        add_ln203_4_reg_820 <= add_ln203_4_fu_436_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln203_3_reg_835 <= add_ln203_3_fu_477_p2;
        add_ln203_5_reg_840 <= add_ln203_5_fu_489_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_V_load_reg_743 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i0_1_reg_858 <= i0_1_fu_512_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_733 <= i0_fu_285_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i1_1_reg_918 <= i1_1_fu_648_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i1_2_reg_876 <= i1_2_fu_546_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i2_1_reg_936 <= i2_1_fu_690_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        i2_2_reg_890 <= i2_2_fu_592_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i2_reg_810 <= i2_fu_401_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        linebuffer_V_3_addr_1_reg_797 <= zext_ln203_2_fu_390_p1;
        tmp_V_reg_802 <= linebuffer_V_3_q0;
        zext_ln187_reg_791[1 : 0] <= zext_ln187_fu_373_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        linebuffer_V_3_load_reg_850 <= linebuffer_V_3_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        output_V_load_reg_910 <= output_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_273 <= tmpinput_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_540_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        sub_ln126_reg_881[9 : 5] <= sub_ln126_fu_576_p2[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_642_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        sub_ln134_reg_923[8 : 5] <= sub_ln134_fu_674_p2[8 : 5];
        zext_ln133_reg_928[6 : 5] <= zext_ln133_fu_680_p1[6 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        zext_ln203_1_reg_755[5 : 0] <= zext_ln203_1_fu_300_p1[5 : 0];
        zext_ln203_reg_748[5 : 0] <= zext_ln203_fu_296_p1[5 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_642_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_642_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_V_ce0 = 1'b1;
    end else begin
        data_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        linebuffer_V_3_address0 = zext_ln203_6_fu_498_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        linebuffer_V_3_address0 = zext_ln203_8_fu_494_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuffer_V_3_address0 = linebuffer_V_3_addr_1_reg_797;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        linebuffer_V_3_address0 = zext_ln187_2_fu_369_p1;
    end else begin
        linebuffer_V_3_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_3_ce0 = 1'b1;
    end else begin
        linebuffer_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        linebuffer_V_3_d0 = linebuffer_V_3_load_reg_850;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuffer_V_3_d0 = reg_273;
    end else begin
        linebuffer_V_3_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_395_p2 == 1'd1)))) begin
        linebuffer_V_3_we0 = 1'b1;
    end else begin
        linebuffer_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_V_address0 = zext_ln134_fu_726_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_V_address0 = zext_ln126_fu_637_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_V_address0 = zext_ln126_1_fu_629_p1;
    end else begin
        output_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state17))) begin
        output_V_ce0 = 1'b1;
    end else begin
        output_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_V_d0 = reg_273;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_V_d0 = output_V_load_reg_910;
    end else begin
        output_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state24) | (1'b1 == ap_CS_fsm_state19))) begin
        output_V_we0 = 1'b1;
    end else begin
        output_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state22)) begin
        tmpinput_V_address0 = zext_ln203_10_fu_722_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_address0 = zext_ln203_4_fu_502_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = zext_ln182_1_fu_365_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = tmp_fu_304_p3;
    end else begin
        tmpinput_V_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state22) | (1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state4))) begin
        tmpinput_V_ce0 = 1'b1;
    end else begin
        tmpinput_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_d0 = tmp_V_reg_802;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_d0 = data_V_load_reg_743;
    end else begin
        tmpinput_V_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state4))) begin
        tmpinput_V_we0 = 1'b1;
    end else begin
        tmpinput_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln177_fu_279_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln180_fu_313_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_395_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln122_fu_506_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln124_fu_540_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln125_fu_586_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state20 : begin
            if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_642_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln133_fu_684_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state22;
            end
        end
        ap_ST_fsm_state22 : begin
            ap_NS_fsm = ap_ST_fsm_state23;
        end
        ap_ST_fsm_state23 : begin
            ap_NS_fsm = ap_ST_fsm_state24;
        end
        ap_ST_fsm_state24 : begin
            ap_NS_fsm = ap_ST_fsm_state21;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln126_1_fu_607_p2 = (zext_ln126_5_fu_603_p1 + sub_ln126_reg_881);

assign add_ln126_2_fu_598_p2 = (zext_ln126_2_reg_863 + zext_ln125_fu_582_p1);

assign add_ln126_3_fu_612_p2 = (add_ln126_reg_868 + zext_ln125_fu_582_p1);

assign add_ln126_4_fu_621_p2 = (zext_ln126_6_fu_617_p1 + sub_ln126_reg_881);

assign add_ln126_fu_534_p2 = (7'd32 + zext_ln126_2_fu_530_p1);

assign add_ln134_fu_708_p2 = (sub_ln134_reg_923 + zext_ln134_2_fu_704_p1);

assign add_ln182_fu_337_p2 = (zext_ln182_fu_333_p1 + zext_ln203_1_reg_755);

assign add_ln187_1_fu_360_p2 = (zext_ln187_1_fu_356_p1 + zext_ln203_1_reg_755);

assign add_ln187_fu_342_p2 = ($signed(i1_0_reg_195) + $signed(2'd3));

assign add_ln203_1_fu_459_p2 = (zext_ln203_1_reg_755 + zext_ln203_3_fu_455_p1);

assign add_ln203_2_fu_419_p2 = (zext_ln187_reg_791 + zext_ln203_5_fu_415_p1);

assign add_ln203_3_fu_477_p2 = (zext_ln203_reg_748 + tmp_9_cast_fu_470_p3);

assign add_ln203_4_fu_436_p2 = (zext_ln187_reg_791 + zext_ln203_7_fu_432_p1);

assign add_ln203_5_fu_489_p2 = (zext_ln203_reg_748 + tmp_12_cast_fu_482_p3);

assign add_ln203_6_fu_717_p2 = (zext_ln133_reg_928 + zext_ln203_9_fu_713_p1);

assign add_ln203_fu_385_p2 = (tmp_4_cast_fu_376_p4 + zext_ln203_reg_748);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state22 = ap_CS_fsm[32'd21];

assign ap_CS_fsm_state23 = ap_CS_fsm[32'd22];

assign ap_CS_fsm_state24 = ap_CS_fsm[32'd23];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign data_V_address0 = zext_ln179_fu_291_p1;

assign i0_1_fu_512_p2 = (i0_0_i_reg_218 + 2'd1);

assign i0_fu_285_p2 = (i0_0_reg_183 + 6'd1);

assign i1_1_fu_648_p2 = (i11_0_i_reg_251 + 2'd1);

assign i1_2_fu_546_p2 = (i1_0_i_reg_229 + 2'd1);

assign i1_fu_464_p2 = (i1_0_reg_195 + 2'd1);

assign i2_1_fu_690_p2 = (i22_0_i_reg_262 + 6'd1);

assign i2_2_fu_592_p2 = (i2_0_i_reg_240 + 6'd1);

assign i2_fu_401_p2 = (i2_0_reg_207 + 5'd1);

assign icmp_ln122_fu_506_p2 = ((i0_0_i_reg_218 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln124_fu_540_p2 = ((i1_0_i_reg_229 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_586_p2 = ((i2_0_i_reg_240 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_642_p2 = ((i11_0_i_reg_251 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_684_p2 = ((i22_0_i_reg_262 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln177_fu_279_p2 = ((i0_0_reg_183 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln180_fu_313_p2 = ((i1_0_reg_195 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln189_fu_395_p2 = ((i2_0_reg_207 == 5'd16) ? 1'b1 : 1'b0);

assign or_ln_fu_696_p3 = {{1'd1}, {i22_0_i_reg_262}};

assign sext_ln126_1_fu_626_p1 = $signed(add_ln126_4_reg_900);

assign sext_ln126_fu_634_p1 = $signed(add_ln126_1_reg_895);

assign shl_ln126_1_fu_552_p3 = {{i1_0_i_reg_229}, {7'd0}};

assign shl_ln126_2_fu_564_p3 = {{i1_0_i_reg_229}, {5'd0}};

assign shl_ln134_1_fu_662_p3 = {{i11_0_i_reg_251}, {5'd0}};

assign shl_ln1_fu_654_p3 = {{i11_0_i_reg_251}, {7'd0}};

assign shl_ln_fu_522_p3 = {{trunc_ln126_fu_518_p1}, {5'd0}};

assign sub_ln126_fu_576_p2 = (zext_ln126_3_fu_560_p1 - zext_ln126_4_fu_572_p1);

assign sub_ln134_fu_674_p2 = (shl_ln1_fu_654_p3 - zext_ln134_1_fu_670_p1);

assign sub_ln195_fu_441_p2 = ($signed(2'd2) - $signed(i1_0_reg_195));

assign tmp_10_fu_424_p3 = {{i2_fu_401_p2}, {1'd0}};

assign tmp_12_cast_fu_482_p3 = {{add_ln203_4_reg_820}, {5'd0}};

assign tmp_2_fu_325_p3 = {{xor_ln182_fu_319_p2}, {5'd0}};

assign tmp_3_fu_348_p3 = {{add_ln187_fu_342_p2}, {5'd0}};

assign tmp_4_cast_fu_376_p4 = {{{{5'd8}, {add_ln187_reg_770}}}, {5'd0}};

assign tmp_6_fu_447_p3 = {{sub_ln195_fu_441_p2}, {5'd0}};

assign tmp_7_fu_407_p3 = {{i2_0_reg_207}, {1'd0}};

assign tmp_9_cast_fu_470_p3 = {{add_ln203_2_reg_815}, {5'd0}};

assign tmp_fu_304_p3 = {{58'd1}, {i0_0_reg_183}};

assign trunc_ln126_fu_518_p1 = i0_0_i_reg_218[0:0];

assign xor_ln182_fu_319_p2 = (i1_0_reg_195 ^ 2'd3);

assign zext_ln125_fu_582_p1 = i2_0_i_reg_240;

assign zext_ln126_1_fu_629_p1 = $unsigned(sext_ln126_1_fu_626_p1);

assign zext_ln126_2_fu_530_p1 = shl_ln_fu_522_p3;

assign zext_ln126_3_fu_560_p1 = shl_ln126_1_fu_552_p3;

assign zext_ln126_4_fu_572_p1 = shl_ln126_2_fu_564_p3;

assign zext_ln126_5_fu_603_p1 = add_ln126_2_fu_598_p2;

assign zext_ln126_6_fu_617_p1 = add_ln126_3_fu_612_p2;

assign zext_ln126_fu_637_p1 = $unsigned(sext_ln126_fu_634_p1);

assign zext_ln133_fu_680_p1 = shl_ln134_1_fu_662_p3;

assign zext_ln134_1_fu_670_p1 = shl_ln134_1_fu_662_p3;

assign zext_ln134_2_fu_704_p1 = or_ln_fu_696_p3;

assign zext_ln134_fu_726_p1 = add_ln134_reg_941;

assign zext_ln179_fu_291_p1 = i0_0_reg_183;

assign zext_ln182_1_fu_365_p1 = add_ln182_reg_765;

assign zext_ln182_fu_333_p1 = tmp_2_fu_325_p3;

assign zext_ln187_1_fu_356_p1 = tmp_3_fu_348_p3;

assign zext_ln187_2_fu_369_p1 = add_ln187_1_reg_776;

assign zext_ln187_fu_373_p1 = add_ln187_reg_770;

assign zext_ln203_10_fu_722_p1 = add_ln203_6_reg_946;

assign zext_ln203_1_fu_300_p1 = i0_0_reg_183;

assign zext_ln203_2_fu_390_p1 = add_ln203_fu_385_p2;

assign zext_ln203_3_fu_455_p1 = tmp_6_fu_447_p3;

assign zext_ln203_4_fu_502_p1 = add_ln203_1_reg_825;

assign zext_ln203_5_fu_415_p1 = tmp_7_fu_407_p3;

assign zext_ln203_6_fu_498_p1 = add_ln203_3_reg_835;

assign zext_ln203_7_fu_432_p1 = tmp_10_fu_424_p3;

assign zext_ln203_8_fu_494_p1 = add_ln203_5_reg_840;

assign zext_ln203_9_fu_713_p1 = i22_0_i_reg_262;

assign zext_ln203_fu_296_p1 = i0_0_reg_183;

always @ (posedge ap_clk) begin
    zext_ln203_reg_748[11:6] <= 6'b000000;
    zext_ln203_1_reg_755[7:6] <= 2'b00;
    zext_ln187_reg_791[6:2] <= 5'b00000;
    zext_ln126_2_reg_863[4:0] <= 5'b00000;
    zext_ln126_2_reg_863[6] <= 1'b0;
    add_ln126_reg_868[4:0] <= 5'b00000;
    sub_ln126_reg_881[4:0] <= 5'b00000;
    sub_ln134_reg_923[4:0] <= 5'b00000;
    zext_ln133_reg_928[4:0] <= 5'b00000;
    zext_ln133_reg_928[7] <= 1'b0;
end

endmodule //cnnshift_arr_buffer_ap_fixed_ap_fixed_config9_s
