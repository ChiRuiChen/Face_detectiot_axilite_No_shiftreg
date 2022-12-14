// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_H__
#define __cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 16;
  static const unsigned AddressRange = 128;
  static const unsigned AddressWidth = 7;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_ram) {


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
        if (we0.read() == sc_dt::Log_1) 
        {
           if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
           {
              ram[address0.read().to_uint()] = d0.read(); 
              q0 = d0.read();
           }
           else
              q0 = sc_lv<DataWidth>();
        }
        else {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
        }
    }
}


}; //endmodule


SC_MODULE(cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s) {


static const unsigned DataWidth = 16;
static const unsigned AddressRange = 128;
static const unsigned AddressWidth = 7;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> we0;
sc_core::sc_in<sc_lv<DataWidth> > d0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_ram* meminst;


SC_CTOR(cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s) {
meminst = new cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_ram("cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);
meminst->we0(we0);
meminst->d0(d0);


meminst->reset(reset);
meminst->clk(clk);
}
~cnnshift_arr_ap_fixed_ap_fixed_16_4_5_3_0_config15_s_tmpib3s() {
    delete meminst;
}


};//endmodule
#endif
