-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    start_full_n : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    start_out : OUT STD_LOGIC;
    start_write : OUT STD_LOGIC;
    data_V_V_dout : IN STD_LOGIC_VECTOR (15 downto 0);
    data_V_V_empty_n : IN STD_LOGIC;
    data_V_V_read : OUT STD_LOGIC;
    res_V_V_din : OUT STD_LOGIC_VECTOR (15 downto 0);
    res_V_V_full_n : IN STD_LOGIC;
    res_V_V_write : OUT STD_LOGIC );
end;


architecture behav of zeropad2d_cl_me_ap_fixed_ap_fixed_config21_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (9 downto 0) := "0000000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (9 downto 0) := "0000000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (9 downto 0) := "0000001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (9 downto 0) := "0000010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (9 downto 0) := "0000100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (9 downto 0) := "0001000000";
    constant ap_ST_fsm_state8 : STD_LOGIC_VECTOR (9 downto 0) := "0010000000";
    constant ap_ST_fsm_state9 : STD_LOGIC_VECTOR (9 downto 0) := "0100000000";
    constant ap_ST_fsm_state10 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv32_9 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001001";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv16_0 : STD_LOGIC_VECTOR (15 downto 0) := "0000000000000000";
    constant ap_const_lv5_11 : STD_LOGIC_VECTOR (4 downto 0) := "10001";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv6_20 : STD_LOGIC_VECTOR (5 downto 0) := "100000";
    constant ap_const_lv6_1 : STD_LOGIC_VECTOR (5 downto 0) := "000001";
    constant ap_const_lv4_F : STD_LOGIC_VECTOR (3 downto 0) := "1111";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal real_start : STD_LOGIC;
    signal start_once_reg : STD_LOGIC := '0';
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal internal_ap_ready : STD_LOGIC;
    signal data_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal icmp_ln47_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal res_V_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal icmp_ln23_fu_196_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal icmp_ln23_1_fu_220_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state8 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state8 : signal is "none";
    signal icmp_ln23_3_fu_256_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state10 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state10 : signal is "none";
    signal icmp_ln23_2_fu_280_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_fu_190_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_reg_295 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal c_fu_202_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state3 : BOOLEAN;
    signal i_fu_214_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_311 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal c_1_fu_226_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state5 : BOOLEAN;
    signal j_2_fu_238_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_2_reg_327 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal c_4_fu_250_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state7 : BOOLEAN;
    signal c_3_fu_262_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state8 : BOOLEAN;
    signal j_1_fu_274_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal j_1_reg_351 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_CS_fsm_state9 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state9 : signal is "none";
    signal c_2_fu_286_p2 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_state10 : BOOLEAN;
    signal j_0_reg_85 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal c_0_i30_reg_96 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln112_fu_184_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i1_0_reg_107 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_0_i26_reg_118 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln117_fu_208_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal j3_0_reg_129 : STD_LOGIC_VECTOR (3 downto 0);
    signal c_0_i34_reg_140 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln121_fu_232_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal c_0_i22_reg_151 : STD_LOGIC_VECTOR (5 downto 0);
    signal j6_0_reg_162 : STD_LOGIC_VECTOR (4 downto 0);
    signal c_0_i_reg_173 : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln130_fu_268_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (9 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln130_fu_268_p2 = ap_const_lv1_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    start_once_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                start_once_reg <= ap_const_logic_0;
            else
                if (((internal_ap_ready = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
                    start_once_reg <= ap_const_logic_1;
                elsif ((internal_ap_ready = ap_const_logic_1)) then 
                    start_once_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    c_0_i22_reg_151_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                c_0_i22_reg_151 <= c_3_fu_262_p2;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln121_fu_232_p2 = ap_const_lv1_1))) then 
                c_0_i22_reg_151 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c_0_i26_reg_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                c_0_i26_reg_118 <= c_1_fu_226_p2;
            elsif (((icmp_ln117_fu_208_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state4))) then 
                c_0_i26_reg_118 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c_0_i30_reg_96_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                c_0_i30_reg_96 <= c_fu_202_p2;
            elsif (((icmp_ln112_fu_184_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                c_0_i30_reg_96 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c_0_i34_reg_140_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                c_0_i34_reg_140 <= c_4_fu_250_p2;
            elsif (((icmp_ln121_fu_232_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state6))) then 
                c_0_i34_reg_140 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    c_0_i_reg_173_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                c_0_i_reg_173 <= c_2_fu_286_p2;
            elsif (((icmp_ln130_fu_268_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state9))) then 
                c_0_i_reg_173 <= ap_const_lv6_0;
            end if; 
        end if;
    end process;

    i1_0_reg_107_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln112_fu_184_p2 = ap_const_lv1_1))) then 
                i1_0_reg_107 <= ap_const_lv4_0;
            elsif ((not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then 
                i1_0_reg_107 <= i_reg_311;
            end if; 
        end if;
    end process;

    j3_0_reg_129_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then 
                j3_0_reg_129 <= ap_const_lv4_0;
            elsif ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
                j3_0_reg_129 <= j_2_reg_327;
            end if; 
        end if;
    end process;

    j6_0_reg_162_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then 
                j6_0_reg_162 <= j_1_reg_351;
            elsif (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln117_fu_208_p2 = ap_const_lv1_1))) then 
                j6_0_reg_162 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;

    j_0_reg_85_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then 
                j_0_reg_85 <= j_reg_295;
            elsif ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_0_reg_85 <= ap_const_lv5_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                i_reg_311 <= i_fu_214_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state9)) then
                j_1_reg_351 <= j_1_fu_274_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then
                j_2_reg_327 <= j_2_fu_238_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state2)) then
                j_reg_295 <= j_fu_190_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (real_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, data_V_V_empty_n, res_V_V_full_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2, ap_CS_fsm_state3, icmp_ln23_fu_196_p2, ap_CS_fsm_state5, icmp_ln23_1_fu_220_p2, ap_CS_fsm_state8, icmp_ln23_3_fu_256_p2, ap_CS_fsm_state10, icmp_ln23_2_fu_280_p2, ap_CS_fsm_state2, ap_CS_fsm_state4, ap_CS_fsm_state6, ap_CS_fsm_state9, icmp_ln112_fu_184_p2, icmp_ln117_fu_208_p2, icmp_ln121_fu_232_p2, icmp_ln130_fu_268_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln112_fu_184_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state3 => 
                if ((not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                elsif ((not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state4) and (icmp_ln117_fu_208_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state5 => 
                if ((not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif ((not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_state5;
                end if;
            when ap_ST_fsm_state6 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state6) and (icmp_ln121_fu_232_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state7 => 
                if ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                elsif ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when ap_ST_fsm_state8 => 
                if ((not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                elsif ((not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8))) then
                    ap_NS_fsm <= ap_ST_fsm_state8;
                else
                    ap_NS_fsm <= ap_ST_fsm_state8;
                end if;
            when ap_ST_fsm_state9 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln130_fu_268_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when ap_ST_fsm_state10 => 
                if ((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state9;
                elsif ((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10))) then
                    ap_NS_fsm <= ap_ST_fsm_state10;
                else
                    ap_NS_fsm <= ap_ST_fsm_state10;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state10 <= ap_CS_fsm(9);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_CS_fsm_state8 <= ap_CS_fsm(7);
    ap_CS_fsm_state9 <= ap_CS_fsm(8);

    ap_block_state1_assign_proc : process(real_start, ap_done_reg)
    begin
                ap_block_state1 <= ((real_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;


    ap_block_state10_assign_proc : process(res_V_V_full_n, icmp_ln23_2_fu_280_p2)
    begin
                ap_block_state10 <= ((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0));
    end process;


    ap_block_state3_assign_proc : process(res_V_V_full_n, icmp_ln23_fu_196_p2)
    begin
                ap_block_state3 <= ((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0));
    end process;


    ap_block_state5_assign_proc : process(res_V_V_full_n, icmp_ln23_1_fu_220_p2)
    begin
                ap_block_state5 <= ((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0));
    end process;


    ap_block_state7_assign_proc : process(data_V_V_empty_n, res_V_V_full_n, icmp_ln47_fu_244_p2)
    begin
                ap_block_state7 <= (((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)));
    end process;


    ap_block_state8_assign_proc : process(res_V_V_full_n, icmp_ln23_3_fu_256_p2)
    begin
                ap_block_state8 <= ((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state9, icmp_ln130_fu_268_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln130_fu_268_p2 = ap_const_lv1_1))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(real_start, ap_CS_fsm_state1)
    begin
        if (((real_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_ready <= internal_ap_ready;
    c_1_fu_226_p2 <= std_logic_vector(unsigned(c_0_i26_reg_118) + unsigned(ap_const_lv6_1));
    c_2_fu_286_p2 <= std_logic_vector(unsigned(c_0_i_reg_173) + unsigned(ap_const_lv6_1));
    c_3_fu_262_p2 <= std_logic_vector(unsigned(c_0_i22_reg_151) + unsigned(ap_const_lv6_1));
    c_4_fu_250_p2 <= std_logic_vector(unsigned(c_0_i34_reg_140) + unsigned(ap_const_lv6_1));
    c_fu_202_p2 <= std_logic_vector(unsigned(c_0_i30_reg_96) + unsigned(ap_const_lv6_1));

    data_V_V_blk_n_assign_proc : process(data_V_V_empty_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2)
    begin
        if (((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            data_V_V_blk_n <= data_V_V_empty_n;
        else 
            data_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    data_V_V_read_assign_proc : process(data_V_V_empty_n, res_V_V_full_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2)
    begin
        if ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            data_V_V_read <= ap_const_logic_1;
        else 
            data_V_V_read <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_214_p2 <= std_logic_vector(unsigned(i1_0_reg_107) + unsigned(ap_const_lv4_1));
    icmp_ln112_fu_184_p2 <= "1" when (j_0_reg_85 = ap_const_lv5_11) else "0";
    icmp_ln117_fu_208_p2 <= "1" when (i1_0_reg_107 = ap_const_lv4_F) else "0";
    icmp_ln121_fu_232_p2 <= "1" when (j3_0_reg_129 = ap_const_lv4_F) else "0";
    icmp_ln130_fu_268_p2 <= "1" when (j6_0_reg_162 = ap_const_lv5_11) else "0";
    icmp_ln23_1_fu_220_p2 <= "1" when (c_0_i26_reg_118 = ap_const_lv6_20) else "0";
    icmp_ln23_2_fu_280_p2 <= "1" when (c_0_i_reg_173 = ap_const_lv6_20) else "0";
    icmp_ln23_3_fu_256_p2 <= "1" when (c_0_i22_reg_151 = ap_const_lv6_20) else "0";
    icmp_ln23_fu_196_p2 <= "1" when (c_0_i30_reg_96 = ap_const_lv6_20) else "0";
    icmp_ln47_fu_244_p2 <= "1" when (c_0_i34_reg_140 = ap_const_lv6_20) else "0";

    internal_ap_ready_assign_proc : process(ap_CS_fsm_state9, icmp_ln130_fu_268_p2)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state9) and (icmp_ln130_fu_268_p2 = ap_const_lv1_1))) then 
            internal_ap_ready <= ap_const_logic_1;
        else 
            internal_ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    j_1_fu_274_p2 <= std_logic_vector(unsigned(j6_0_reg_162) + unsigned(ap_const_lv5_1));
    j_2_fu_238_p2 <= std_logic_vector(unsigned(j3_0_reg_129) + unsigned(ap_const_lv4_1));
    j_fu_190_p2 <= std_logic_vector(unsigned(j_0_reg_85) + unsigned(ap_const_lv5_1));

    real_start_assign_proc : process(ap_start, start_full_n, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (start_full_n = ap_const_logic_0))) then 
            real_start <= ap_const_logic_0;
        else 
            real_start <= ap_start;
        end if; 
    end process;


    res_V_V_blk_n_assign_proc : process(res_V_V_full_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2, ap_CS_fsm_state3, icmp_ln23_fu_196_p2, ap_CS_fsm_state5, icmp_ln23_1_fu_220_p2, ap_CS_fsm_state8, icmp_ln23_3_fu_256_p2, ap_CS_fsm_state10, icmp_ln23_2_fu_280_p2)
    begin
        if ((((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10)) or ((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)) or ((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or ((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7)))) then 
            res_V_V_blk_n <= res_V_V_full_n;
        else 
            res_V_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    res_V_V_din_assign_proc : process(data_V_V_dout, data_V_V_empty_n, res_V_V_full_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2, ap_CS_fsm_state3, icmp_ln23_fu_196_p2, ap_CS_fsm_state5, icmp_ln23_1_fu_220_p2, ap_CS_fsm_state8, icmp_ln23_3_fu_256_p2, ap_CS_fsm_state10, icmp_ln23_2_fu_280_p2)
    begin
        if ((not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7))) then 
            res_V_V_din <= data_V_V_dout;
        elsif (((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10)) or (not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)) or (not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)))) then 
            res_V_V_din <= ap_const_lv16_0;
        else 
            res_V_V_din <= "XXXXXXXXXXXXXXXX";
        end if; 
    end process;


    res_V_V_write_assign_proc : process(data_V_V_empty_n, res_V_V_full_n, ap_CS_fsm_state7, icmp_ln47_fu_244_p2, ap_CS_fsm_state3, icmp_ln23_fu_196_p2, ap_CS_fsm_state5, icmp_ln23_1_fu_220_p2, ap_CS_fsm_state8, icmp_ln23_3_fu_256_p2, ap_CS_fsm_state10, icmp_ln23_2_fu_280_p2)
    begin
        if (((not(((icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_2_fu_280_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state10)) or (not(((icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_3_fu_256_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state8)) or (not(((icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_1_fu_220_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state5)) or (not(((icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0))) and (icmp_ln23_fu_196_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state3)) or (not((((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (data_V_V_empty_n = ap_const_logic_0)) or ((icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (res_V_V_full_n = ap_const_logic_0)))) and (icmp_ln47_fu_244_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state7)))) then 
            res_V_V_write <= ap_const_logic_1;
        else 
            res_V_V_write <= ap_const_logic_0;
        end if; 
    end process;

    start_out <= real_start;

    start_write_assign_proc : process(real_start, start_once_reg)
    begin
        if (((start_once_reg = ap_const_logic_0) and (real_start = ap_const_logic_1))) then 
            start_write <= ap_const_logic_1;
        else 
            start_write <= ap_const_logic_0;
        end if; 
    end process;

end behav;
