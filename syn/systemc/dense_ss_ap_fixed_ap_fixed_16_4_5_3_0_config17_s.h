// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s_HH_
#define _dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "myproject_axi_mul_5s_16s_21_2_1.h"
#include "myproject_axi_mul_mul_6s_16s_21_3_1.h"
#include "dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s_w17_V.h"

namespace ap_rtl {

struct dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_in< sc_lv<16> > data_V_V_dout;
    sc_in< sc_logic > data_V_V_empty_n;
    sc_out< sc_logic > data_V_V_read;
    sc_out< sc_lv<16> > res_V_V_din;
    sc_in< sc_logic > res_V_V_full_n;
    sc_out< sc_logic > res_V_V_write;


    // Module declarations
    dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s(sc_module_name name);
    SC_HAS_PROCESS(dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s);

    ~dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s();

    sc_trace_file* mVcdFile;

    dense_ss_ap_fixed_ap_fixed_16_4_5_3_0_config17_s_w17_V* w17_V_U;
    myproject_axi_mul_5s_16s_21_2_1<1,2,5,16,21>* myproject_axi_mul_5s_16s_21_2_1_U258;
    myproject_axi_mul_mul_6s_16s_21_3_1<1,3,6,16,21>* myproject_axi_mul_mul_6s_16s_21_3_1_U259;
    myproject_axi_mul_mul_6s_16s_21_3_1<1,3,6,16,21>* myproject_axi_mul_mul_6s_16s_21_3_1_U260;
    myproject_axi_mul_mul_6s_16s_21_3_1<1,3,6,16,21>* myproject_axi_mul_mul_6s_16s_21_3_1_U261;
    myproject_axi_mul_mul_6s_16s_21_3_1<1,3,6,16,21>* myproject_axi_mul_mul_6s_16s_21_3_1_U262;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_lv<12> > w17_V_address0;
    sc_signal< sc_logic > w17_V_ce0;
    sc_signal< sc_lv<29> > w17_V_q0;
    sc_signal< sc_logic > data_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > icmp_ln442_reg_366;
    sc_signal< sc_logic > res_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<16> > tmp_V_16_reg_106;
    sc_signal< sc_lv<16> > tmp_V_15_reg_119;
    sc_signal< sc_lv<16> > tmp_V_14_reg_132;
    sc_signal< sc_lv<16> > tmp_V_13_reg_145;
    sc_signal< sc_lv<16> > tmp_V_reg_158;
    sc_signal< sc_lv<12> > i_in_0_reg_171;
    sc_signal< sc_lv<1> > icmp_ln442_fu_182_p2;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter3;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter4;
    sc_signal< bool > ap_block_state7_pp0_stage0_iter5;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln442_reg_366_pp0_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln442_reg_366_pp0_iter2_reg;
    sc_signal< sc_lv<1> > icmp_ln442_reg_366_pp0_iter3_reg;
    sc_signal< sc_lv<1> > icmp_ln442_reg_366_pp0_iter4_reg;
    sc_signal< sc_lv<12> > i_in_fu_188_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<16> > tmp_V_17_reg_380;
    sc_signal< sc_lv<6> > trunc_ln450_fu_199_p1;
    sc_signal< sc_lv<6> > trunc_ln450_reg_385;
    sc_signal< sc_lv<6> > tmp_5_reg_390;
    sc_signal< sc_lv<6> > tmp_6_reg_395;
    sc_signal< sc_lv<6> > tmp_7_reg_400;
    sc_signal< sc_lv<5> > tmp_1_reg_405;
    sc_signal< sc_lv<21> > sext_ln1116_cast_fu_243_p1;
    sc_signal< sc_lv<16> > trunc_ln708_4_reg_444;
    sc_signal< sc_lv<21> > grp_fu_342_p2;
    sc_signal< sc_lv<21> > mul_ln1118_reg_449;
    sc_signal< sc_lv<21> > grp_fu_348_p2;
    sc_signal< sc_lv<21> > mul_ln1118_1_reg_454;
    sc_signal< sc_lv<21> > grp_fu_354_p2;
    sc_signal< sc_lv<21> > mul_ln1118_2_reg_459;
    sc_signal< sc_lv<21> > grp_fu_360_p2;
    sc_signal< sc_lv<21> > mul_ln1118_3_reg_464;
    sc_signal< sc_lv<16> > add_ln703_4_fu_277_p2;
    sc_signal< sc_lv<16> > add_ln703_4_reg_469;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter4;
    sc_signal< sc_lv<16> > add_ln703_fu_291_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter5;
    sc_signal< sc_lv<16> > add_ln703_1_fu_306_p2;
    sc_signal< sc_lv<16> > add_ln703_2_fu_321_p2;
    sc_signal< sc_lv<16> > add_ln703_3_fu_336_p2;
    sc_signal< bool > ap_block_state1;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< sc_lv<16> > ap_phi_mux_tmp_V_16_phi_fu_111_p4;
    sc_signal< sc_lv<64> > zext_ln450_fu_194_p1;
    sc_signal< sc_lv<16> > grp_fu_261_p1;
    sc_signal< sc_lv<21> > grp_fu_261_p2;
    sc_signal< sc_lv<16> > trunc_ln_fu_282_p4;
    sc_signal< sc_lv<16> > trunc_ln708_1_fu_297_p4;
    sc_signal< sc_lv<16> > trunc_ln708_2_fu_312_p4;
    sc_signal< sc_lv<16> > trunc_ln708_3_fu_327_p4;
    sc_signal< sc_lv<16> > grp_fu_342_p1;
    sc_signal< sc_lv<16> > grp_fu_348_p1;
    sc_signal< sc_lv<16> > grp_fu_354_p1;
    sc_signal< sc_lv<16> > grp_fu_360_p1;
    sc_signal< sc_logic > grp_fu_261_ce;
    sc_signal< sc_logic > grp_fu_342_ce;
    sc_signal< sc_logic > grp_fu_348_ce;
    sc_signal< sc_logic > grp_fu_354_ce;
    sc_signal< sc_logic > grp_fu_360_ce;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_pp0_stage0;
    static const sc_lv<7> ap_ST_fsm_state8;
    static const sc_lv<7> ap_ST_fsm_state9;
    static const sc_lv<7> ap_ST_fsm_state10;
    static const sc_lv<7> ap_ST_fsm_state11;
    static const sc_lv<7> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<16> ap_const_lv16_FEBD;
    static const sc_lv<16> ap_const_lv16_FCE1;
    static const sc_lv<16> ap_const_lv16_FF96;
    static const sc_lv<16> ap_const_lv16_28;
    static const sc_lv<16> ap_const_lv16_FD66;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<12> ap_const_lv12_900;
    static const sc_lv<12> ap_const_lv12_1;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_1C;
    static const sc_lv<32> ap_const_lv32_14;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln703_1_fu_306_p2();
    void thread_add_ln703_2_fu_321_p2();
    void thread_add_ln703_3_fu_336_p2();
    void thread_add_ln703_4_fu_277_p2();
    void thread_add_ln703_fu_291_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage0_iter1();
    void thread_ap_block_state4_pp0_stage0_iter2();
    void thread_ap_block_state5_pp0_stage0_iter3();
    void thread_ap_block_state6_pp0_stage0_iter4();
    void thread_ap_block_state7_pp0_stage0_iter5();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_tmp_V_16_phi_fu_111_p4();
    void thread_ap_ready();
    void thread_data_V_V_blk_n();
    void thread_data_V_V_read();
    void thread_grp_fu_261_ce();
    void thread_grp_fu_261_p1();
    void thread_grp_fu_342_ce();
    void thread_grp_fu_342_p1();
    void thread_grp_fu_348_ce();
    void thread_grp_fu_348_p1();
    void thread_grp_fu_354_ce();
    void thread_grp_fu_354_p1();
    void thread_grp_fu_360_ce();
    void thread_grp_fu_360_p1();
    void thread_i_in_fu_188_p2();
    void thread_icmp_ln442_fu_182_p2();
    void thread_internal_ap_ready();
    void thread_real_start();
    void thread_res_V_V_blk_n();
    void thread_res_V_V_din();
    void thread_res_V_V_write();
    void thread_sext_ln1116_cast_fu_243_p1();
    void thread_start_out();
    void thread_start_write();
    void thread_trunc_ln450_fu_199_p1();
    void thread_trunc_ln708_1_fu_297_p4();
    void thread_trunc_ln708_2_fu_312_p4();
    void thread_trunc_ln708_3_fu_327_p4();
    void thread_trunc_ln_fu_282_p4();
    void thread_w17_V_address0();
    void thread_w17_V_ce0();
    void thread_zext_ln450_fu_194_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif