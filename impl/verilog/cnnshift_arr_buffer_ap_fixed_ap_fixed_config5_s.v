// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s (
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
reg   [10:0] linebuffer_V_4_address0;
reg    linebuffer_V_4_ce0;
reg    linebuffer_V_4_we0;
reg   [15:0] linebuffer_V_4_d0;
wire   [15:0] linebuffer_V_4_q0;
wire   [15:0] tmpinput_V_q0;
reg   [15:0] reg_271;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state23;
wire   [5:0] i0_fu_283_p2;
reg   [5:0] i0_reg_743;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln177_fu_277_p2;
reg   [15:0] data_V_load_reg_753;
wire    ap_CS_fsm_state3;
wire   [12:0] zext_ln203_fu_294_p1;
reg   [12:0] zext_ln203_reg_758;
wire    ap_CS_fsm_state4;
wire   [11:0] zext_ln203_11_fu_298_p1;
reg   [11:0] zext_ln203_11_reg_764;
wire   [7:0] zext_ln203_12_fu_302_p1;
reg   [7:0] zext_ln203_12_reg_769;
wire   [7:0] add_ln182_fu_339_p2;
reg   [7:0] add_ln182_reg_779;
wire    ap_CS_fsm_state5;
wire   [0:0] icmp_ln180_fu_315_p2;
wire   [1:0] add_ln187_fu_344_p2;
reg   [1:0] add_ln187_reg_784;
wire   [6:0] tmp_15_fu_350_p3;
reg   [6:0] tmp_15_reg_789;
wire   [7:0] add_ln187_2_fu_362_p2;
reg   [7:0] add_ln187_2_reg_794;
wire    ap_CS_fsm_state6;
reg   [10:0] linebuffer_V_4_addr_1_reg_809;
wire   [6:0] zext_ln187_fu_394_p1;
reg   [6:0] zext_ln187_reg_814;
reg   [15:0] tmp_V_reg_820;
wire   [4:0] i2_fu_403_p2;
reg   [4:0] i2_reg_828;
wire    ap_CS_fsm_state8;
wire   [6:0] add_ln203_9_fu_421_p2;
reg   [6:0] add_ln203_9_reg_833;
wire   [0:0] icmp_ln189_fu_397_p2;
wire   [6:0] add_ln203_11_fu_438_p2;
reg   [6:0] add_ln203_11_reg_838;
wire   [7:0] add_ln203_8_fu_461_p2;
reg   [7:0] add_ln203_8_reg_843;
wire   [1:0] i1_fu_466_p2;
reg   [1:0] i1_reg_848;
wire   [12:0] add_ln203_10_fu_483_p2;
reg   [12:0] add_ln203_10_reg_853;
wire    ap_CS_fsm_state9;
wire   [12:0] add_ln203_12_fu_499_p2;
reg   [12:0] add_ln203_12_reg_858;
wire    ap_CS_fsm_state10;
reg   [15:0] linebuffer_V_4_load_reg_868;
wire    ap_CS_fsm_state11;
wire   [1:0] i0_2_fu_522_p2;
reg   [1:0] i0_2_reg_876;
wire    ap_CS_fsm_state14;
wire   [6:0] zext_ln126_7_fu_540_p1;
reg   [6:0] zext_ln126_7_reg_881;
wire   [0:0] icmp_ln122_fu_516_p2;
wire   [6:0] add_ln126_fu_544_p2;
reg   [6:0] add_ln126_reg_886;
wire   [1:0] i1_4_fu_556_p2;
reg   [1:0] i1_4_reg_894;
wire    ap_CS_fsm_state15;
wire   [9:0] sub_ln126_fu_586_p2;
reg   [9:0] sub_ln126_reg_899;
wire   [0:0] icmp_ln124_fu_550_p2;
wire   [5:0] i2_4_fu_602_p2;
reg   [5:0] i2_4_reg_908;
wire    ap_CS_fsm_state16;
wire   [9:0] add_ln126_5_fu_617_p2;
reg   [9:0] add_ln126_5_reg_913;
wire   [0:0] icmp_ln125_fu_596_p2;
wire   [9:0] add_ln126_8_fu_631_p2;
reg   [9:0] add_ln126_8_reg_918;
wire    ap_CS_fsm_state17;
reg   [15:0] output_V_load_reg_928;
wire    ap_CS_fsm_state18;
wire   [1:0] i1_3_fu_658_p2;
reg   [1:0] i1_3_reg_936;
wire    ap_CS_fsm_state20;
wire   [8:0] sub_ln134_fu_684_p2;
reg   [8:0] sub_ln134_reg_941;
wire   [0:0] icmp_ln131_fu_652_p2;
wire   [7:0] zext_ln133_fu_690_p1;
reg   [7:0] zext_ln133_reg_946;
wire   [5:0] i2_3_fu_700_p2;
reg   [5:0] i2_3_reg_954;
wire    ap_CS_fsm_state21;
wire   [8:0] add_ln134_fu_718_p2;
reg   [8:0] add_ln134_reg_959;
wire   [0:0] icmp_ln133_fu_694_p2;
wire   [7:0] add_ln203_13_fu_727_p2;
reg   [7:0] add_ln203_13_reg_964;
wire    ap_CS_fsm_state22;
reg   [6:0] tmpinput_V_address0;
reg    tmpinput_V_ce0;
reg    tmpinput_V_we0;
reg   [15:0] tmpinput_V_d0;
reg   [5:0] i0_0_reg_181;
reg   [1:0] i1_0_reg_193;
wire    ap_CS_fsm_state13;
reg   [4:0] i2_0_reg_205;
wire    ap_CS_fsm_state12;
reg   [1:0] i0_0_i_reg_216;
reg   [1:0] i1_0_i_reg_227;
reg   [5:0] i2_0_i_reg_238;
wire    ap_CS_fsm_state19;
reg   [1:0] i11_0_i_reg_249;
reg   [5:0] i22_0_i_reg_260;
wire    ap_CS_fsm_state24;
wire   [63:0] zext_ln179_fu_289_p1;
wire   [63:0] tmp_fu_306_p3;
wire   [63:0] zext_ln182_2_fu_367_p1;
wire   [63:0] zext_ln187_5_fu_374_p1;
wire   [63:0] zext_ln203_13_fu_389_p1;
wire   [63:0] zext_ln203_21_fu_504_p1;
wire   [63:0] zext_ln203_18_fu_508_p1;
wire   [63:0] zext_ln203_15_fu_512_p1;
wire   [63:0] zext_ln126_2_fu_639_p1;
wire   [63:0] zext_ln126_fu_647_p1;
wire   [63:0] zext_ln203_23_fu_732_p1;
wire   [63:0] zext_ln134_fu_736_p1;
wire   [1:0] xor_ln182_fu_321_p2;
wire   [6:0] tmp_14_fu_327_p3;
wire   [7:0] zext_ln182_fu_335_p1;
wire   [7:0] zext_ln187_4_fu_358_p1;
wire   [11:0] zext_ln187_3_fu_371_p1;
wire   [11:0] add_ln203_fu_378_p2;
wire   [11:0] add_ln203_7_fu_384_p2;
wire   [5:0] tmp_18_fu_409_p3;
wire   [6:0] zext_ln203_16_fu_417_p1;
wire   [5:0] tmp_21_fu_426_p3;
wire   [6:0] zext_ln203_19_fu_434_p1;
wire   [1:0] sub_ln195_fu_443_p2;
wire   [6:0] tmp_17_fu_449_p3;
wire   [7:0] zext_ln203_14_fu_457_p1;
wire   [11:0] tmp_192_fu_472_p3;
wire   [12:0] zext_ln203_17_fu_479_p1;
wire   [11:0] tmp_193_fu_488_p3;
wire   [12:0] zext_ln203_20_fu_495_p1;
wire   [0:0] trunc_ln126_fu_528_p1;
wire   [5:0] shl_ln_fu_532_p3;
wire   [8:0] shl_ln126_3_fu_562_p3;
wire   [6:0] shl_ln126_4_fu_574_p3;
wire   [9:0] zext_ln126_8_fu_570_p1;
wire   [9:0] zext_ln126_9_fu_582_p1;
wire   [6:0] zext_ln125_fu_592_p1;
wire   [6:0] add_ln126_6_fu_608_p2;
wire   [9:0] zext_ln126_10_fu_613_p1;
wire   [6:0] add_ln126_7_fu_622_p2;
wire   [9:0] zext_ln126_11_fu_627_p1;
wire  signed [31:0] sext_ln126_2_fu_636_p1;
wire  signed [31:0] sext_ln126_fu_644_p1;
wire   [6:0] shl_ln134_2_fu_672_p3;
wire   [8:0] shl_ln2_fu_664_p3;
wire   [8:0] zext_ln134_3_fu_680_p1;
wire   [6:0] or_ln_fu_706_p3;
wire   [8:0] zext_ln134_4_fu_714_p1;
wire   [7:0] zext_ln203_22_fu_723_p1;
reg   [23:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 24'd1;
end

cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s_linebuffefYi #(
    .DataWidth( 16 ),
    .AddressRange( 2048 ),
    .AddressWidth( 11 ))
linebuffer_V_4_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(linebuffer_V_4_address0),
    .ce0(linebuffer_V_4_ce0),
    .we0(linebuffer_V_4_we0),
    .d0(linebuffer_V_4_d0),
    .q0(linebuffer_V_4_q0)
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
    if (((icmp_ln177_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        i0_0_i_reg_216 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln124_fu_550_p2 == 1'd1))) begin
        i0_0_i_reg_216 <= i0_2_reg_876;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln180_fu_315_p2 == 1'd1))) begin
        i0_0_reg_181 <= i0_reg_743;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i0_0_reg_181 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln122_fu_516_p2 == 1'd1))) begin
        i11_0_i_reg_249 <= 2'd0;
    end else if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln133_fu_694_p2 == 1'd1))) begin
        i11_0_i_reg_249 <= i1_3_reg_936;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln125_fu_596_p2 == 1'd1))) begin
        i1_0_i_reg_227 <= i1_4_reg_894;
    end else if (((icmp_ln122_fu_516_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        i1_0_i_reg_227 <= 2'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        i1_0_reg_193 <= i1_reg_848;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        i1_0_reg_193 <= 2'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_652_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        i22_0_i_reg_260 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state24)) begin
        i22_0_i_reg_260 <= i2_3_reg_954;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_550_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        i2_0_i_reg_238 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        i2_0_i_reg_238 <= i2_4_reg_908;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        i2_0_reg_205 <= i2_reg_828;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        i2_0_reg_205 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln125_fu_596_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state16))) begin
        add_ln126_5_reg_913 <= add_ln126_5_fu_617_p2;
        add_ln126_8_reg_918 <= add_ln126_8_fu_631_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln122_fu_516_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state14))) begin
        add_ln126_reg_886[6 : 5] <= add_ln126_fu_544_p2[6 : 5];
        zext_ln126_7_reg_881[5] <= zext_ln126_7_fu_540_p1[5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_694_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state21))) begin
        add_ln134_reg_959 <= add_ln134_fu_718_p2;
        add_ln203_13_reg_964 <= add_ln203_13_fu_727_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln180_fu_315_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state5))) begin
        add_ln182_reg_779 <= add_ln182_fu_339_p2;
        add_ln187_2_reg_794 <= add_ln187_2_fu_362_p2;
        add_ln187_reg_784 <= add_ln187_fu_344_p2;
        tmp_15_reg_789[6 : 5] <= tmp_15_fu_350_p3[6 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        add_ln203_10_reg_853 <= add_ln203_10_fu_483_p2;
        add_ln203_12_reg_858 <= add_ln203_12_fu_499_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln189_fu_397_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state8))) begin
        add_ln203_11_reg_838 <= add_ln203_11_fu_438_p2;
        add_ln203_9_reg_833 <= add_ln203_9_fu_421_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_397_p2 == 1'd1))) begin
        add_ln203_8_reg_843 <= add_ln203_8_fu_461_p2;
        i1_reg_848 <= i1_fu_466_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        data_V_load_reg_753 <= data_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        i0_2_reg_876 <= i0_2_fu_522_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i0_reg_743 <= i0_fu_283_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        i1_3_reg_936 <= i1_3_fu_658_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state15)) begin
        i1_4_reg_894 <= i1_4_fu_556_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state21)) begin
        i2_3_reg_954 <= i2_3_fu_700_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        i2_4_reg_908 <= i2_4_fu_602_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i2_reg_828 <= i2_fu_403_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        linebuffer_V_4_addr_1_reg_809 <= zext_ln203_13_fu_389_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        linebuffer_V_4_load_reg_868 <= linebuffer_V_4_q0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        output_V_load_reg_928 <= output_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state23) | (1'b1 == ap_CS_fsm_state7))) begin
        reg_271 <= tmpinput_V_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_550_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state15))) begin
        sub_ln126_reg_899[9 : 5] <= sub_ln126_fu_586_p2[9 : 5];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln131_fu_652_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state20))) begin
        sub_ln134_reg_941[8 : 5] <= sub_ln134_fu_684_p2[8 : 5];
        zext_ln133_reg_946[6 : 5] <= zext_ln133_fu_690_p1[6 : 5];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tmp_V_reg_820 <= linebuffer_V_4_q0;
        zext_ln187_reg_814[1 : 0] <= zext_ln187_fu_394_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        zext_ln203_11_reg_764[5 : 0] <= zext_ln203_11_fu_298_p1[5 : 0];
        zext_ln203_12_reg_769[5 : 0] <= zext_ln203_12_fu_302_p1[5 : 0];
        zext_ln203_reg_758[5 : 0] <= zext_ln203_fu_294_p1[5 : 0];
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_652_p2 == 1'd1)))) begin
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
    if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_652_p2 == 1'd1))) begin
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
        linebuffer_V_4_address0 = zext_ln203_18_fu_508_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        linebuffer_V_4_address0 = zext_ln203_21_fu_504_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuffer_V_4_address0 = linebuffer_V_4_addr_1_reg_809;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        linebuffer_V_4_address0 = zext_ln187_5_fu_374_p1;
    end else begin
        linebuffer_V_4_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8) | (1'b1 == ap_CS_fsm_state6))) begin
        linebuffer_V_4_ce0 = 1'b1;
    end else begin
        linebuffer_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        linebuffer_V_4_d0 = linebuffer_V_4_load_reg_868;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        linebuffer_V_4_d0 = reg_271;
    end else begin
        linebuffer_V_4_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_397_p2 == 1'd1)))) begin
        linebuffer_V_4_we0 = 1'b1;
    end else begin
        linebuffer_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state24)) begin
        output_V_address0 = zext_ln134_fu_736_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_V_address0 = zext_ln126_fu_647_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        output_V_address0 = zext_ln126_2_fu_639_p1;
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
        output_V_d0 = reg_271;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        output_V_d0 = output_V_load_reg_928;
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
        tmpinput_V_address0 = zext_ln203_23_fu_732_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        tmpinput_V_address0 = zext_ln203_15_fu_512_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        tmpinput_V_address0 = zext_ln182_2_fu_367_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_address0 = tmp_fu_306_p3;
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
        tmpinput_V_d0 = tmp_V_reg_820;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        tmpinput_V_d0 = data_V_load_reg_753;
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
            if (((icmp_ln177_fu_277_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
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
            if (((1'b1 == ap_CS_fsm_state5) & (icmp_ln180_fu_315_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln189_fu_397_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln122_fu_516_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln124_fu_550_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state16 : begin
            if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln125_fu_596_p2 == 1'd1))) begin
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
            if (((1'b1 == ap_CS_fsm_state20) & (icmp_ln131_fu_652_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end
        end
        ap_ST_fsm_state21 : begin
            if (((1'b1 == ap_CS_fsm_state21) & (icmp_ln133_fu_694_p2 == 1'd1))) begin
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

assign add_ln126_5_fu_617_p2 = (zext_ln126_10_fu_613_p1 + sub_ln126_reg_899);

assign add_ln126_6_fu_608_p2 = (zext_ln126_7_reg_881 + zext_ln125_fu_592_p1);

assign add_ln126_7_fu_622_p2 = (add_ln126_reg_886 + zext_ln125_fu_592_p1);

assign add_ln126_8_fu_631_p2 = (zext_ln126_11_fu_627_p1 + sub_ln126_reg_899);

assign add_ln126_fu_544_p2 = (7'd32 + zext_ln126_7_fu_540_p1);

assign add_ln134_fu_718_p2 = (sub_ln134_reg_941 + zext_ln134_4_fu_714_p1);

assign add_ln182_fu_339_p2 = (zext_ln203_12_reg_769 + zext_ln182_fu_335_p1);

assign add_ln187_2_fu_362_p2 = (zext_ln203_12_reg_769 + zext_ln187_4_fu_358_p1);

assign add_ln187_fu_344_p2 = ($signed(i1_0_reg_193) + $signed(2'd3));

assign add_ln203_10_fu_483_p2 = (zext_ln203_17_fu_479_p1 + zext_ln203_reg_758);

assign add_ln203_11_fu_438_p2 = (zext_ln203_19_fu_434_p1 + zext_ln187_reg_814);

assign add_ln203_12_fu_499_p2 = (zext_ln203_20_fu_495_p1 + zext_ln203_reg_758);

assign add_ln203_13_fu_727_p2 = (zext_ln133_reg_946 + zext_ln203_22_fu_723_p1);

assign add_ln203_7_fu_384_p2 = (zext_ln203_11_reg_764 + add_ln203_fu_378_p2);

assign add_ln203_8_fu_461_p2 = (zext_ln203_12_reg_769 + zext_ln203_14_fu_457_p1);

assign add_ln203_9_fu_421_p2 = (zext_ln203_16_fu_417_p1 + zext_ln187_reg_814);

assign add_ln203_fu_378_p2 = (zext_ln187_3_fu_371_p1 + 12'd1984);

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

assign data_V_address0 = zext_ln179_fu_289_p1;

assign i0_2_fu_522_p2 = (i0_0_i_reg_216 + 2'd1);

assign i0_fu_283_p2 = (i0_0_reg_181 + 6'd1);

assign i1_3_fu_658_p2 = (i11_0_i_reg_249 + 2'd1);

assign i1_4_fu_556_p2 = (i1_0_i_reg_227 + 2'd1);

assign i1_fu_466_p2 = (i1_0_reg_193 + 2'd1);

assign i2_3_fu_700_p2 = (i22_0_i_reg_260 + 6'd1);

assign i2_4_fu_602_p2 = (i2_0_i_reg_238 + 6'd1);

assign i2_fu_403_p2 = (i2_0_reg_205 + 5'd1);

assign icmp_ln122_fu_516_p2 = ((i0_0_i_reg_216 == 2'd2) ? 1'b1 : 1'b0);

assign icmp_ln124_fu_550_p2 = ((i1_0_i_reg_227 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_596_p2 = ((i2_0_i_reg_238 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln131_fu_652_p2 = ((i11_0_i_reg_249 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_694_p2 = ((i22_0_i_reg_260 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln177_fu_277_p2 = ((i0_0_reg_181 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln180_fu_315_p2 = ((i1_0_reg_193 == 2'd3) ? 1'b1 : 1'b0);

assign icmp_ln189_fu_397_p2 = ((i2_0_reg_205 == 5'd31) ? 1'b1 : 1'b0);

assign or_ln_fu_706_p3 = {{1'd1}, {i22_0_i_reg_260}};

assign sext_ln126_2_fu_636_p1 = $signed(add_ln126_8_reg_918);

assign sext_ln126_fu_644_p1 = $signed(add_ln126_5_reg_913);

assign shl_ln126_3_fu_562_p3 = {{i1_0_i_reg_227}, {7'd0}};

assign shl_ln126_4_fu_574_p3 = {{i1_0_i_reg_227}, {5'd0}};

assign shl_ln134_2_fu_672_p3 = {{i11_0_i_reg_249}, {5'd0}};

assign shl_ln2_fu_664_p3 = {{i11_0_i_reg_249}, {7'd0}};

assign shl_ln_fu_532_p3 = {{trunc_ln126_fu_528_p1}, {5'd0}};

assign sub_ln126_fu_586_p2 = (zext_ln126_8_fu_570_p1 - zext_ln126_9_fu_582_p1);

assign sub_ln134_fu_684_p2 = (shl_ln2_fu_664_p3 - zext_ln134_3_fu_680_p1);

assign sub_ln195_fu_443_p2 = ($signed(2'd2) - $signed(i1_0_reg_193));

assign tmp_14_fu_327_p3 = {{xor_ln182_fu_321_p2}, {5'd0}};

assign tmp_15_fu_350_p3 = {{add_ln187_fu_344_p2}, {5'd0}};

assign tmp_17_fu_449_p3 = {{sub_ln195_fu_443_p2}, {5'd0}};

assign tmp_18_fu_409_p3 = {{i2_0_reg_205}, {1'd0}};

assign tmp_192_fu_472_p3 = {{add_ln203_9_reg_833}, {5'd0}};

assign tmp_193_fu_488_p3 = {{add_ln203_11_reg_838}, {5'd0}};

assign tmp_21_fu_426_p3 = {{i2_fu_403_p2}, {1'd0}};

assign tmp_fu_306_p3 = {{58'd1}, {i0_0_reg_181}};

assign trunc_ln126_fu_528_p1 = i0_0_i_reg_216[0:0];

assign xor_ln182_fu_321_p2 = (i1_0_reg_193 ^ 2'd3);

assign zext_ln125_fu_592_p1 = i2_0_i_reg_238;

assign zext_ln126_10_fu_613_p1 = add_ln126_6_fu_608_p2;

assign zext_ln126_11_fu_627_p1 = add_ln126_7_fu_622_p2;

assign zext_ln126_2_fu_639_p1 = $unsigned(sext_ln126_2_fu_636_p1);

assign zext_ln126_7_fu_540_p1 = shl_ln_fu_532_p3;

assign zext_ln126_8_fu_570_p1 = shl_ln126_3_fu_562_p3;

assign zext_ln126_9_fu_582_p1 = shl_ln126_4_fu_574_p3;

assign zext_ln126_fu_647_p1 = $unsigned(sext_ln126_fu_644_p1);

assign zext_ln133_fu_690_p1 = shl_ln134_2_fu_672_p3;

assign zext_ln134_3_fu_680_p1 = shl_ln134_2_fu_672_p3;

assign zext_ln134_4_fu_714_p1 = or_ln_fu_706_p3;

assign zext_ln134_fu_736_p1 = add_ln134_reg_959;

assign zext_ln179_fu_289_p1 = i0_0_reg_181;

assign zext_ln182_2_fu_367_p1 = add_ln182_reg_779;

assign zext_ln182_fu_335_p1 = tmp_14_fu_327_p3;

assign zext_ln187_3_fu_371_p1 = tmp_15_reg_789;

assign zext_ln187_4_fu_358_p1 = tmp_15_fu_350_p3;

assign zext_ln187_5_fu_374_p1 = add_ln187_2_reg_794;

assign zext_ln187_fu_394_p1 = add_ln187_reg_784;

assign zext_ln203_11_fu_298_p1 = i0_0_reg_181;

assign zext_ln203_12_fu_302_p1 = i0_0_reg_181;

assign zext_ln203_13_fu_389_p1 = add_ln203_7_fu_384_p2;

assign zext_ln203_14_fu_457_p1 = tmp_17_fu_449_p3;

assign zext_ln203_15_fu_512_p1 = add_ln203_8_reg_843;

assign zext_ln203_16_fu_417_p1 = tmp_18_fu_409_p3;

assign zext_ln203_17_fu_479_p1 = tmp_192_fu_472_p3;

assign zext_ln203_18_fu_508_p1 = add_ln203_10_reg_853;

assign zext_ln203_19_fu_434_p1 = tmp_21_fu_426_p3;

assign zext_ln203_20_fu_495_p1 = tmp_193_fu_488_p3;

assign zext_ln203_21_fu_504_p1 = add_ln203_12_reg_858;

assign zext_ln203_22_fu_723_p1 = i22_0_i_reg_260;

assign zext_ln203_23_fu_732_p1 = add_ln203_13_reg_964;

assign zext_ln203_fu_294_p1 = i0_0_reg_181;

always @ (posedge ap_clk) begin
    zext_ln203_reg_758[12:6] <= 7'b0000000;
    zext_ln203_11_reg_764[11:6] <= 6'b000000;
    zext_ln203_12_reg_769[7:6] <= 2'b00;
    tmp_15_reg_789[4:0] <= 5'b00000;
    zext_ln187_reg_814[6:2] <= 5'b00000;
    zext_ln126_7_reg_881[4:0] <= 5'b00000;
    zext_ln126_7_reg_881[6] <= 1'b0;
    add_ln126_reg_886[4:0] <= 5'b00000;
    sub_ln126_reg_899[4:0] <= 5'b00000;
    sub_ln134_reg_941[4:0] <= 5'b00000;
    zext_ln133_reg_946[4:0] <= 5'b00000;
    zext_ln133_reg_946[7] <= 1'b0;
end

endmodule //cnnshift_arr_buffer_ap_fixed_ap_fixed_config5_s