// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _myproject_axi_HH_
#define _myproject_axi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_1_proc188.h"
#include "myproject.h"
#include "Loop_2_proc189.h"
#include "fifo_w16_d3072_A.h"
#include "fifo_w16_d5_A.h"
#include "start_for_myproject_U0.h"
#include "start_for_Loop_2_proc189_U0.h"
#include "myproject_axi_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 15,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct myproject_axi : public sc_module {
    // Port declarations 19
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    myproject_axi(sc_module_name name);
    SC_HAS_PROCESS(myproject_axi);

    ~myproject_axi();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    myproject_axi_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* myproject_axi_AXILiteS_s_axi_U;
    Loop_1_proc188* Loop_1_proc188_U0;
    myproject* myproject_U0;
    Loop_2_proc189* Loop_2_proc189_U0;
    fifo_w16_d3072_A* in_local_V_V_U;
    fifo_w16_d5_A* out_local_V_V_U;
    start_for_myproject_U0* start_for_myproject_U0_U;
    start_for_Loop_2_proc189_U0* start_for_Loop_2_proc189_U0_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_lv<16> > in_V_q0;
    sc_signal< sc_logic > Loop_1_proc188_U0_ap_start;
    sc_signal< sc_logic > Loop_1_proc188_U0_ap_done;
    sc_signal< sc_logic > Loop_1_proc188_U0_ap_continue;
    sc_signal< sc_logic > Loop_1_proc188_U0_ap_idle;
    sc_signal< sc_logic > Loop_1_proc188_U0_ap_ready;
    sc_signal< sc_logic > Loop_1_proc188_U0_start_out;
    sc_signal< sc_logic > Loop_1_proc188_U0_start_write;
    sc_signal< sc_lv<12> > Loop_1_proc188_U0_in_V_address0;
    sc_signal< sc_logic > Loop_1_proc188_U0_in_V_ce0;
    sc_signal< sc_lv<16> > Loop_1_proc188_U0_in_local_V_V_din;
    sc_signal< sc_logic > Loop_1_proc188_U0_in_local_V_V_write;
    sc_signal< sc_logic > myproject_U0_ap_start;
    sc_signal< sc_logic > myproject_U0_start_out;
    sc_signal< sc_logic > myproject_U0_start_write;
    sc_signal< sc_logic > myproject_U0_conv2d_input_V_V_read;
    sc_signal< sc_lv<16> > myproject_U0_layer19_out_V_V_din;
    sc_signal< sc_logic > myproject_U0_layer19_out_V_V_write;
    sc_signal< sc_logic > myproject_U0_ap_done;
    sc_signal< sc_logic > myproject_U0_ap_ready;
    sc_signal< sc_logic > myproject_U0_ap_idle;
    sc_signal< sc_logic > myproject_U0_ap_continue;
    sc_signal< sc_logic > Loop_2_proc189_U0_ap_start;
    sc_signal< sc_logic > Loop_2_proc189_U0_ap_done;
    sc_signal< sc_logic > Loop_2_proc189_U0_ap_continue;
    sc_signal< sc_logic > Loop_2_proc189_U0_ap_idle;
    sc_signal< sc_logic > Loop_2_proc189_U0_ap_ready;
    sc_signal< sc_logic > Loop_2_proc189_U0_out_local_V_V_read;
    sc_signal< sc_lv<3> > Loop_2_proc189_U0_out_V_address0;
    sc_signal< sc_logic > Loop_2_proc189_U0_out_V_ce0;
    sc_signal< sc_logic > Loop_2_proc189_U0_out_V_we0;
    sc_signal< sc_lv<16> > Loop_2_proc189_U0_out_V_d0;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > in_local_V_V_full_n;
    sc_signal< sc_lv<16> > in_local_V_V_dout;
    sc_signal< sc_logic > in_local_V_V_empty_n;
    sc_signal< sc_logic > out_local_V_V_full_n;
    sc_signal< sc_lv<16> > out_local_V_V_dout;
    sc_signal< sc_logic > out_local_V_V_empty_n;
    sc_signal< sc_lv<1> > start_for_myproject_U0_din;
    sc_signal< sc_logic > start_for_myproject_U0_full_n;
    sc_signal< sc_lv<1> > start_for_myproject_U0_dout;
    sc_signal< sc_logic > start_for_myproject_U0_empty_n;
    sc_signal< sc_lv<1> > start_for_Loop_2_proc189_U0_din;
    sc_signal< sc_logic > start_for_Loop_2_proc189_U0_full_n;
    sc_signal< sc_lv<1> > start_for_Loop_2_proc189_U0_dout;
    sc_signal< sc_logic > start_for_Loop_2_proc189_U0_empty_n;
    sc_signal< sc_logic > Loop_2_proc189_U0_start_full_n;
    sc_signal< sc_logic > Loop_2_proc189_U0_start_write;
    static const int C_S_AXI_DATA_WIDTH;
    static const int C_S_AXI_WSTRB_WIDTH;
    static const int C_S_AXI_ADDR_WIDTH;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_Loop_1_proc188_U0_ap_continue();
    void thread_Loop_1_proc188_U0_ap_start();
    void thread_Loop_2_proc189_U0_ap_continue();
    void thread_Loop_2_proc189_U0_ap_start();
    void thread_Loop_2_proc189_U0_start_full_n();
    void thread_Loop_2_proc189_U0_start_write();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_myproject_U0_ap_continue();
    void thread_myproject_U0_ap_start();
    void thread_start_for_Loop_2_proc189_U0_din();
    void thread_start_for_myproject_U0_din();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
