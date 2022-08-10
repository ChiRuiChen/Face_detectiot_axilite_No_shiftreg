// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s_HH_
#define _sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s_sigmoid_tb4t.h"

namespace ap_rtl {

struct sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<16> > data_V_V_dout;
    sc_in< sc_logic > data_V_V_empty_n;
    sc_out< sc_logic > data_V_V_read;
    sc_out< sc_lv<16> > res_V_V_din;
    sc_in< sc_logic > res_V_V_full_n;
    sc_out< sc_logic > res_V_V_write;


    // Module declarations
    sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s(sc_module_name name);
    SC_HAS_PROCESS(sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s);

    ~sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s();

    sc_trace_file* mVcdFile;

    sigmoid_me_ap_fixed_ap_fixed_sigmoid_config19_s_sigmoid_tb4t* sigmoid_table1_U;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<7> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<10> > sigmoid_table1_address0;
    sc_signal< sc_logic > sigmoid_table1_ce0;
    sc_signal< sc_lv<10> > sigmoid_table1_q0;
    sc_signal< sc_logic > data_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln148_fu_109_p2;
    sc_signal< sc_logic > res_V_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > i_fu_115_p2;
    sc_signal< sc_lv<3> > i_reg_233;
    sc_signal< bool > ap_block_state2;
    sc_signal< sc_lv<16> > tmp_V_reg_238;
    sc_signal< sc_lv<10> > tmp_reg_243;
    sc_signal< sc_lv<1> > icmp_ln851_fu_143_p2;
    sc_signal< sc_lv<1> > icmp_ln851_reg_248;
    sc_signal< sc_lv<11> > sext_ln835_fu_156_p1;
    sc_signal< sc_lv<11> > sext_ln835_reg_253;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > p_Result_s_fu_159_p2;
    sc_signal< sc_lv<1> > p_Result_s_reg_259;
    sc_signal< sc_lv<11> > ret_V_fu_165_p2;
    sc_signal< sc_lv<11> > ret_V_reg_264;
    sc_signal< sc_lv<10> > select_ln160_fu_206_p3;
    sc_signal< sc_lv<10> > select_ln160_reg_269;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<10> > p_Val2_s_reg_279;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<3> > i_0_reg_98;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_lv<64> > zext_ln161_fu_214_p1;
    sc_signal< sc_lv<6> > trunc_ln851_fu_131_p1;
    sc_signal< sc_lv<12> > p_Result_2_fu_135_p3;
    sc_signal< sc_lv<26> > r_V_fu_149_p3;
    sc_signal< sc_lv<11> > select_ln851_fu_171_p3;
    sc_signal< sc_lv<11> > select_ln850_fu_176_p3;
    sc_signal< sc_lv<10> > trunc_ln158_fu_182_p1;
    sc_signal< sc_lv<11> > index_fu_186_p2;
    sc_signal< sc_lv<1> > tmp_1_fu_198_p3;
    sc_signal< sc_lv<10> > xor_ln158_fu_192_p2;
    sc_signal< sc_lv<12> > out_data_V_fu_218_p3;
    sc_signal< sc_lv<7> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<7> ap_ST_fsm_state1;
    static const sc_lv<7> ap_ST_fsm_state2;
    static const sc_lv<7> ap_ST_fsm_state3;
    static const sc_lv<7> ap_ST_fsm_state4;
    static const sc_lv<7> ap_ST_fsm_state5;
    static const sc_lv<7> ap_ST_fsm_state6;
    static const sc_lv<7> ap_ST_fsm_state7;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<6> ap_const_lv6_0;
    static const sc_lv<12> ap_const_lv12_0;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<26> ap_const_lv26_3FFFFF1;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_200;
    static const sc_lv<10> ap_const_lv10_200;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<10> ap_const_lv10_3FF;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_state1();
    void thread_ap_block_state2();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_V_V_blk_n();
    void thread_data_V_V_read();
    void thread_i_fu_115_p2();
    void thread_icmp_ln148_fu_109_p2();
    void thread_icmp_ln851_fu_143_p2();
    void thread_index_fu_186_p2();
    void thread_out_data_V_fu_218_p3();
    void thread_p_Result_2_fu_135_p3();
    void thread_p_Result_s_fu_159_p2();
    void thread_r_V_fu_149_p3();
    void thread_res_V_V_blk_n();
    void thread_res_V_V_din();
    void thread_res_V_V_write();
    void thread_ret_V_fu_165_p2();
    void thread_select_ln160_fu_206_p3();
    void thread_select_ln850_fu_176_p3();
    void thread_select_ln851_fu_171_p3();
    void thread_sext_ln835_fu_156_p1();
    void thread_sigmoid_table1_address0();
    void thread_sigmoid_table1_ce0();
    void thread_tmp_1_fu_198_p3();
    void thread_trunc_ln158_fu_182_p1();
    void thread_trunc_ln851_fu_131_p1();
    void thread_xor_ln158_fu_192_p2();
    void thread_zext_ln161_fu_214_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif