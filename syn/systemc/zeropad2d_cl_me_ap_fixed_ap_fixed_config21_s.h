// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s_HH_
#define _zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s : public sc_module {
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
    zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s(sc_module_name name);
    SC_HAS_PROCESS(zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s);

    ~zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s();

    sc_trace_file* mVcdFile;

    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > data_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln47_fu_244_p2;
    sc_signal< sc_logic > res_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln23_fu_196_p2;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > icmp_ln23_1_fu_220_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > icmp_ln23_3_fu_256_p2;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<1> > icmp_ln23_2_fu_280_p2;
    sc_signal< sc_lv<5> > j_fu_190_p2;
    sc_signal< sc_lv<5> > j_reg_295;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > c_fu_202_p2;
    sc_signal< bool > ap_block_state3;
    sc_signal< sc_lv<4> > i_fu_214_p2;
    sc_signal< sc_lv<4> > i_reg_311;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<6> > c_1_fu_226_p2;
    sc_signal< bool > ap_block_state5;
    sc_signal< sc_lv<4> > j_2_fu_238_p2;
    sc_signal< sc_lv<4> > j_2_reg_327;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<6> > c_4_fu_250_p2;
    sc_signal< bool > ap_block_state7;
    sc_signal< sc_lv<6> > c_3_fu_262_p2;
    sc_signal< bool > ap_block_state8;
    sc_signal< sc_lv<5> > j_1_fu_274_p2;
    sc_signal< sc_lv<5> > j_1_reg_351;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<6> > c_2_fu_286_p2;
    sc_signal< bool > ap_block_state10;
    sc_signal< sc_lv<5> > j_0_reg_85;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<6> > c_0_i30_reg_96;
    sc_signal< sc_lv<1> > icmp_ln112_fu_184_p2;
    sc_signal< sc_lv<4> > i1_0_reg_107;
    sc_signal< sc_lv<6> > c_0_i26_reg_118;
    sc_signal< sc_lv<1> > icmp_ln117_fu_208_p2;
    sc_signal< sc_lv<4> > j3_0_reg_129;
    sc_signal< sc_lv<6> > c_0_i34_reg_140;
    sc_signal< sc_lv<1> > icmp_ln121_fu_232_p2;
    sc_signal< sc_lv<6> > c_0_i22_reg_151;
    sc_signal< sc_lv<5> > j6_0_reg_162;
    sc_signal< sc_lv<6> > c_0_i_reg_173;
    sc_signal< sc_lv<1> > icmp_ln130_fu_268_p2;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_state2;
    static const sc_lv<10> ap_ST_fsm_state3;
    static const sc_lv<10> ap_ST_fsm_state4;
    static const sc_lv<10> ap_ST_fsm_state5;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_state9;
    static const sc_lv<10> ap_ST_fsm_state10;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<5> ap_const_lv5_11;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<6> ap_const_lv6_20;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<4> ap_const_lv4_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state1();
    void thread_ap_block_state10();
    void thread_ap_block_state3();
    void thread_ap_block_state5();
    void thread_ap_block_state7();
    void thread_ap_block_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_c_1_fu_226_p2();
    void thread_c_2_fu_286_p2();
    void thread_c_3_fu_262_p2();
    void thread_c_4_fu_250_p2();
    void thread_c_fu_202_p2();
    void thread_data_V_V_blk_n();
    void thread_data_V_V_read();
    void thread_i_fu_214_p2();
    void thread_icmp_ln112_fu_184_p2();
    void thread_icmp_ln117_fu_208_p2();
    void thread_icmp_ln121_fu_232_p2();
    void thread_icmp_ln130_fu_268_p2();
    void thread_icmp_ln23_1_fu_220_p2();
    void thread_icmp_ln23_2_fu_280_p2();
    void thread_icmp_ln23_3_fu_256_p2();
    void thread_icmp_ln23_fu_196_p2();
    void thread_icmp_ln47_fu_244_p2();
    void thread_internal_ap_ready();
    void thread_j_1_fu_274_p2();
    void thread_j_2_fu_238_p2();
    void thread_j_fu_190_p2();
    void thread_real_start();
    void thread_res_V_V_blk_n();
    void thread_res_V_V_din();
    void thread_res_V_V_write();
    void thread_start_out();
    void thread_start_write();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
