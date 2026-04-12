-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/12/2026 17:23:27"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	cronometro IS
    PORT (
	CLK : IN std_logic;
	CLR : IN std_logic;
	RST : IN std_logic;
	EN : IN std_logic;
	BTN_PLAY_PAUSE : IN std_logic;
	BTN_RESET : IN std_logic;
	Q_cs : OUT std_logic_vector(7 DOWNTO 0);
	Q_s : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	CLK2 : OUT std_logic;
	CLK3 : OUT std_logic;
	CLK4 : OUT std_logic;
	RST_SIG1 : OUT std_logic;
	RST_SIG2 : OUT std_logic
	);
END cronometro;

-- Design Ports Information
-- Q_cs[0]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[1]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_cs[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[2]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[4]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[5]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q_s[7]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK2	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK3	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK4	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG1	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST_SIG2	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_RESET	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BTN_PLAY_PAUSE	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cronometro IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_BTN_PLAY_PAUSE : std_logic;
SIGNAL ww_BTN_RESET : std_logic;
SIGNAL ww_Q_cs : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_s : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_CLK2 : std_logic;
SIGNAL ww_CLK3 : std_logic;
SIGNAL ww_CLK4 : std_logic;
SIGNAL ww_RST_SIG1 : std_logic;
SIGNAL ww_RST_SIG2 : std_logic;
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|count[0]~0_combout\ : std_logic;
SIGNAL \u1|Add0~1_combout\ : std_logic;
SIGNAL \u2|Add0~0_combout\ : std_logic;
SIGNAL \u3|Add0~0_combout\ : std_logic;
SIGNAL \u2|Add0~1_combout\ : std_logic;
SIGNAL \u3|Add0~1_combout\ : std_logic;
SIGNAL \u1|count[3]~7_combout\ : std_logic;
SIGNAL \BTN_RESET~input_o\ : std_logic;
SIGNAL \Q_cs[0]~output_o\ : std_logic;
SIGNAL \Q_cs[1]~output_o\ : std_logic;
SIGNAL \Q_cs[2]~output_o\ : std_logic;
SIGNAL \Q_cs[3]~output_o\ : std_logic;
SIGNAL \Q_cs[4]~output_o\ : std_logic;
SIGNAL \Q_cs[5]~output_o\ : std_logic;
SIGNAL \Q_cs[6]~output_o\ : std_logic;
SIGNAL \Q_cs[7]~output_o\ : std_logic;
SIGNAL \Q_s[0]~output_o\ : std_logic;
SIGNAL \Q_s[1]~output_o\ : std_logic;
SIGNAL \Q_s[2]~output_o\ : std_logic;
SIGNAL \Q_s[3]~output_o\ : std_logic;
SIGNAL \Q_s[4]~output_o\ : std_logic;
SIGNAL \Q_s[5]~output_o\ : std_logic;
SIGNAL \Q_s[6]~output_o\ : std_logic;
SIGNAL \Q_s[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \CLK2~output_o\ : std_logic;
SIGNAL \CLK3~output_o\ : std_logic;
SIGNAL \CLK4~output_o\ : std_logic;
SIGNAL \RST_SIG1~output_o\ : std_logic;
SIGNAL \RST_SIG2~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \state~0_combout\ : std_logic;
SIGNAL \BTN_PLAY_PAUSE~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \play_prev~q\ : std_logic;
SIGNAL \state~1_combout\ : std_logic;
SIGNAL \state~q\ : std_logic;
SIGNAL \count_enable~0_combout\ : std_logic;
SIGNAL \u0|count[3]~2_combout\ : std_logic;
SIGNAL \u0|count[1]~3_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|count[2]~4_combout\ : std_logic;
SIGNAL \u0|Add0~1_combout\ : std_logic;
SIGNAL \u0|count[3]~5_combout\ : std_logic;
SIGNAL \q0_clr~0_combout\ : std_logic;
SIGNAL \u0|count[0]~1_combout\ : std_logic;
SIGNAL \q1_en~0_combout\ : std_logic;
SIGNAL \q1_en~2_combout\ : std_logic;
SIGNAL \u1|count[3]~3_combout\ : std_logic;
SIGNAL \u1|count[1]~4_combout\ : std_logic;
SIGNAL \u1|Add0~0_combout\ : std_logic;
SIGNAL \u1|count[2]~5_combout\ : std_logic;
SIGNAL \q2_en~0_combout\ : std_logic;
SIGNAL \q2_en~1_combout\ : std_logic;
SIGNAL \u1|count[0]~2_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \u1|count[3]~6_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \u2|count[0]~0_combout\ : std_logic;
SIGNAL \q1_clr~2_combout\ : std_logic;
SIGNAL \q1_clr~combout\ : std_logic;
SIGNAL \u2|count[2]~3_combout\ : std_logic;
SIGNAL \q3_en~0_combout\ : std_logic;
SIGNAL \u2|count[3]~1_combout\ : std_logic;
SIGNAL \u2|count[1]~2_combout\ : std_logic;
SIGNAL \q2_clr~2_combout\ : std_logic;
SIGNAL \u3|count[2]~4_combout\ : std_logic;
SIGNAL \u3|count[3]~5_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \u3|count[3]~1_combout\ : std_logic;
SIGNAL \u3|count[0]~2_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \u3|count[1]~3_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \u2|count[3]~4_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add2~3_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \disp0|Mux6~0_combout\ : std_logic;
SIGNAL \disp0|Mux5~0_combout\ : std_logic;
SIGNAL \disp0|Mux4~0_combout\ : std_logic;
SIGNAL \disp0|Mux3~0_combout\ : std_logic;
SIGNAL \disp0|Mux2~0_combout\ : std_logic;
SIGNAL \disp0|Mux1~0_combout\ : std_logic;
SIGNAL \disp0|Mux0~0_combout\ : std_logic;
SIGNAL \disp1|Mux6~0_combout\ : std_logic;
SIGNAL \disp1|Mux5~0_combout\ : std_logic;
SIGNAL \disp1|Mux4~0_combout\ : std_logic;
SIGNAL \disp1|Mux3~0_combout\ : std_logic;
SIGNAL \disp1|Mux2~0_combout\ : std_logic;
SIGNAL \disp1|Mux1~0_combout\ : std_logic;
SIGNAL \disp1|Mux0~0_combout\ : std_logic;
SIGNAL \disp2|Mux6~0_combout\ : std_logic;
SIGNAL \disp2|Mux5~0_combout\ : std_logic;
SIGNAL \disp2|Mux4~0_combout\ : std_logic;
SIGNAL \disp2|Mux3~0_combout\ : std_logic;
SIGNAL \disp2|Mux2~0_combout\ : std_logic;
SIGNAL \disp2|Mux1~0_combout\ : std_logic;
SIGNAL \disp2|Mux0~0_combout\ : std_logic;
SIGNAL \disp3|Mux6~0_combout\ : std_logic;
SIGNAL \disp3|Mux5~0_combout\ : std_logic;
SIGNAL \disp3|Mux4~0_combout\ : std_logic;
SIGNAL \disp3|Mux3~0_combout\ : std_logic;
SIGNAL \disp3|Mux2~0_combout\ : std_logic;
SIGNAL \disp3|Mux1~0_combout\ : std_logic;
SIGNAL \disp3|Mux0~0_combout\ : std_logic;
SIGNAL \q1_en~1_combout\ : std_logic;
SIGNAL \q2_en~2_combout\ : std_logic;
SIGNAL \u3|count[3]~0_combout\ : std_logic;
SIGNAL \RST_SIG1~0_combout\ : std_logic;
SIGNAL \RST_SIG2~0_combout\ : std_logic;
SIGNAL \u0|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u3|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp2|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \disp0|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_CLR <= CLR;
ww_RST <= RST;
ww_EN <= EN;
ww_BTN_PLAY_PAUSE <= BTN_PLAY_PAUSE;
ww_BTN_RESET <= BTN_RESET;
Q_cs <= ww_Q_cs;
Q_s <= ww_Q_s;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
CLK2 <= ww_CLK2;
CLK3 <= ww_CLK3;
CLK4 <= ww_CLK4;
RST_SIG1 <= ww_RST_SIG1;
RST_SIG2 <= ww_RST_SIG2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~inputclkctrl_outclk\ <= NOT \RST~inputclkctrl_outclk\;
\disp3|ALT_INV_Mux0~0_combout\ <= NOT \disp3|Mux0~0_combout\;
\disp3|ALT_INV_Mux1~0_combout\ <= NOT \disp3|Mux1~0_combout\;
\disp3|ALT_INV_Mux2~0_combout\ <= NOT \disp3|Mux2~0_combout\;
\disp3|ALT_INV_Mux4~0_combout\ <= NOT \disp3|Mux4~0_combout\;
\disp3|ALT_INV_Mux5~0_combout\ <= NOT \disp3|Mux5~0_combout\;
\disp3|ALT_INV_Mux6~0_combout\ <= NOT \disp3|Mux6~0_combout\;
\disp2|ALT_INV_Mux0~0_combout\ <= NOT \disp2|Mux0~0_combout\;
\disp2|ALT_INV_Mux1~0_combout\ <= NOT \disp2|Mux1~0_combout\;
\disp2|ALT_INV_Mux2~0_combout\ <= NOT \disp2|Mux2~0_combout\;
\disp2|ALT_INV_Mux4~0_combout\ <= NOT \disp2|Mux4~0_combout\;
\disp2|ALT_INV_Mux5~0_combout\ <= NOT \disp2|Mux5~0_combout\;
\disp2|ALT_INV_Mux6~0_combout\ <= NOT \disp2|Mux6~0_combout\;
\disp1|ALT_INV_Mux0~0_combout\ <= NOT \disp1|Mux0~0_combout\;
\disp1|ALT_INV_Mux1~0_combout\ <= NOT \disp1|Mux1~0_combout\;
\disp1|ALT_INV_Mux2~0_combout\ <= NOT \disp1|Mux2~0_combout\;
\disp1|ALT_INV_Mux4~0_combout\ <= NOT \disp1|Mux4~0_combout\;
\disp1|ALT_INV_Mux5~0_combout\ <= NOT \disp1|Mux5~0_combout\;
\disp1|ALT_INV_Mux6~0_combout\ <= NOT \disp1|Mux6~0_combout\;
\disp0|ALT_INV_Mux0~0_combout\ <= NOT \disp0|Mux0~0_combout\;
\disp0|ALT_INV_Mux1~0_combout\ <= NOT \disp0|Mux1~0_combout\;
\disp0|ALT_INV_Mux2~0_combout\ <= NOT \disp0|Mux2~0_combout\;
\disp0|ALT_INV_Mux4~0_combout\ <= NOT \disp0|Mux4~0_combout\;
\disp0|ALT_INV_Mux5~0_combout\ <= NOT \disp0|Mux5~0_combout\;
\disp0|ALT_INV_Mux6~0_combout\ <= NOT \disp0|Mux6~0_combout\;

-- Location: LCCOMB_X49_Y22_N14
\u0|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[0]~0_combout\ = (\CLR~input_o\) # ((\BTN_RESET~input_o\) # ((\state~q\ & \EN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~q\,
	datab => \CLR~input_o\,
	datac => \BTN_RESET~input_o\,
	datad => \EN~input_o\,
	combout => \u0|count[0]~0_combout\);

-- Location: LCCOMB_X49_Y22_N26
\u1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~1_combout\ = \u1|count\(3) $ (((\u1|count\(1) & (\u1|count\(0) & \u1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \u1|Add0~1_combout\);

-- Location: LCCOMB_X47_Y22_N22
\u2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~0_combout\ = \u2|count\(2) $ (((\u2|count\(0) & \u2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(2),
	combout => \u2|Add0~0_combout\);

-- Location: LCCOMB_X48_Y22_N28
\u3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~0_combout\ = \u3|count\(2) $ (((\u3|count\(1) & \u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \u3|Add0~0_combout\);

-- Location: LCCOMB_X47_Y22_N20
\u2|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|Add0~1_combout\ = \u2|count\(3) $ (((\u2|count\(1) & (\u2|count\(0) & \u2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(3),
	combout => \u2|Add0~1_combout\);

-- Location: LCCOMB_X48_Y22_N10
\u3|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|Add0~1_combout\ = \u3|count\(3) $ (((\u3|count\(2) & (\u3|count\(1) & \u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \u3|Add0~1_combout\);

-- Location: LCCOMB_X49_Y22_N6
\u1|count[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[3]~7_combout\ = (!\BTN_RESET~input_o\ & (!\CLR~input_o\ & \u0|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datab => \CLR~input_o\,
	datac => \u0|count\(3),
	combout => \u1|count[3]~7_combout\);

-- Location: IOIBUF_X51_Y34_N8
\BTN_RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_RESET,
	o => \BTN_RESET~input_o\);

-- Location: IOOBUF_X53_Y25_N2
\Q_cs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|count\(0),
	devoe => ww_devoe,
	o => \Q_cs[0]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\Q_cs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~0_combout\,
	devoe => ww_devoe,
	o => \Q_cs[1]~output_o\);

-- Location: IOOBUF_X53_Y24_N23
\Q_cs[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~2_combout\,
	devoe => ww_devoe,
	o => \Q_cs[2]~output_o\);

-- Location: IOOBUF_X53_Y26_N23
\Q_cs[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~4_combout\,
	devoe => ww_devoe,
	o => \Q_cs[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\Q_cs[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~6_combout\,
	devoe => ww_devoe,
	o => \Q_cs[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\Q_cs[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~8_combout\,
	devoe => ww_devoe,
	o => \Q_cs[5]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\Q_cs[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~10_combout\,
	devoe => ww_devoe,
	o => \Q_cs[6]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\Q_cs[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add1~12_combout\,
	devoe => ww_devoe,
	o => \Q_cs[7]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\Q_s[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u2|count\(0),
	devoe => ww_devoe,
	o => \Q_s[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\Q_s[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~0_combout\,
	devoe => ww_devoe,
	o => \Q_s[1]~output_o\);

-- Location: IOOBUF_X53_Y12_N2
\Q_s[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~2_combout\,
	devoe => ww_devoe,
	o => \Q_s[2]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\Q_s[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~4_combout\,
	devoe => ww_devoe,
	o => \Q_s[3]~output_o\);

-- Location: IOOBUF_X53_Y11_N9
\Q_s[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~6_combout\,
	devoe => ww_devoe,
	o => \Q_s[4]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\Q_s[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~8_combout\,
	devoe => ww_devoe,
	o => \Q_s[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\Q_s[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~10_combout\,
	devoe => ww_devoe,
	o => \Q_s[6]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\Q_s[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add3~12_combout\,
	devoe => ww_devoe,
	o => \Q_s[7]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X45_Y34_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X53_Y30_N2
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N2
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X53_Y22_N2
\CLK2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q1_en~1_combout\,
	devoe => ww_devoe,
	o => \CLK2~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\CLK3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q2_en~2_combout\,
	devoe => ww_devoe,
	o => \CLK3~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\CLK4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|count[3]~0_combout\,
	devoe => ww_devoe,
	o => \CLK4~output_o\);

-- Location: IOOBUF_X53_Y30_N9
\RST_SIG1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RST_SIG1~0_combout\,
	devoe => ww_devoe,
	o => \RST_SIG1~output_o\);

-- Location: IOOBUF_X53_Y20_N16
\RST_SIG2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RST_SIG2~0_combout\,
	devoe => ww_devoe,
	o => \RST_SIG2~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X14_Y0_N1
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X49_Y22_N8
\state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~0_combout\ = (!\BTN_RESET~input_o\ & !\CLR~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datac => \CLR~input_o\,
	combout => \state~0_combout\);

-- Location: IOIBUF_X53_Y22_N8
\BTN_PLAY_PAUSE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BTN_PLAY_PAUSE,
	o => \BTN_PLAY_PAUSE~input_o\);

-- Location: IOIBUF_X0_Y16_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: FF_X49_Y22_N23
play_prev : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \BTN_PLAY_PAUSE~input_o\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \play_prev~q\);

-- Location: LCCOMB_X49_Y22_N12
\state~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \state~1_combout\ = (\state~0_combout\ & (\state~q\ $ (((\BTN_PLAY_PAUSE~input_o\ & !\play_prev~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_PLAY_PAUSE~input_o\,
	datab => \state~0_combout\,
	datac => \state~q\,
	datad => \play_prev~q\,
	combout => \state~1_combout\);

-- Location: FF_X49_Y22_N13
state : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \state~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state~q\);

-- Location: LCCOMB_X49_Y22_N22
\count_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_enable~0_combout\ = (!\BTN_RESET~input_o\ & (\EN~input_o\ & \state~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datab => \EN~input_o\,
	datad => \state~q\,
	combout => \count_enable~0_combout\);

-- Location: LCCOMB_X50_Y22_N12
\u0|count[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[3]~2_combout\ = (\state~0_combout\ & (\count_enable~0_combout\ & ((!\u0|count\(3)) # (!\q1_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_en~0_combout\,
	datab => \state~0_combout\,
	datac => \u0|count\(3),
	datad => \count_enable~0_combout\,
	combout => \u0|count[3]~2_combout\);

-- Location: LCCOMB_X50_Y22_N14
\u0|count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[1]~3_combout\ = (\u0|count\(1) & (((!\u0|count\(0) & \u0|count[3]~2_combout\)) # (!\u0|count[0]~0_combout\))) # (!\u0|count\(1) & (((\u0|count\(0) & \u0|count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count[0]~0_combout\,
	datab => \u0|count\(0),
	datac => \u0|count\(1),
	datad => \u0|count[3]~2_combout\,
	combout => \u0|count[1]~3_combout\);

-- Location: FF_X50_Y22_N15
\u0|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|count[1]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|count\(1));

-- Location: LCCOMB_X50_Y22_N18
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|count\(2) $ (((\u0|count\(0) & \u0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(2),
	combout => \u0|Add0~0_combout\);

-- Location: LCCOMB_X50_Y22_N16
\u0|count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[2]~4_combout\ = (\u0|count[0]~0_combout\ & (\u0|Add0~0_combout\ & ((\u0|count[3]~2_combout\)))) # (!\u0|count[0]~0_combout\ & ((\u0|count\(2)) # ((\u0|Add0~0_combout\ & \u0|count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count[0]~0_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|count\(2),
	datad => \u0|count[3]~2_combout\,
	combout => \u0|count[2]~4_combout\);

-- Location: FF_X50_Y22_N17
\u0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|count[2]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|count\(2));

-- Location: LCCOMB_X50_Y22_N28
\u0|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~1_combout\ = \u0|count\(3) $ (((\u0|count\(0) & (\u0|count\(1) & \u0|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(2),
	datad => \u0|count\(3),
	combout => \u0|Add0~1_combout\);

-- Location: LCCOMB_X50_Y22_N10
\u0|count[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[3]~5_combout\ = (\u0|count[0]~0_combout\ & (\u0|Add0~1_combout\ & ((\u0|count[3]~2_combout\)))) # (!\u0|count[0]~0_combout\ & ((\u0|count\(3)) # ((\u0|Add0~1_combout\ & \u0|count[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count[0]~0_combout\,
	datab => \u0|Add0~1_combout\,
	datac => \u0|count\(3),
	datad => \u0|count[3]~2_combout\,
	combout => \u0|count[3]~5_combout\);

-- Location: FF_X50_Y22_N11
\u0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|count[3]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|count\(3));

-- Location: LCCOMB_X50_Y22_N6
\q0_clr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q0_clr~0_combout\ = (\state~0_combout\ & (((!\u0|count\(3)) # (!\count_enable~0_combout\)) # (!\q1_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_en~0_combout\,
	datab => \count_enable~0_combout\,
	datac => \state~0_combout\,
	datad => \u0|count\(3),
	combout => \q0_clr~0_combout\);

-- Location: LCCOMB_X50_Y22_N0
\u0|count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|count[0]~1_combout\ = (\u0|count\(0) & (!\u0|count[0]~0_combout\)) # (!\u0|count\(0) & (((\count_enable~0_combout\ & \q0_clr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count[0]~0_combout\,
	datab => \count_enable~0_combout\,
	datac => \u0|count\(0),
	datad => \q0_clr~0_combout\,
	combout => \u0|count[0]~1_combout\);

-- Location: FF_X50_Y22_N1
\u0|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u0|count[0]~1_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|count\(0));

-- Location: LCCOMB_X50_Y22_N22
\q1_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1_en~0_combout\ = (!\u0|count\(2) & (!\u0|count\(1) & \u0|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(2),
	datac => \u0|count\(1),
	datad => \u0|count\(0),
	combout => \q1_en~0_combout\);

-- Location: LCCOMB_X49_Y22_N0
\q1_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1_en~2_combout\ = (\u0|count\(3) & (\count_enable~0_combout\ & \q1_en~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|count\(3),
	datac => \count_enable~0_combout\,
	datad => \q1_en~0_combout\,
	combout => \q1_en~2_combout\);

-- Location: LCCOMB_X49_Y22_N18
\u1|count[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[3]~3_combout\ = (\u1|count[3]~7_combout\ & (!\q2_en~0_combout\ & (\count_enable~0_combout\ & \q1_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count[3]~7_combout\,
	datab => \q2_en~0_combout\,
	datac => \count_enable~0_combout\,
	datad => \q1_en~0_combout\,
	combout => \u1|count[3]~3_combout\);

-- Location: LCCOMB_X49_Y22_N30
\u1|count[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[1]~4_combout\ = (\u1|count\(1) & ((\q0_clr~0_combout\) # ((!\u1|count\(0) & \u1|count[3]~3_combout\)))) # (!\u1|count\(1) & (\u1|count\(0) & (\u1|count[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \u1|count[3]~3_combout\,
	datac => \u1|count\(1),
	datad => \q0_clr~0_combout\,
	combout => \u1|count[1]~4_combout\);

-- Location: FF_X49_Y22_N31
\u1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|count[1]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(1));

-- Location: LCCOMB_X49_Y22_N20
\u1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|Add0~0_combout\ = \u1|count\(2) $ (((\u1|count\(1) & \u1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(2),
	datac => \u1|count\(1),
	datad => \u1|count\(0),
	combout => \u1|Add0~0_combout\);

-- Location: LCCOMB_X49_Y22_N16
\u1|count[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[2]~5_combout\ = (\q0_clr~0_combout\ & ((\u1|count\(2)) # ((\u1|Add0~0_combout\ & \u1|count[3]~3_combout\)))) # (!\q0_clr~0_combout\ & (\u1|Add0~0_combout\ & ((\u1|count[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q0_clr~0_combout\,
	datab => \u1|Add0~0_combout\,
	datac => \u1|count\(2),
	datad => \u1|count[3]~3_combout\,
	combout => \u1|count[2]~5_combout\);

-- Location: FF_X49_Y22_N17
\u1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|count[2]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(2));

-- Location: LCCOMB_X49_Y22_N4
\q2_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2_en~0_combout\ = (\u1|count\(3) & (!\u1|count\(2) & (!\u1|count\(1) & \u1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datab => \u1|count\(2),
	datac => \u1|count\(1),
	datad => \u1|count\(0),
	combout => \q2_en~0_combout\);

-- Location: LCCOMB_X49_Y22_N2
\q2_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2_en~1_combout\ = (\count_enable~0_combout\ & (\u0|count\(3) & (\q2_en~0_combout\ & \q1_en~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~0_combout\,
	datab => \u0|count\(3),
	datac => \q2_en~0_combout\,
	datad => \q1_en~0_combout\,
	combout => \q2_en~1_combout\);

-- Location: LCCOMB_X49_Y22_N28
\u1|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[0]~2_combout\ = (\state~0_combout\ & ((\q1_en~2_combout\ & (!\u1|count\(0) & !\q2_en~1_combout\)) # (!\q1_en~2_combout\ & (\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~0_combout\,
	datab => \q1_en~2_combout\,
	datac => \u1|count\(0),
	datad => \q2_en~1_combout\,
	combout => \u1|count[0]~2_combout\);

-- Location: FF_X49_Y22_N29
\u1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|count[0]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(0));

-- Location: LCCOMB_X45_Y26_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\u0|count\(1) & (\u1|count\(0) $ (VCC))) # (!\u0|count\(1) & (\u1|count\(0) & VCC))
-- \Add1~1\ = CARRY((\u0|count\(1) & \u1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(1),
	datab => \u1|count\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X45_Y26_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\u1|count\(1) & ((\u0|count\(2) & (\Add1~1\ & VCC)) # (!\u0|count\(2) & (!\Add1~1\)))) # (!\u1|count\(1) & ((\u0|count\(2) & (!\Add1~1\)) # (!\u0|count\(2) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\u1|count\(1) & (!\u0|count\(2) & !\Add1~1\)) # (!\u1|count\(1) & ((!\Add1~1\) # (!\u0|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u0|count\(2),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X45_Y26_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \u1|count\(0) $ (\u1|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(0),
	datad => \u1|count\(2),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X45_Y26_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\u0|count\(3) $ (\Add0~0_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\u0|count\(3) & ((\Add0~0_combout\) # (!\Add1~3\))) # (!\u0|count\(3) & (\Add0~0_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(3),
	datab => \Add0~0_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X49_Y22_N10
\u1|count[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u1|count[3]~6_combout\ = (\u1|Add0~1_combout\ & ((\u1|count[3]~3_combout\) # ((\u1|count\(3) & \q0_clr~0_combout\)))) # (!\u1|Add0~1_combout\ & (((\u1|count\(3) & \q0_clr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|Add0~1_combout\,
	datab => \u1|count[3]~3_combout\,
	datac => \u1|count\(3),
	datad => \q0_clr~0_combout\,
	combout => \u1|count[3]~6_combout\);

-- Location: FF_X49_Y22_N11
\u1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u1|count[3]~6_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|count\(3));

-- Location: LCCOMB_X45_Y26_N26
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \u1|count\(1) $ (\u1|count\(3) $ (((\u1|count\(0) & \u1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X45_Y26_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\Add0~1_combout\ & (!\Add1~5\)) # (!\Add0~1_combout\ & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!\Add0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~1_combout\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X45_Y26_N20
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\u1|count\(1) & ((\u1|count\(3)) # ((\u1|count\(0) & \u1|count\(2))))) # (!\u1|count\(1) & (\u1|count\(0) & (\u1|count\(3) & \u1|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X45_Y26_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (\Add1~7\ & ((\Add0~2_combout\ $ (\u1|count\(2))))) # (!\Add1~7\ & (\Add0~2_combout\ $ (\u1|count\(2) $ (VCC))))
-- \Add1~9\ = CARRY((!\Add1~7\ & (\Add0~2_combout\ $ (\u1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \u1|count\(2),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X45_Y26_N28
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\u1|count\(2) & ((\u1|count\(1) & ((\u1|count\(0)) # (\u1|count\(3)))) # (!\u1|count\(1) & (\u1|count\(0) & \u1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X45_Y26_N16
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\Add1~9\ & (\u1|count\(3) $ ((!\Add0~3_combout\)))) # (!\Add1~9\ & ((\u1|count\(3) $ (\Add0~3_combout\)) # (GND)))
-- \Add1~11\ = CARRY((\u1|count\(3) $ (!\Add0~3_combout\)) # (!\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(3),
	datab => \Add0~3_combout\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X45_Y26_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = \Add1~11\ $ (((!\Add0~3_combout\) # (!\u1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u1|count\(3),
	datad => \Add0~3_combout\,
	cin => \Add1~11\,
	combout => \Add1~12_combout\);

-- Location: LCCOMB_X47_Y22_N8
\u2|count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[0]~0_combout\ = (\state~0_combout\ & ((\u2|count\(0) & ((!\q2_en~1_combout\))) # (!\u2|count\(0) & (!\q3_en~0_combout\ & \q2_en~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3_en~0_combout\,
	datab => \state~0_combout\,
	datac => \u2|count\(0),
	datad => \q2_en~1_combout\,
	combout => \u2|count[0]~0_combout\);

-- Location: FF_X47_Y22_N9
\u2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|count[0]~0_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(0));

-- Location: LCCOMB_X47_Y22_N18
\q1_clr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1_clr~2_combout\ = (!\u0|count\(2) & (\u0|count\(0) & (\u0|count\(3) & !\u0|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(2),
	datab => \u0|count\(0),
	datac => \u0|count\(3),
	datad => \u0|count\(1),
	combout => \q1_clr~2_combout\);

-- Location: LCCOMB_X47_Y22_N0
q1_clr : cycloneive_lcell_comb
-- Equation(s):
-- \q1_clr~combout\ = ((\count_enable~0_combout\ & (\q2_en~0_combout\ & \q1_clr~2_combout\))) # (!\state~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~0_combout\,
	datab => \state~0_combout\,
	datac => \q2_en~0_combout\,
	datad => \q1_clr~2_combout\,
	combout => \q1_clr~combout\);

-- Location: LCCOMB_X47_Y22_N28
\u2|count[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[2]~3_combout\ = (\u2|Add0~0_combout\ & ((\u2|count[3]~1_combout\) # ((!\q1_clr~combout\ & \u2|count\(2))))) # (!\u2|Add0~0_combout\ & (!\q1_clr~combout\ & (\u2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~0_combout\,
	datab => \q1_clr~combout\,
	datac => \u2|count\(2),
	datad => \u2|count[3]~1_combout\,
	combout => \u2|count[2]~3_combout\);

-- Location: FF_X47_Y22_N29
\u2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|count[2]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(2));

-- Location: LCCOMB_X47_Y22_N16
\q3_en~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \q3_en~0_combout\ = (\u2|count\(3) & (\u2|count\(0) & (!\u2|count\(1) & !\u2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(3),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(2),
	combout => \q3_en~0_combout\);

-- Location: LCCOMB_X49_Y22_N24
\u2|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[3]~1_combout\ = (!\BTN_RESET~input_o\ & (!\CLR~input_o\ & (!\q3_en~0_combout\ & \q2_en~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datab => \CLR~input_o\,
	datac => \q3_en~0_combout\,
	datad => \q2_en~1_combout\,
	combout => \u2|count[3]~1_combout\);

-- Location: LCCOMB_X47_Y22_N26
\u2|count[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[1]~2_combout\ = (\u2|count\(1) & (((!\u2|count\(0) & \u2|count[3]~1_combout\)) # (!\q1_clr~combout\))) # (!\u2|count\(1) & (\u2|count\(0) & ((\u2|count[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(0),
	datab => \q1_clr~combout\,
	datac => \u2|count\(1),
	datad => \u2|count[3]~1_combout\,
	combout => \u2|count[1]~2_combout\);

-- Location: FF_X47_Y22_N27
\u2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|count[1]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(1));

-- Location: LCCOMB_X48_Y22_N0
\q2_clr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2_clr~2_combout\ = (!\BTN_RESET~input_o\ & (!\CLR~input_o\ & ((!\q2_en~1_combout\) # (!\q3_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BTN_RESET~input_o\,
	datab => \CLR~input_o\,
	datac => \q3_en~0_combout\,
	datad => \q2_en~1_combout\,
	combout => \q2_clr~2_combout\);

-- Location: LCCOMB_X48_Y22_N16
\u3|count[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[2]~4_combout\ = (\u3|Add0~0_combout\ & (((\u3|count\(2) & \q2_clr~2_combout\)) # (!\u3|count[3]~1_combout\))) # (!\u3|Add0~0_combout\ & (((\u3|count\(2) & \q2_clr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~0_combout\,
	datab => \u3|count[3]~1_combout\,
	datac => \u3|count\(2),
	datad => \q2_clr~2_combout\,
	combout => \u3|count[2]~4_combout\);

-- Location: FF_X48_Y22_N17
\u3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|count[2]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(2));

-- Location: LCCOMB_X48_Y22_N22
\u3|count[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[3]~5_combout\ = (\u3|Add0~1_combout\ & (((\u3|count\(3) & \q2_clr~2_combout\)) # (!\u3|count[3]~1_combout\))) # (!\u3|Add0~1_combout\ & (((\u3|count\(3) & \q2_clr~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|Add0~1_combout\,
	datab => \u3|count[3]~1_combout\,
	datac => \u3|count\(3),
	datad => \q2_clr~2_combout\,
	combout => \u3|count[3]~5_combout\);

-- Location: FF_X48_Y22_N23
\u3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|count[3]~5_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(3));

-- Location: LCCOMB_X48_Y22_N8
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\u3|count\(1) & (\u3|count\(2) & (!\u3|count\(3) & \u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(1),
	datab => \u3|count\(2),
	datac => \u3|count\(3),
	datad => \u3|count\(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X48_Y22_N18
\u3|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[3]~1_combout\ = (((\Equal4~0_combout\) # (!\q2_en~1_combout\)) # (!\state~0_combout\)) # (!\q3_en~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3_en~0_combout\,
	datab => \state~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \q2_en~1_combout\,
	combout => \u3|count[3]~1_combout\);

-- Location: LCCOMB_X48_Y22_N12
\u3|count[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[0]~2_combout\ = (\u3|count\(0) & ((\q2_clr~2_combout\))) # (!\u3|count\(0) & (!\u3|count[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u3|count[3]~1_combout\,
	datac => \u3|count\(0),
	datad => \q2_clr~2_combout\,
	combout => \u3|count[0]~2_combout\);

-- Location: FF_X48_Y22_N13
\u3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|count[0]~2_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(0));

-- Location: LCCOMB_X52_Y14_N6
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (\u2|count\(1) & (\u3|count\(0) $ (VCC))) # (!\u2|count\(1) & (\u3|count\(0) & VCC))
-- \Add3~1\ = CARRY((\u2|count\(1) & \u3|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u3|count\(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCCOMB_X48_Y22_N30
\u3|count[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[1]~3_combout\ = (\u3|count\(1) & ((\q2_clr~2_combout\) # ((!\u3|count\(0) & !\u3|count[3]~1_combout\)))) # (!\u3|count\(1) & (\u3|count\(0) & (!\u3|count[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(0),
	datab => \u3|count[3]~1_combout\,
	datac => \u3|count\(1),
	datad => \q2_clr~2_combout\,
	combout => \u3|count[1]~3_combout\);

-- Location: FF_X48_Y22_N31
\u3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u3|count[1]~3_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u3|count\(1));

-- Location: LCCOMB_X52_Y14_N8
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\u2|count\(2) & ((\u3|count\(1) & (\Add3~1\ & VCC)) # (!\u3|count\(1) & (!\Add3~1\)))) # (!\u2|count\(2) & ((\u3|count\(1) & (!\Add3~1\)) # (!\u3|count\(1) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\u2|count\(2) & (!\u3|count\(1) & !\Add3~1\)) # (!\u2|count\(2) & ((!\Add3~1\) # (!\u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u3|count\(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X52_Y14_N24
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = \u3|count\(2) $ (\u3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datad => \u3|count\(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X47_Y22_N6
\u2|count[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u2|count[3]~4_combout\ = (\u2|Add0~1_combout\ & ((\u2|count[3]~1_combout\) # ((!\q1_clr~combout\ & \u2|count\(3))))) # (!\u2|Add0~1_combout\ & (!\q1_clr~combout\ & (\u2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|Add0~1_combout\,
	datab => \q1_clr~combout\,
	datac => \u2|count\(3),
	datad => \u2|count[3]~1_combout\,
	combout => \u2|count[3]~4_combout\);

-- Location: FF_X47_Y22_N7
\u2|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \u2|count[3]~4_combout\,
	clrn => \ALT_INV_RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u2|count\(3));

-- Location: LCCOMB_X52_Y14_N10
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((\Add2~0_combout\ $ (\u2|count\(3) $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((\Add2~0_combout\ & ((\u2|count\(3)) # (!\Add3~3\))) # (!\Add2~0_combout\ & (\u2|count\(3) & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \u2|count\(3),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X52_Y14_N30
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = \u3|count\(3) $ (\u3|count\(1) $ (((\u3|count\(2) & \u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X52_Y14_N12
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add2~1_combout\ & (!\Add3~5\)) # (!\Add2~1_combout\ & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!\Add2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X51_Y22_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (\u3|count\(3) & ((\u3|count\(1)) # ((\u3|count\(2) & \u3|count\(0))))) # (!\u3|count\(3) & (\u3|count\(2) & (\u3|count\(1) & \u3|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X52_Y14_N14
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~7\ & ((\u3|count\(2) $ (\Add2~2_combout\)))) # (!\Add3~7\ & (\u3|count\(2) $ (\Add2~2_combout\ $ (VCC))))
-- \Add3~9\ = CARRY((!\Add3~7\ & (\u3|count\(2) $ (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \Add2~2_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X52_Y14_N0
\Add2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~3_combout\ = (\u3|count\(2) & ((\u3|count\(0) & ((\u3|count\(3)) # (\u3|count\(1)))) # (!\u3|count\(0) & (\u3|count\(3) & \u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \Add2~3_combout\);

-- Location: LCCOMB_X52_Y14_N16
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add3~9\ & (\u3|count\(3) $ ((!\Add2~3_combout\)))) # (!\Add3~9\ & ((\u3|count\(3) $ (\Add2~3_combout\)) # (GND)))
-- \Add3~11\ = CARRY((\u3|count\(3) $ (!\Add2~3_combout\)) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \Add2~3_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X52_Y14_N18
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = \Add3~11\ $ (((!\Add2~3_combout\) # (!\u3|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datad => \Add2~3_combout\,
	cin => \Add3~11\,
	combout => \Add3~12_combout\);

-- Location: LCCOMB_X50_Y22_N24
\disp0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux6~0_combout\ = (\u0|count\(3) & (((\u0|count\(1)) # (\u0|count\(2))))) # (!\u0|count\(3) & (\u0|count\(0) & (\u0|count\(1) $ (!\u0|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(3),
	datad => \u0|count\(2),
	combout => \disp0|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y22_N4
\disp0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux5~0_combout\ = (\u0|count\(2) & (((\u0|count\(3))))) # (!\u0|count\(2) & (\u0|count\(1) & ((\u0|count\(3)) # (!\u0|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(2),
	datab => \u0|count\(0),
	datac => \u0|count\(3),
	datad => \u0|count\(1),
	combout => \disp0|Mux5~0_combout\);

-- Location: LCCOMB_X50_Y22_N30
\disp0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux4~0_combout\ = (\u0|count\(0)) # ((\u0|count\(1) & (\u0|count\(3))) # (!\u0|count\(1) & ((\u0|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(3),
	datad => \u0|count\(2),
	combout => \disp0|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y22_N2
\disp0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux3~0_combout\ = (\u0|count\(2) & (!\u0|count\(3) & (\u0|count\(0) $ (\u0|count\(1))))) # (!\u0|count\(2) & ((\u0|count\(3) $ (\u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(2),
	datab => \u0|count\(0),
	datac => \u0|count\(3),
	datad => \u0|count\(1),
	combout => \disp0|Mux3~0_combout\);

-- Location: LCCOMB_X50_Y22_N4
\disp0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux2~0_combout\ = (\u0|count\(3) & (((\u0|count\(1)) # (\u0|count\(2))))) # (!\u0|count\(3) & (\u0|count\(2) & (\u0|count\(0) $ (\u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(3),
	datad => \u0|count\(2),
	combout => \disp0|Mux2~0_combout\);

-- Location: LCCOMB_X50_Y22_N26
\disp0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux1~0_combout\ = (\u0|count\(0) & ((\u0|count\(1)) # (\u0|count\(3) $ (!\u0|count\(2))))) # (!\u0|count\(0) & ((\u0|count\(2) & ((\u0|count\(3)))) # (!\u0|count\(2) & (\u0|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(3),
	datad => \u0|count\(2),
	combout => \disp0|Mux1~0_combout\);

-- Location: LCCOMB_X50_Y22_N8
\disp0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp0|Mux0~0_combout\ = (\u0|count\(1) & (((\u0|count\(3))))) # (!\u0|count\(1) & (\u0|count\(2) $ (((\u0|count\(0) & !\u0|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|count\(0),
	datab => \u0|count\(1),
	datac => \u0|count\(3),
	datad => \u0|count\(2),
	combout => \disp0|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y26_N24
\disp1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux6~0_combout\ = (\u1|count\(3) & (((\u1|count\(2)) # (\u1|count\(1))))) # (!\u1|count\(3) & (\u1|count\(0) & (\u1|count\(2) $ (!\u1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \u1|count\(3),
	datac => \u1|count\(2),
	datad => \u1|count\(1),
	combout => \disp1|Mux6~0_combout\);

-- Location: LCCOMB_X45_Y26_N2
\disp1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux5~0_combout\ = (\u1|count\(2) & (((\u1|count\(3))))) # (!\u1|count\(2) & (\u1|count\(1) & ((\u1|count\(3)) # (!\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \disp1|Mux5~0_combout\);

-- Location: LCCOMB_X45_Y26_N24
\disp1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux4~0_combout\ = (\u1|count\(0)) # ((\u1|count\(1) & (\u1|count\(3))) # (!\u1|count\(1) & ((\u1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \disp1|Mux4~0_combout\);

-- Location: LCCOMB_X47_Y26_N26
\disp1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux3~0_combout\ = (\u1|count\(3) & (((!\u1|count\(2) & !\u1|count\(1))))) # (!\u1|count\(3) & (\u1|count\(1) $ (((\u1|count\(0) & \u1|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(0),
	datab => \u1|count\(3),
	datac => \u1|count\(2),
	datad => \u1|count\(1),
	combout => \disp1|Mux3~0_combout\);

-- Location: LCCOMB_X45_Y26_N22
\disp1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux2~0_combout\ = (\u1|count\(3) & ((\u1|count\(1)) # ((\u1|count\(2))))) # (!\u1|count\(3) & (\u1|count\(2) & (\u1|count\(1) $ (\u1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \disp1|Mux2~0_combout\);

-- Location: LCCOMB_X45_Y26_N0
\disp1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux1~0_combout\ = (\u1|count\(0) & ((\u1|count\(1)) # (\u1|count\(3) $ (!\u1|count\(2))))) # (!\u1|count\(0) & ((\u1|count\(2) & ((\u1|count\(3)))) # (!\u1|count\(2) & (\u1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \disp1|Mux1~0_combout\);

-- Location: LCCOMB_X45_Y26_N30
\disp1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp1|Mux0~0_combout\ = (\u1|count\(1) & (((\u1|count\(3))))) # (!\u1|count\(1) & (\u1|count\(2) $ (((\u1|count\(0) & !\u1|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u1|count\(1),
	datab => \u1|count\(0),
	datac => \u1|count\(3),
	datad => \u1|count\(2),
	combout => \disp1|Mux0~0_combout\);

-- Location: LCCOMB_X47_Y22_N12
\disp2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux6~0_combout\ = (\u2|count\(3) & ((\u2|count\(2)) # ((\u2|count\(1))))) # (!\u2|count\(3) & (\u2|count\(0) & (\u2|count\(2) $ (!\u2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp2|Mux6~0_combout\);

-- Location: LCCOMB_X47_Y22_N10
\disp2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux5~0_combout\ = (\u2|count\(2) & (((\u2|count\(3))))) # (!\u2|count\(2) & (\u2|count\(1) & ((\u2|count\(3)) # (!\u2|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp2|Mux5~0_combout\);

-- Location: LCCOMB_X47_Y22_N24
\disp2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux4~0_combout\ = (\u2|count\(0)) # ((\u2|count\(1) & ((\u2|count\(3)))) # (!\u2|count\(1) & (\u2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp2|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y14_N4
\disp2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux3~0_combout\ = (\u2|count\(2) & (!\u2|count\(3) & (\u2|count\(1) $ (\u2|count\(0))))) # (!\u2|count\(2) & (\u2|count\(1) $ (((\u2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(3),
	combout => \disp2|Mux3~0_combout\);

-- Location: LCCOMB_X52_Y14_N26
\disp2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux2~0_combout\ = (\u2|count\(2) & ((\u2|count\(3)) # (\u2|count\(1) $ (\u2|count\(0))))) # (!\u2|count\(2) & (\u2|count\(1) & ((\u2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(3),
	combout => \disp2|Mux2~0_combout\);

-- Location: LCCOMB_X52_Y14_N20
\disp2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux1~0_combout\ = (\u2|count\(0) & ((\u2|count\(1)) # (\u2|count\(2) $ (!\u2|count\(3))))) # (!\u2|count\(0) & ((\u2|count\(2) & ((\u2|count\(3)))) # (!\u2|count\(2) & (\u2|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(1),
	datab => \u2|count\(0),
	datac => \u2|count\(2),
	datad => \u2|count\(3),
	combout => \disp2|Mux1~0_combout\);

-- Location: LCCOMB_X47_Y22_N30
\disp2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp2|Mux0~0_combout\ = (\u2|count\(1) & (((\u2|count\(3))))) # (!\u2|count\(1) & (\u2|count\(2) $ (((\u2|count\(0) & !\u2|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u2|count\(2),
	datab => \u2|count\(0),
	datac => \u2|count\(1),
	datad => \u2|count\(3),
	combout => \disp2|Mux0~0_combout\);

-- Location: LCCOMB_X48_Y22_N20
\disp3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux6~0_combout\ = (\u3|count\(3) & ((\u3|count\(2)) # ((\u3|count\(1))))) # (!\u3|count\(3) & (\u3|count\(0) & (\u3|count\(2) $ (!\u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \disp3|Mux6~0_combout\);

-- Location: LCCOMB_X51_Y22_N18
\disp3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux5~0_combout\ = (\u3|count\(2) & (\u3|count\(3))) # (!\u3|count\(2) & (\u3|count\(1) & ((\u3|count\(3)) # (!\u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \disp3|Mux5~0_combout\);

-- Location: LCCOMB_X52_Y14_N2
\disp3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux4~0_combout\ = (\u3|count\(0)) # ((\u3|count\(1) & ((\u3|count\(3)))) # (!\u3|count\(1) & (\u3|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp3|Mux4~0_combout\);

-- Location: LCCOMB_X52_Y14_N28
\disp3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux3~0_combout\ = (\u3|count\(2) & (!\u3|count\(3) & (\u3|count\(0) $ (\u3|count\(1))))) # (!\u3|count\(2) & ((\u3|count\(3) $ (\u3|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp3|Mux3~0_combout\);

-- Location: LCCOMB_X51_Y22_N24
\disp3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux2~0_combout\ = (\u3|count\(3) & ((\u3|count\(2)) # ((\u3|count\(1))))) # (!\u3|count\(3) & (\u3|count\(2) & (\u3|count\(1) $ (\u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \disp3|Mux2~0_combout\);

-- Location: LCCOMB_X51_Y22_N6
\disp3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux1~0_combout\ = (\u3|count\(2) & ((\u3|count\(3)) # ((\u3|count\(1) & \u3|count\(0))))) # (!\u3|count\(2) & ((\u3|count\(1)) # ((!\u3|count\(3) & \u3|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(3),
	datab => \u3|count\(2),
	datac => \u3|count\(1),
	datad => \u3|count\(0),
	combout => \disp3|Mux1~0_combout\);

-- Location: LCCOMB_X52_Y14_N22
\disp3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \disp3|Mux0~0_combout\ = (\u3|count\(1) & (((\u3|count\(3))))) # (!\u3|count\(1) & (\u3|count\(2) $ (((\u3|count\(0) & !\u3|count\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u3|count\(2),
	datab => \u3|count\(0),
	datac => \u3|count\(3),
	datad => \u3|count\(1),
	combout => \disp3|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y22_N20
\q1_en~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \q1_en~1_combout\ = (\q1_en~0_combout\ & (!\q2_en~0_combout\ & (\u0|count\(3) & \count_enable~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q1_en~0_combout\,
	datab => \q2_en~0_combout\,
	datac => \u0|count\(3),
	datad => \count_enable~0_combout\,
	combout => \q1_en~1_combout\);

-- Location: LCCOMB_X48_Y22_N26
\q2_en~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \q2_en~2_combout\ = (!\q3_en~0_combout\ & \q2_en~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q3_en~0_combout\,
	datad => \q2_en~1_combout\,
	combout => \q2_en~2_combout\);

-- Location: LCCOMB_X47_Y22_N14
\u3|count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u3|count[3]~0_combout\ = (\q2_en~1_combout\ & (\q3_en~0_combout\ & !\Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q2_en~1_combout\,
	datab => \q3_en~0_combout\,
	datac => \Equal4~0_combout\,
	combout => \u3|count[3]~0_combout\);

-- Location: LCCOMB_X48_Y22_N14
\RST_SIG1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_SIG1~0_combout\ = (\RST~input_o\) # (!\q0_clr~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \q0_clr~0_combout\,
	combout => \RST_SIG1~0_combout\);

-- Location: LCCOMB_X48_Y22_N24
\RST_SIG2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RST_SIG2~0_combout\ = (\RST~input_o\) # (((\q3_en~0_combout\ & \q2_en~1_combout\)) # (!\state~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q3_en~0_combout\,
	datab => \RST~input_o\,
	datac => \state~0_combout\,
	datad => \q2_en~1_combout\,
	combout => \RST_SIG2~0_combout\);

ww_Q_cs(0) <= \Q_cs[0]~output_o\;

ww_Q_cs(1) <= \Q_cs[1]~output_o\;

ww_Q_cs(2) <= \Q_cs[2]~output_o\;

ww_Q_cs(3) <= \Q_cs[3]~output_o\;

ww_Q_cs(4) <= \Q_cs[4]~output_o\;

ww_Q_cs(5) <= \Q_cs[5]~output_o\;

ww_Q_cs(6) <= \Q_cs[6]~output_o\;

ww_Q_cs(7) <= \Q_cs[7]~output_o\;

ww_Q_s(0) <= \Q_s[0]~output_o\;

ww_Q_s(1) <= \Q_s[1]~output_o\;

ww_Q_s(2) <= \Q_s[2]~output_o\;

ww_Q_s(3) <= \Q_s[3]~output_o\;

ww_Q_s(4) <= \Q_s[4]~output_o\;

ww_Q_s(5) <= \Q_s[5]~output_o\;

ww_Q_s(6) <= \Q_s[6]~output_o\;

ww_Q_s(7) <= \Q_s[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_CLK2 <= \CLK2~output_o\;

ww_CLK3 <= \CLK3~output_o\;

ww_CLK4 <= \CLK4~output_o\;

ww_RST_SIG1 <= \RST_SIG1~output_o\;

ww_RST_SIG2 <= \RST_SIG2~output_o\;
END structure;


