// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_HH_
#define _cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_linebuffXh4.h"
#include "cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_tmpinput_V.h"

namespace ap_rtl {

struct cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > data_V_address0;
    sc_out< sc_logic > data_V_ce0;
    sc_in< sc_lv<16> > data_V_q0;
    sc_out< sc_lv<10> > output_V_address0;
    sc_out< sc_logic > output_V_ce0;
    sc_out< sc_logic > output_V_we0;
    sc_out< sc_lv<16> > output_V_d0;
    sc_in< sc_lv<16> > output_V_q0;


    // Module declarations
    cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s(sc_module_name name);
    SC_HAS_PROCESS(cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s);

    ~cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s();

    sc_trace_file* mVcdFile;

    cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_linebuffXh4* linebuffer_V_U;
    cnnshift_arr_buffer_ap_fixed_ap_fixed_config12_s_tmpinput_V* tmpinput_V_U;
    sc_signal< sc_lv<24> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<11> > linebuffer_V_address0;
    sc_signal< sc_logic > linebuffer_V_ce0;
    sc_signal< sc_logic > linebuffer_V_we0;
    sc_signal< sc_lv<16> > linebuffer_V_d0;
    sc_signal< sc_lv<16> > linebuffer_V_q0;
    sc_signal< sc_lv<16> > tmpinput_V_q0;
    sc_signal< sc_lv<16> > reg_275;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<7> > i0_fu_287_p2;
    sc_signal< sc_lv<7> > i0_reg_735;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln177_fu_281_p2;
    sc_signal< sc_lv<16> > data_V_load_reg_745;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<12> > zext_ln203_fu_298_p1;
    sc_signal< sc_lv<12> > zext_ln203_reg_750;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<9> > zext_ln203_41_fu_302_p1;
    sc_signal< sc_lv<9> > zext_ln203_41_reg_757;
    sc_signal< sc_lv<9> > add_ln182_fu_339_p2;
    sc_signal< sc_lv<9> > add_ln182_reg_767;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln180_fu_315_p2;
    sc_signal< sc_lv<2> > add_ln187_fu_344_p2;
    sc_signal< sc_lv<2> > add_ln187_reg_772;
    sc_signal< sc_lv<9> > add_ln187_4_fu_362_p2;
    sc_signal< sc_lv<9> > add_ln187_4_reg_778;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > zext_ln187_fu_375_p1;
    sc_signal< sc_lv<6> > zext_ln187_reg_793;
    sc_signal< sc_lv<11> > linebuffer_V_addr_1_reg_799;
    sc_signal< sc_lv<16> > tmp_V_reg_804;
    sc_signal< sc_lv<4> > i2_fu_403_p2;
    sc_signal< sc_lv<4> > i2_reg_812;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<6> > add_ln203_23_fu_421_p2;
    sc_signal< sc_lv<6> > add_ln203_23_reg_817;
    sc_signal< sc_lv<1> > icmp_ln189_fu_397_p2;
    sc_signal< sc_lv<6> > add_ln203_25_fu_438_p2;
    sc_signal< sc_lv<6> > add_ln203_25_reg_822;
    sc_signal< sc_lv<9> > add_ln203_22_fu_461_p2;
    sc_signal< sc_lv<9> > add_ln203_22_reg_827;
    sc_signal< sc_lv<2> > i1_fu_466_p2;
    sc_signal< sc_lv<2> > i1_reg_832;
    sc_signal< sc_lv<12> > add_ln203_24_fu_479_p2;
    sc_signal< sc_lv<12> > add_ln203_24_reg_837;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<12> > add_ln203_26_fu_491_p2;
    sc_signal< sc_lv<12> > add_ln203_26_reg_842;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<16> > linebuffer_V_load_reg_852;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<2> > i0_4_fu_514_p2;
    sc_signal< sc_lv<2> > i0_4_reg_860;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<8> > zext_ln126_15_fu_532_p1;
    sc_signal< sc_lv<8> > zext_ln126_15_reg_865;
    sc_signal< sc_lv<1> > icmp_ln122_fu_508_p2;
    sc_signal< sc_lv<8> > add_ln126_fu_536_p2;
    sc_signal< sc_lv<8> > add_ln126_reg_870;
    sc_signal< sc_lv<2> > i1_8_fu_548_p2;
    sc_signal< sc_lv<2> > i1_8_reg_878;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_lv<11> > sub_ln126_fu_578_p2;
    sc_signal< sc_lv<11> > sub_ln126_reg_883;
    sc_signal< sc_lv<1> > icmp_ln124_fu_542_p2;
    sc_signal< sc_lv<7> > i2_8_fu_594_p2;
    sc_signal< sc_lv<7> > i2_8_reg_892;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<11> > add_ln126_13_fu_609_p2;
    sc_signal< sc_lv<11> > add_ln126_13_reg_897;
    sc_signal< sc_lv<1> > icmp_ln125_fu_588_p2;
    sc_signal< sc_lv<11> > add_ln126_16_fu_623_p2;
    sc_signal< sc_lv<11> > add_ln126_16_reg_902;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<16> > output_V_load_reg_912;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<2> > i1_7_fu_650_p2;
    sc_signal< sc_lv<2> > i1_7_reg_920;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<10> > sub_ln134_fu_676_p2;
    sc_signal< sc_lv<10> > sub_ln134_reg_925;
    sc_signal< sc_lv<1> > icmp_ln131_fu_644_p2;
    sc_signal< sc_lv<9> > zext_ln133_fu_682_p1;
    sc_signal< sc_lv<9> > zext_ln133_reg_930;
    sc_signal< sc_lv<7> > i2_7_fu_692_p2;
    sc_signal< sc_lv<7> > i2_7_reg_938;
    sc_signal< sc_logic > ap_CS_fsm_state21;
    sc_signal< sc_lv<10> > add_ln134_fu_710_p2;
    sc_signal< sc_lv<10> > add_ln134_reg_943;
    sc_signal< sc_lv<1> > icmp_ln133_fu_686_p2;
    sc_signal< sc_lv<9> > add_ln203_27_fu_719_p2;
    sc_signal< sc_lv<9> > add_ln203_27_reg_948;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<8> > tmpinput_V_address0;
    sc_signal< sc_logic > tmpinput_V_ce0;
    sc_signal< sc_logic > tmpinput_V_we0;
    sc_signal< sc_lv<16> > tmpinput_V_d0;
    sc_signal< sc_lv<7> > i0_0_reg_185;
    sc_signal< sc_lv<2> > i1_0_reg_197;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<4> > i2_0_reg_209;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<2> > i0_0_i_reg_220;
    sc_signal< sc_lv<2> > i1_0_i_reg_231;
    sc_signal< sc_lv<7> > i2_0_i_reg_242;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_lv<2> > i11_0_i_reg_253;
    sc_signal< sc_lv<7> > i22_0_i_reg_264;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<64> > zext_ln179_fu_293_p1;
    sc_signal< sc_lv<64> > tmp_fu_306_p3;
    sc_signal< sc_lv<64> > zext_ln182_4_fu_367_p1;
    sc_signal< sc_lv<64> > zext_ln187_9_fu_371_p1;
    sc_signal< sc_lv<64> > zext_ln203_42_fu_392_p1;
    sc_signal< sc_lv<64> > zext_ln203_48_fu_496_p1;
    sc_signal< sc_lv<64> > zext_ln203_46_fu_500_p1;
    sc_signal< sc_lv<64> > zext_ln203_44_fu_504_p1;
    sc_signal< sc_lv<64> > zext_ln126_4_fu_631_p1;
    sc_signal< sc_lv<64> > zext_ln126_fu_639_p1;
    sc_signal< sc_lv<64> > zext_ln203_50_fu_724_p1;
    sc_signal< sc_lv<64> > zext_ln134_fu_728_p1;
    sc_signal< sc_lv<2> > xor_ln182_fu_321_p2;
    sc_signal< sc_lv<8> > tmp_33_fu_327_p3;
    sc_signal< sc_lv<9> > zext_ln182_fu_335_p1;
    sc_signal< sc_lv<8> > tmp_34_fu_350_p3;
    sc_signal< sc_lv<9> > zext_ln187_8_fu_358_p1;
    sc_signal< sc_lv<12> > tmp_35_cast_fu_378_p4;
    sc_signal< sc_lv<12> > add_ln203_fu_387_p2;
    sc_signal< sc_lv<5> > tmp_38_fu_409_p3;
    sc_signal< sc_lv<6> > zext_ln203_45_fu_417_p1;
    sc_signal< sc_lv<5> > tmp_41_fu_426_p3;
    sc_signal< sc_lv<6> > zext_ln203_47_fu_434_p1;
    sc_signal< sc_lv<2> > sub_ln195_fu_443_p2;
    sc_signal< sc_lv<8> > tmp_37_fu_449_p3;
    sc_signal< sc_lv<9> > zext_ln203_43_fu_457_p1;
    sc_signal< sc_lv<12> > tmp_40_cast_fu_472_p3;
    sc_signal< sc_lv<12> > tmp_43_cast_fu_484_p3;
    sc_signal< sc_lv<1> > trunc_ln126_fu_520_p1;
    sc_signal< sc_lv<7> > shl_ln_fu_524_p3;
    sc_signal< sc_lv<10> > shl_ln126_5_fu_554_p3;
    sc_signal< sc_lv<8> > shl_ln126_6_fu_566_p3;
    sc_signal< sc_lv<11> > zext_ln126_16_fu_562_p1;
    sc_signal< sc_lv<11> > zext_ln126_17_fu_574_p1;
    sc_signal< sc_lv<8> > zext_ln125_fu_584_p1;
    sc_signal< sc_lv<8> > add_ln126_14_fu_600_p2;
    sc_signal< sc_lv<11> > zext_ln126_18_fu_605_p1;
    sc_signal< sc_lv<8> > add_ln126_15_fu_614_p2;
    sc_signal< sc_lv<11> > zext_ln126_19_fu_619_p1;
    sc_signal< sc_lv<32> > sext_ln126_4_fu_628_p1;
    sc_signal< sc_lv<32> > sext_ln126_fu_636_p1;
    sc_signal< sc_lv<8> > shl_ln134_3_fu_664_p3;
    sc_signal< sc_lv<10> > shl_ln3_fu_656_p3;
    sc_signal< sc_lv<10> > zext_ln134_6_fu_672_p1;
    sc_signal< sc_lv<8> > or_ln_fu_698_p3;
    sc_signal< sc_lv<10> > zext_ln134_7_fu_706_p1;
    sc_signal< sc_lv<9> > zext_ln203_49_fu_715_p1;
    sc_signal< sc_lv<24> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<24> ap_ST_fsm_state1;
    static const sc_lv<24> ap_ST_fsm_state2;
    static const sc_lv<24> ap_ST_fsm_state3;
    static const sc_lv<24> ap_ST_fsm_state4;
    static const sc_lv<24> ap_ST_fsm_state5;
    static const sc_lv<24> ap_ST_fsm_state6;
    static const sc_lv<24> ap_ST_fsm_state7;
    static const sc_lv<24> ap_ST_fsm_state8;
    static const sc_lv<24> ap_ST_fsm_state9;
    static const sc_lv<24> ap_ST_fsm_state10;
    static const sc_lv<24> ap_ST_fsm_state11;
    static const sc_lv<24> ap_ST_fsm_state12;
    static const sc_lv<24> ap_ST_fsm_state13;
    static const sc_lv<24> ap_ST_fsm_state14;
    static const sc_lv<24> ap_ST_fsm_state15;
    static const sc_lv<24> ap_ST_fsm_state16;
    static const sc_lv<24> ap_ST_fsm_state17;
    static const sc_lv<24> ap_ST_fsm_state18;
    static const sc_lv<24> ap_ST_fsm_state19;
    static const sc_lv<24> ap_ST_fsm_state20;
    static const sc_lv<24> ap_ST_fsm_state21;
    static const sc_lv<24> ap_ST_fsm_state22;
    static const sc_lv<24> ap_ST_fsm_state23;
    static const sc_lv<24> ap_ST_fsm_state24;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_16;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<7> ap_const_lv7_0;
    static const sc_lv<2> ap_const_lv2_1;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<7> ap_const_lv7_1;
    static const sc_lv<57> ap_const_lv57_1;
    static const sc_lv<2> ap_const_lv2_3;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<4> ap_const_lv4_E;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<2> ap_const_lv2_2;
    static const sc_lv<8> ap_const_lv8_40;
    static const sc_lv<8> ap_const_lv8_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln126_13_fu_609_p2();
    void thread_add_ln126_14_fu_600_p2();
    void thread_add_ln126_15_fu_614_p2();
    void thread_add_ln126_16_fu_623_p2();
    void thread_add_ln126_fu_536_p2();
    void thread_add_ln134_fu_710_p2();
    void thread_add_ln182_fu_339_p2();
    void thread_add_ln187_4_fu_362_p2();
    void thread_add_ln187_fu_344_p2();
    void thread_add_ln203_22_fu_461_p2();
    void thread_add_ln203_23_fu_421_p2();
    void thread_add_ln203_24_fu_479_p2();
    void thread_add_ln203_25_fu_438_p2();
    void thread_add_ln203_26_fu_491_p2();
    void thread_add_ln203_27_fu_719_p2();
    void thread_add_ln203_fu_387_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state21();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_V_address0();
    void thread_data_V_ce0();
    void thread_i0_4_fu_514_p2();
    void thread_i0_fu_287_p2();
    void thread_i1_7_fu_650_p2();
    void thread_i1_8_fu_548_p2();
    void thread_i1_fu_466_p2();
    void thread_i2_7_fu_692_p2();
    void thread_i2_8_fu_594_p2();
    void thread_i2_fu_403_p2();
    void thread_icmp_ln122_fu_508_p2();
    void thread_icmp_ln124_fu_542_p2();
    void thread_icmp_ln125_fu_588_p2();
    void thread_icmp_ln131_fu_644_p2();
    void thread_icmp_ln133_fu_686_p2();
    void thread_icmp_ln177_fu_281_p2();
    void thread_icmp_ln180_fu_315_p2();
    void thread_icmp_ln189_fu_397_p2();
    void thread_linebuffer_V_address0();
    void thread_linebuffer_V_ce0();
    void thread_linebuffer_V_d0();
    void thread_linebuffer_V_we0();
    void thread_or_ln_fu_698_p3();
    void thread_output_V_address0();
    void thread_output_V_ce0();
    void thread_output_V_d0();
    void thread_output_V_we0();
    void thread_sext_ln126_4_fu_628_p1();
    void thread_sext_ln126_fu_636_p1();
    void thread_shl_ln126_5_fu_554_p3();
    void thread_shl_ln126_6_fu_566_p3();
    void thread_shl_ln134_3_fu_664_p3();
    void thread_shl_ln3_fu_656_p3();
    void thread_shl_ln_fu_524_p3();
    void thread_sub_ln126_fu_578_p2();
    void thread_sub_ln134_fu_676_p2();
    void thread_sub_ln195_fu_443_p2();
    void thread_tmp_33_fu_327_p3();
    void thread_tmp_34_fu_350_p3();
    void thread_tmp_35_cast_fu_378_p4();
    void thread_tmp_37_fu_449_p3();
    void thread_tmp_38_fu_409_p3();
    void thread_tmp_40_cast_fu_472_p3();
    void thread_tmp_41_fu_426_p3();
    void thread_tmp_43_cast_fu_484_p3();
    void thread_tmp_fu_306_p3();
    void thread_tmpinput_V_address0();
    void thread_tmpinput_V_ce0();
    void thread_tmpinput_V_d0();
    void thread_tmpinput_V_we0();
    void thread_trunc_ln126_fu_520_p1();
    void thread_xor_ln182_fu_321_p2();
    void thread_zext_ln125_fu_584_p1();
    void thread_zext_ln126_15_fu_532_p1();
    void thread_zext_ln126_16_fu_562_p1();
    void thread_zext_ln126_17_fu_574_p1();
    void thread_zext_ln126_18_fu_605_p1();
    void thread_zext_ln126_19_fu_619_p1();
    void thread_zext_ln126_4_fu_631_p1();
    void thread_zext_ln126_fu_639_p1();
    void thread_zext_ln133_fu_682_p1();
    void thread_zext_ln134_6_fu_672_p1();
    void thread_zext_ln134_7_fu_706_p1();
    void thread_zext_ln134_fu_728_p1();
    void thread_zext_ln179_fu_293_p1();
    void thread_zext_ln182_4_fu_367_p1();
    void thread_zext_ln182_fu_335_p1();
    void thread_zext_ln187_8_fu_358_p1();
    void thread_zext_ln187_9_fu_371_p1();
    void thread_zext_ln187_fu_375_p1();
    void thread_zext_ln203_41_fu_302_p1();
    void thread_zext_ln203_42_fu_392_p1();
    void thread_zext_ln203_43_fu_457_p1();
    void thread_zext_ln203_44_fu_504_p1();
    void thread_zext_ln203_45_fu_417_p1();
    void thread_zext_ln203_46_fu_500_p1();
    void thread_zext_ln203_47_fu_434_p1();
    void thread_zext_ln203_48_fu_496_p1();
    void thread_zext_ln203_49_fu_715_p1();
    void thread_zext_ln203_50_fu_724_p1();
    void thread_zext_ln203_fu_298_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif