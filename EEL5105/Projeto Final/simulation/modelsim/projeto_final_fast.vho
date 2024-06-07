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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "12/01/2023 15:30:32"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	usertop IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	CLK_50 : IN std_logic;
	LEDR : OUT std_logic_vector(17 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0)
	);
END usertop;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[1]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[3]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[4]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[5]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[7]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[8]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[9]	=>  Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[10]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[11]	=>  Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[12]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[13]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[14]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[15]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[16]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LEDR[17]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[2]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[3]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[4]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[5]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX7[6]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[0]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[1]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[2]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[4]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[5]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX6[6]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[0]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[1]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[2]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[3]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[4]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[5]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX5[6]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[0]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[1]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[2]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[3]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[4]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[5]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX4[6]	=>  Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[0]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[1]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[2]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[3]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[4]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[5]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX3[6]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[1]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[2]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[3]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[4]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[5]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX2[6]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[0]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[3]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[4]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[5]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX1[6]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[0]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[1]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[2]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[3]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[4]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[5]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- HEX0[6]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SW[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK_50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF usertop IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_CLK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \dtp|divfreq|CLK_1Hz~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dtp|somador3|Add0~2_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[3]~35_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[9]~47_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[20]~69_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|Equal99~0_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~15_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~16_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[6]~32_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[6]~33_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~38_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~39_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~40_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~45_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~46_combout\ : std_logic;
SIGNAL \dtp|muxsoma1|D[4]~0_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~59_combout\ : std_logic;
SIGNAL \dtp|muxsoma4|D[1]~0_combout\ : std_logic;
SIGNAL \dtp|somador2|Add0~2_combout\ : std_logic;
SIGNAL \dtp|muxsoma4|D[0]~1_combout\ : std_logic;
SIGNAL \dtp|mx2hx1|D[0]~0_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[6]~27_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~80_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~81_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~82_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~83_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~84_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~85_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~86_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~87_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~88_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~90_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~91_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~92_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~93_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~94_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~29_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~97_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~98_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~99_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~100_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~101_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~105_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~106_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~108_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~109_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~117_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~118_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~119_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~125_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~126_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~127_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~128_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~129_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~131_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~132_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~133_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~134_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~135_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~33_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~136_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~137_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~138_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~139_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~34_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~149_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~152_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~158_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~159_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~160_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~161_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~162_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~163_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~168_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~173_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~177_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~178_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~179_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~180_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~181_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~182_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~183_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~184_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~185_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~186_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~187_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~188_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~189_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~190_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~191_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~192_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~193_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~194_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~195_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~196_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~197_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~198_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~41_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~199_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~42_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~48_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~201_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~221_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~230_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~231_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~243_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~245_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~248_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~251_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~252_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~253_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~255_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~256_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~257_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~258_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~259_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~260_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~261_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~262_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~263_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~61_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~264_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~62_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~63_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~64_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~65_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~66_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~267_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~269_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~271_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~67_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~68_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~69_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~72_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~73_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~283_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~320_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~321_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~322_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~323_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~324_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~325_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~326_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~327_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~328_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~340_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~348_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~349_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~350_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~351_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~354_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~85_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~86_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~356_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~357_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~360_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~91_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~92_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~361_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~370_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~382_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_3|Equal15~0_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[1]~12_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[2]~14_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[6]~27_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~0_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~1_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~5_combout\ : std_logic;
SIGNAL \dtp|Comp|Equal0~0_combout\ : std_logic;
SIGNAL \dtp|LoadMux1|D[2]~1_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~48_combout\ : std_logic;
SIGNAL \dtp|somador2|Add0~6_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~397_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~101_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~102_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~103_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~403_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~105_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~110_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~410_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~9_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~10_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~8_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~412_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~416_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~417_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[2]~50_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[2]~51_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~54_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~55_combout\ : std_logic;
SIGNAL \dtp|divfreq|CLK_1Hz~clkctrl_outclk\ : std_logic;
SIGNAL \dtp|cntround|cont[0]~0_combout\ : std_logic;
SIGNAL \CLK_50~combout\ : std_logic;
SIGNAL \CLK_50~clkctrl_outclk\ : std_logic;
SIGNAL \bsc|BTN1_state.EsperaApertar\ : std_logic;
SIGNAL \bsc|BTN1_next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \bsc|BTN1_state.SaidaAtiva~regout\ : std_logic;
SIGNAL \ctr|PEstado.Innit~0_combout\ : std_logic;
SIGNAL \ctr|EAtual.Innit~feeder_combout\ : std_logic;
SIGNAL \bsc|BTN0_state.EsperaApertar\ : std_logic;
SIGNAL \bsc|BTN0_next.SaidaAtiva~0_combout\ : std_logic;
SIGNAL \bsc|BTN0_state.SaidaAtiva~regout\ : std_logic;
SIGNAL \ctr|EAtual.Innit~regout\ : std_logic;
SIGNAL \dtp|CSeq|cont[0]~2_combout\ : std_logic;
SIGNAL \dtp|R1_or_E5~combout\ : std_logic;
SIGNAL \dtp|CSeq|cont[2]~0_combout\ : std_logic;
SIGNAL \dtp|CSeq|Equal0~0_combout\ : std_logic;
SIGNAL \dtp|CSeq|end_seq~regout\ : std_logic;
SIGNAL \ctr|Selector1~0_combout\ : std_logic;
SIGNAL \ctr|Selector1~1_combout\ : std_logic;
SIGNAL \ctr|EAtual.Sequence~regout\ : std_logic;
SIGNAL \ctr|Selector2~0_combout\ : std_logic;
SIGNAL \ctr|Selector2~1_combout\ : std_logic;
SIGNAL \ctr|EAtual.Play~regout\ : std_logic;
SIGNAL \ctr|PEstado.Check~0_combout\ : std_logic;
SIGNAL \ctr|EAtual.Check~feeder_combout\ : std_logic;
SIGNAL \ctr|EAtual.Check~regout\ : std_logic;
SIGNAL \dtp|cntround|Add0~0_combout\ : std_logic;
SIGNAL \dtp|cntround|Add0~1_combout\ : std_logic;
SIGNAL \dtp|cntround|Add0~2_combout\ : std_logic;
SIGNAL \dtp|dectermo|Equal14~0_combout\ : std_logic;
SIGNAL \dtp|SelREG2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \ctr|Selector0~0_combout\ : std_logic;
SIGNAL \ctr|EAtual.Setup~regout\ : std_logic;
SIGNAL \ctr|Selector3~0_combout\ : std_logic;
SIGNAL \ctr|Selector3~1_combout\ : std_logic;
SIGNAL \ctr|EAtual.Sellect~feeder_combout\ : std_logic;
SIGNAL \ctr|EAtual.Sellect~regout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~352_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~65_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~353_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~355_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~84_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~40_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~345_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~298_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~346_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~343_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~268_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~344_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~341_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~342_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~347_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~108_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~87_combout\ : std_logic;
SIGNAL \dtp|CSeq|cont[1]~1_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~254_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~89_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~246_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~265_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~358_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~359_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~109_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~88_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~90_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~244_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~107_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~249_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~93_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~94_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~250_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~362_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~363_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~364_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~95_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~96_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~97_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[4]~58_combout\ : std_logic;
SIGNAL \dtp|muxsoma1|D[3]~1_combout\ : std_logic;
SIGNAL \dtp|somador1|Add0~1\ : std_logic;
SIGNAL \dtp|somador1|Add0~3\ : std_logic;
SIGNAL \dtp|somador1|Add0~4_combout\ : std_logic;
SIGNAL \dtp|somador1|Add0~2_combout\ : std_logic;
SIGNAL \dtp|somador1|Add0~0_combout\ : std_logic;
SIGNAL \dtp|somador2|Add0~3_combout\ : std_logic;
SIGNAL \dtp|somador2|Add0~4_combout\ : std_logic;
SIGNAL \dtp|somador3|Add0~1\ : std_logic;
SIGNAL \dtp|somador3|Add0~3\ : std_logic;
SIGNAL \dtp|somador3|Add0~5\ : std_logic;
SIGNAL \dtp|somador3|Add0~6_combout\ : std_logic;
SIGNAL \dtp|somador3|Add0~4_combout\ : std_logic;
SIGNAL \dtp|somador3|Add0~0_combout\ : std_logic;
SIGNAL \dtp|somador2|Add0~5_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~1\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~3\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~5\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~7\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~9\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~10_combout\ : std_logic;
SIGNAL \dtp|somador1|Add0~5\ : std_logic;
SIGNAL \dtp|somador1|Add0~6_combout\ : std_logic;
SIGNAL \dtp|somador3|Add0~7\ : std_logic;
SIGNAL \dtp|somador3|Add0~8_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~11\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~12_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~4_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~6_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal1~1_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal1~2_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~287_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~317_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~368_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~297_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~300_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~367_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~371_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~247_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~76_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~278_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~365_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~366_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~372_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~408_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~407_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~391_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~373_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~376_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~389_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~390_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~392_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~280_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~281_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~393_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~306_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~394_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~395_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~112_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~383_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~386_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~315_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~385_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~384_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~387_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~388_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~369_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~374_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~377_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~375_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~378_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~277_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~379_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~380_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~381_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~98_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~99_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[2]~100_combout\ : std_logic;
SIGNAL \dtp|Comp|Equal0~1_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~8_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[6]~25_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[6]~28_combout\ : std_logic;
SIGNAL \dtp|Comp|Equal0~3_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~110_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~111_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~113_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~114_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~115_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~116_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~31_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~120_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~121_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~122_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~0_combout\ : std_logic;
SIGNAL \dtp|somadorSeq|Add0~2_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal2~2_combout\ : std_logic;
SIGNAL \dtp|muxsoma1|D[3]~2_combout\ : std_logic;
SIGNAL \dtp|muxsoma1|D[3]~3_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~61_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~62_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~123_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~124_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~418_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~419_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~32_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~35_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~151_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~155_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~156_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~89_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~153_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~154_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~157_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~36_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~396_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal10~3_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal10~2_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~140_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~141_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~142_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~147_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~144_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~143_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~145_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~146_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~148_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~150_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~399_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~174_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~175_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~164_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~165_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~398_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~166_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~171_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~167_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~169_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~170_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~172_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~176_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~37_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~70_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~69_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~71_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~72_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~74_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~75_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~411_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~77_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~78_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~63_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~64_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~66_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~68_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~79_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~409_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~102_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~103_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~95_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~96_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~104_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~30_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[4]~38_combout\ : std_logic;
SIGNAL \dtp|Comp|Equal0~2_combout\ : std_logic;
SIGNAL \dtp|Comp|Equal0~4_combout\ : std_logic;
SIGNAL \dtp|LoadMux1|D[1]~2_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[0]~8_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[0]~29_combout\ : std_logic;
SIGNAL \dtp|rst_divfreq~combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[0]~30\ : std_logic;
SIGNAL \dtp|divfreq|cont[1]~32\ : std_logic;
SIGNAL \dtp|divfreq|cont[2]~33_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[2]~34\ : std_logic;
SIGNAL \dtp|divfreq|cont[3]~36\ : std_logic;
SIGNAL \dtp|divfreq|cont[4]~37_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[4]~38\ : std_logic;
SIGNAL \dtp|divfreq|cont[5]~39_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[5]~40\ : std_logic;
SIGNAL \dtp|divfreq|cont[6]~42\ : std_logic;
SIGNAL \dtp|divfreq|cont[7]~43_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[7]~44\ : std_logic;
SIGNAL \dtp|divfreq|cont[8]~45_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[8]~46\ : std_logic;
SIGNAL \dtp|divfreq|cont[9]~48\ : std_logic;
SIGNAL \dtp|divfreq|cont[10]~49_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[10]~50\ : std_logic;
SIGNAL \dtp|divfreq|cont[11]~51_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[11]~52\ : std_logic;
SIGNAL \dtp|divfreq|cont[12]~53_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[12]~54\ : std_logic;
SIGNAL \dtp|divfreq|cont[13]~55_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[13]~56\ : std_logic;
SIGNAL \dtp|divfreq|cont[14]~57_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[14]~58\ : std_logic;
SIGNAL \dtp|divfreq|cont[15]~59_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[15]~60\ : std_logic;
SIGNAL \dtp|divfreq|cont[16]~61_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[16]~62\ : std_logic;
SIGNAL \dtp|divfreq|cont[17]~64\ : std_logic;
SIGNAL \dtp|divfreq|cont[18]~65_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[18]~66\ : std_logic;
SIGNAL \dtp|divfreq|cont[19]~68\ : std_logic;
SIGNAL \dtp|divfreq|cont[20]~70\ : std_logic;
SIGNAL \dtp|divfreq|cont[21]~71_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[21]~72\ : std_logic;
SIGNAL \dtp|divfreq|cont[22]~74\ : std_logic;
SIGNAL \dtp|divfreq|cont[23]~75_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[23]~76\ : std_logic;
SIGNAL \dtp|divfreq|cont[24]~78\ : std_logic;
SIGNAL \dtp|divfreq|cont[25]~79_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[25]~80\ : std_logic;
SIGNAL \dtp|divfreq|cont[26]~88\ : std_logic;
SIGNAL \dtp|divfreq|cont[27]~89_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[26]~87_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[24]~77_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[17]~63_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~81_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[6]~41_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~3_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[1]~31_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~2_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~82_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~83_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~84_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~85_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~86_combout\ : std_logic;
SIGNAL \dtp|divfreq|CLK_1Hz~feeder_combout\ : std_logic;
SIGNAL \dtp|divfreq|CLK_1Hz~regout\ : std_logic;
SIGNAL \dtp|E5_or_E4clk1~combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[0]~9\ : std_logic;
SIGNAL \dtp|Ctime|cont[1]~11\ : std_logic;
SIGNAL \dtp|Ctime|cont[2]~12_combout\ : std_logic;
SIGNAL \dtp|LoadMux1|D[7]~0_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[2]~13\ : std_logic;
SIGNAL \dtp|Ctime|cont[3]~15\ : std_logic;
SIGNAL \dtp|Ctime|cont[4]~16_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[3]~14_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~21_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[4]~17\ : std_logic;
SIGNAL \dtp|Ctime|cont[5]~19\ : std_logic;
SIGNAL \dtp|Ctime|cont[6]~21\ : std_logic;
SIGNAL \dtp|Ctime|cont[7]~22_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[6]~20_combout\ : std_logic;
SIGNAL \dtp|Ctime|LessThan0~0_combout\ : std_logic;
SIGNAL \ctr|COMB~0_combout\ : std_logic;
SIGNAL \ctr|Selector4~0_combout\ : std_logic;
SIGNAL \ctr|Selector4~1_combout\ : std_logic;
SIGNAL \ctr|EAtual.Result~regout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~4_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~6_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[22]~73_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont[19]~67_combout\ : std_logic;
SIGNAL \dtp|divfreq|cont~28_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~7_combout\ : std_logic;
SIGNAL \dtp|divfreq|LessThan0~8_combout\ : std_logic;
SIGNAL \dtp|divfreq|sim_2hz~regout\ : std_logic;
SIGNAL \dtp|mx_led|D[0]~38_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[1]~49_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[2]~40_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[2]~50_combout\ : std_logic;
SIGNAL \dtp|dectermo|S~0_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[3]~51_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[4]~60_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[4]~41_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[4]~52_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[8]~42_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[8]~43_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[5]~53_combout\ : std_logic;
SIGNAL \dtp|dectermo|Equal14~1_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[6]~54_combout\ : std_logic;
SIGNAL \dtp|dectermo|Equal14~2_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[1]~39_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[7]~44_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[8]~61_combout\ : std_logic;
SIGNAL \dtp|dectermo|S[9]~1_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[9]~55_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[10]~56_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[11]~45_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[11]~57_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[12]~46_combout\ : std_logic;
SIGNAL \dtp|dectermo|Equal14~3_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[12]~47_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[13]~58_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[14]~59_combout\ : std_logic;
SIGNAL \dtp|dectermo|Equal14~4_combout\ : std_logic;
SIGNAL \dtp|mx_led|D[15]~48_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~14_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~17_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~19_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~18_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[1]~10_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[4]~20_combout\ : std_logic;
SIGNAL \dtp|Ctime|cont[5]~18_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~22_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~26_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~23_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~25_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~24_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output~27_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~29_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~30_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~56_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~57_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~31_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[7]~13_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[5]~28_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[6]~34_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[0]~0_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[1]~1_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[2]~2_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[3]~3_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[4]~4_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[5]~5_combout\ : std_logic;
SIGNAL \dtp|d7_hx7|output[6]~6_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~36_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~35_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~37_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[3]~41_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[0]~42_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[0]~43_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~44_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[2]~47_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~52_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~53_combout\ : std_logic;
SIGNAL \dtp|dec7bcd|output[1]~49_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[0]~0_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[1]~1_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[2]~2_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[3]~3_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[4]~4_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[5]~5_combout\ : std_logic;
SIGNAL \dtp|d7_hx6|output[6]~6_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[7]~26_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[0]~12_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[0]~10_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[0]~29_combout\ : std_logic;
SIGNAL \dtp|mx2hx1|D[0]~1_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[0]~11_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[0]~13_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[1]~30_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[1]~14_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[1]~15_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[1]~16_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[5]~24_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[5]~39_combout\ : std_logic;
SIGNAL \dtp|mx2hx1|D[6]~2_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[2]~17_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[2]~18_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[2]~19_combout\ : std_logic;
SIGNAL \dtp|d7_hx1_3|output[3]~0_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[3]~20_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[3]~21_combout\ : std_logic;
SIGNAL \dtp|d7_hx1_2|output[3]~0_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[3]~22_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[3]~23_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[4]~32_combout\ : std_logic;
SIGNAL \dtp|d7_hx1_3|output[4]~1_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[4]~31_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[4]~24_combout\ : std_logic;
SIGNAL \dtp|d7_hx1_3|output[5]~2_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[5]~25_combout\ : std_logic;
SIGNAL \dtp|d7_hx1_2|output[5]~1_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[5]~26_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[6]~28_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[6]~27_combout\ : std_logic;
SIGNAL \dtp|mx3hx1|D[6]~33_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~330_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~406_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~331_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~329_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[0]~81_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~332_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~73_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~333_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~334_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~335_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~336_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~337_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~338_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~339_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[0]~82_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[0]~83_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~70_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~71_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~107_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~74_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~272_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~275_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~273_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~266_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~274_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~276_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~106_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~75_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~76_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~270_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~286_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~288_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~289_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~284_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~282_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~279_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~285_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~290_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~77_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~311_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~413_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~312_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~292_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~313_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~314_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~316_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~318_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~319_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~303_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~304_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~307_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~305_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~308_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~309_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~310_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~294_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~295_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~405_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~291_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~293_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~296_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~299_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~301_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~302_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~78_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~79_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[1]~80_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_3|output[0]~0_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[0]~9_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[0]~10_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[0]~28_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[1]~32_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[1]~33_combout\ : std_logic;
SIGNAL \dtp|E4_or_E3~combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[1]~11_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[1]~13_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~45_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~44_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~46_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~43_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~47_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~52_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~200_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~49_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~50_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~51_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~53_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~54_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~55_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~56_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~104_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~57_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal2~4_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal2~3_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~211_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~212_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~209_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~207_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~208_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~210_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|Equal1~0_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~203_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~202_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~204_combout\ : std_logic;
SIGNAL \dtp|muxsoma1|D[3]~4_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~205_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~400_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~213_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~130_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~401_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~214_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~215_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~216_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~217_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~218_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~219_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~220_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~206_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~222_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~223_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~414_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~415_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~224_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~225_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~226_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~60_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~227_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~228_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~402_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~229_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~235_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~234_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~232_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~236_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~237_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~58_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~241_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~67_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~238_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~233_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~239_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[2]~240_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~404_combout\ : std_logic;
SIGNAL \dtp|muxsoma2|D[3]~242_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~59_combout\ : std_logic;
SIGNAL \dtp|decBCDsoma|output[3]~60_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[2]~15_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[2]~29_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[2]~16_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[2]~17_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[0]~8_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_4|output[3]~0_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[3]~18_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_3|output[3]~1_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[3]~19_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[4]~20_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_3|output[4]~2_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_4|output[4]~1_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[4]~21_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[4]~22_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[5]~23_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_4|output[5]~2_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[5]~24_combout\ : std_logic;
SIGNAL \dtp|d7_hx0_3|output[5]~3_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[5]~25_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[6]~30_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[6]~26_combout\ : std_logic;
SIGNAL \dtp|mx3hx0|D[6]~31_combout\ : std_logic;
SIGNAL \dtp|play1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \dtp|REG8|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dtp|SelREG2|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \dtp|CSeq|cont\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \dtp|Ctime|cont\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \dtp|cntround|cont\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dtp|divfreq|cont\ : std_logic_vector(27 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ctr|ALT_INV_EAtual.Innit~regout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
ww_CLK_50 <= CLK_50;
LEDR <= ww_LEDR;
HEX7 <= ww_HEX7;
HEX6 <= ww_HEX6;
HEX5 <= ww_HEX5;
HEX4 <= ww_HEX4;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dtp|divfreq|CLK_1Hz~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \dtp|divfreq|CLK_1Hz~regout\);

\CLK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK_50~combout\);
\ctr|ALT_INV_EAtual.Innit~regout\ <= NOT \ctr|EAtual.Innit~regout\;

-- Location: LCCOMB_X33_Y14_N24
\dtp|somador3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador3|Add0~2_combout\ = (\dtp|somador2|Add0~2_combout\ & ((\dtp|somador1|Add0~0_combout\ & (\dtp|somador3|Add0~1\ & VCC)) # (!\dtp|somador1|Add0~0_combout\ & (!\dtp|somador3|Add0~1\)))) # (!\dtp|somador2|Add0~2_combout\ & 
-- ((\dtp|somador1|Add0~0_combout\ & (!\dtp|somador3|Add0~1\)) # (!\dtp|somador1|Add0~0_combout\ & ((\dtp|somador3|Add0~1\) # (GND)))))
-- \dtp|somador3|Add0~3\ = CARRY((\dtp|somador2|Add0~2_combout\ & (!\dtp|somador1|Add0~0_combout\ & !\dtp|somador3|Add0~1\)) # (!\dtp|somador2|Add0~2_combout\ & ((!\dtp|somador3|Add0~1\) # (!\dtp|somador1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somador2|Add0~2_combout\,
	datab => \dtp|somador1|Add0~0_combout\,
	datad => VCC,
	cin => \dtp|somador3|Add0~1\,
	combout => \dtp|somador3|Add0~2_combout\,
	cout => \dtp|somador3|Add0~3\);

-- Location: LCFF_X36_Y24_N23
\dtp|divfreq|cont[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[9]~47_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(9));

-- Location: LCFF_X36_Y24_N11
\dtp|divfreq|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[3]~35_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(3));

-- Location: LCFF_X36_Y23_N13
\dtp|divfreq|cont[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[20]~69_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(20));

-- Location: LCCOMB_X36_Y24_N10
\dtp|divfreq|cont[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[3]~35_combout\ = (\dtp|divfreq|cont\(3) & (!\dtp|divfreq|cont[2]~34\)) # (!\dtp|divfreq|cont\(3) & ((\dtp|divfreq|cont[2]~34\) # (GND)))
-- \dtp|divfreq|cont[3]~36\ = CARRY((!\dtp|divfreq|cont[2]~34\) # (!\dtp|divfreq|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(3),
	datad => VCC,
	cin => \dtp|divfreq|cont[2]~34\,
	combout => \dtp|divfreq|cont[3]~35_combout\,
	cout => \dtp|divfreq|cont[3]~36\);

-- Location: LCCOMB_X36_Y24_N22
\dtp|divfreq|cont[9]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[9]~47_combout\ = (\dtp|divfreq|cont\(9) & (!\dtp|divfreq|cont[8]~46\)) # (!\dtp|divfreq|cont\(9) & ((\dtp|divfreq|cont[8]~46\) # (GND)))
-- \dtp|divfreq|cont[9]~48\ = CARRY((!\dtp|divfreq|cont[8]~46\) # (!\dtp|divfreq|cont\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(9),
	datad => VCC,
	cin => \dtp|divfreq|cont[8]~46\,
	combout => \dtp|divfreq|cont[9]~47_combout\,
	cout => \dtp|divfreq|cont[9]~48\);

-- Location: LCCOMB_X36_Y23_N12
\dtp|divfreq|cont[20]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[20]~69_combout\ = (\dtp|divfreq|cont\(20) & (\dtp|divfreq|cont[19]~68\ $ (GND))) # (!\dtp|divfreq|cont\(20) & (!\dtp|divfreq|cont[19]~68\ & VCC))
-- \dtp|divfreq|cont[20]~70\ = CARRY((\dtp|divfreq|cont\(20) & !\dtp|divfreq|cont[19]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(20),
	datad => VCC,
	cin => \dtp|divfreq|cont[19]~68\,
	combout => \dtp|divfreq|cont[20]~69_combout\,
	cout => \dtp|divfreq|cont[20]~70\);

-- Location: LCCOMB_X31_Y20_N4
\dtp|dec7bcd|Equal99~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|Equal99~0_combout\ = (\dtp|Ctime|cont\(1) & \dtp|Ctime|cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|Equal99~0_combout\);

-- Location: LCCOMB_X30_Y20_N24
\dtp|dec7bcd|output[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~15_combout\ = (!\dtp|Ctime|cont\(7) & \dtp|Ctime|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(7),
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[4]~15_combout\);

-- Location: LCCOMB_X30_Y20_N10
\dtp|dec7bcd|output[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~16_combout\ = (\dtp|dec7bcd|output[4]~15_combout\ & (!\dtp|Ctime|cont\(4) & ((\dtp|Ctime|cont\(2)) # (!\dtp|dec7bcd|output[4]~14_combout\)))) # (!\dtp|dec7bcd|output[4]~15_combout\ & (\dtp|dec7bcd|output[4]~14_combout\ & 
-- (\dtp|Ctime|cont\(4) & !\dtp|Ctime|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~15_combout\,
	datab => \dtp|dec7bcd|output[4]~14_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[4]~16_combout\);

-- Location: LCCOMB_X32_Y20_N10
\dtp|dec7bcd|output[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[6]~32_combout\ = (\dtp|Ctime|cont\(4) & ((\dtp|dec7bcd|output~27_combout\) # ((\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(6),
	datab => \dtp|dec7bcd|output~27_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[6]~32_combout\);

-- Location: LCCOMB_X32_Y20_N4
\dtp|dec7bcd|output[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[6]~33_combout\ = ((\dtp|dec7bcd|output[6]~32_combout\ & !\dtp|Ctime|cont\(5))) # (!\dtp|dec7bcd|output[5]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[6]~32_combout\,
	datab => \dtp|dec7bcd|output[5]~29_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[6]~33_combout\);

-- Location: LCCOMB_X32_Y20_N6
\dtp|dec7bcd|output[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~38_combout\ = (!\dtp|Ctime|cont\(2) & (\dtp|Ctime|cont\(4) & !\dtp|Ctime|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[3]~38_combout\);

-- Location: LCCOMB_X32_Y20_N16
\dtp|dec7bcd|output[3]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~39_combout\ = (\dtp|dec7bcd|output~21_combout\ & ((\dtp|Ctime|cont\(0)) # ((\dtp|Ctime|cont\(1) & \dtp|dec7bcd|output~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dec7bcd|output~22_combout\,
	datac => \dtp|dec7bcd|output~21_combout\,
	datad => \dtp|Ctime|cont\(0),
	combout => \dtp|dec7bcd|output[3]~39_combout\);

-- Location: LCCOMB_X32_Y20_N14
\dtp|dec7bcd|output[3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~40_combout\ = (\dtp|dec7bcd|output[3]~55_combout\ & (((\dtp|Ctime|cont\(5)) # (!\dtp|dec7bcd|output[3]~39_combout\)))) # (!\dtp|dec7bcd|output[3]~55_combout\ & (\dtp|dec7bcd|output[3]~38_combout\ & ((!\dtp|Ctime|cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~38_combout\,
	datab => \dtp|dec7bcd|output[3]~55_combout\,
	datac => \dtp|dec7bcd|output[3]~39_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[3]~40_combout\);

-- Location: LCCOMB_X31_Y20_N14
\dtp|dec7bcd|output[1]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~45_combout\ = (\dtp|Ctime|cont\(2) & (\dtp|Ctime|cont\(4) $ (((\dtp|Ctime|cont\(1)) # (\dtp|Ctime|cont\(3)))))) # (!\dtp|Ctime|cont\(2) & ((\dtp|Ctime|cont\(1) & (\dtp|Ctime|cont\(4) & \dtp|Ctime|cont\(3))) # (!\dtp|Ctime|cont\(1) & 
-- (!\dtp|Ctime|cont\(4) & !\dtp|Ctime|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[1]~45_combout\);

-- Location: LCCOMB_X31_Y20_N20
\dtp|dec7bcd|output[1]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~46_combout\ = (\dtp|Ctime|cont\(2) & (!\dtp|Ctime|cont\(4) & ((!\dtp|Ctime|cont\(3)) # (!\dtp|Ctime|cont\(1))))) # (!\dtp|Ctime|cont\(2) & (\dtp|Ctime|cont\(4) & ((\dtp|Ctime|cont\(1)) # (\dtp|Ctime|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[1]~46_combout\);

-- Location: LCCOMB_X34_Y14_N10
\dtp|muxsoma1|D[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma1|D[4]~0_combout\ = (\dtp|REG8|Q\(7) & \dtp|CSeq|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datad => \dtp|CSeq|cont\(1),
	combout => \dtp|muxsoma1|D[4]~0_combout\);

-- Location: LCCOMB_X34_Y14_N16
\dtp|muxsoma2|D[3]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~59_combout\ = (\dtp|REG8|Q\(6) & \dtp|CSeq|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datad => \dtp|CSeq|cont\(1),
	combout => \dtp|muxsoma2|D[3]~59_combout\);

-- Location: LCCOMB_X34_Y14_N4
\dtp|muxsoma4|D[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma4|D[1]~0_combout\ = (\dtp|REG8|Q\(4) & \dtp|CSeq|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|CSeq|cont\(1),
	combout => \dtp|muxsoma4|D[1]~0_combout\);

-- Location: LCCOMB_X34_Y14_N26
\dtp|somador2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador2|Add0~2_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|CSeq|cont\(2) & ((!\dtp|muxsoma4|D[1]~0_combout\))) # (!\dtp|CSeq|cont\(2) & (\dtp|CSeq|cont\(0) & \dtp|muxsoma4|D[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|CSeq|cont\(2),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma4|D[1]~0_combout\,
	combout => \dtp|somador2|Add0~2_combout\);

-- Location: LCCOMB_X32_Y14_N14
\dtp|muxsoma4|D[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma4|D[0]~1_combout\ = (\dtp|CSeq|cont\(0) & \dtp|REG8|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma4|D[0]~1_combout\);

-- Location: LCCOMB_X36_Y14_N0
\dtp|mx2hx1|D[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx2hx1|D[0]~0_combout\ = (!\dtp|decBCDsoma|output[7]~26_combout\ & ((\dtp|somadorSeq|Add0~12_combout\ & ((!\dtp|decBCDsoma|output[6]~25_combout\))) # (!\dtp|somadorSeq|Add0~12_combout\ & (!\dtp|decBCDsoma|output[5]~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~12_combout\,
	datab => \dtp|decBCDsoma|output[5]~24_combout\,
	datac => \dtp|decBCDsoma|output[6]~25_combout\,
	datad => \dtp|decBCDsoma|output[7]~26_combout\,
	combout => \dtp|mx2hx1|D[0]~0_combout\);

-- Location: LCCOMB_X36_Y14_N2
\dtp|decBCDsoma|output[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[6]~27_combout\ = (!\dtp|somadorSeq|Add0~8_combout\ & !\dtp|somadorSeq|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|somadorSeq|Add0~6_combout\,
	combout => \dtp|decBCDsoma|output[6]~27_combout\);

-- Location: LCCOMB_X29_Y13_N8
\dtp|muxsoma2|D[3]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~80_combout\ = (\dtp|REG8|Q\(2) & (\dtp|CSeq|cont\(0) & ((!\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) & ((\dtp|CSeq|cont\(0)) # (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~80_combout\);

-- Location: LCCOMB_X29_Y13_N6
\dtp|muxsoma2|D[3]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~81_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(5)) # ((\dtp|REG8|Q\(2) & \dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~81_combout\);

-- Location: LCCOMB_X29_Y13_N12
\dtp|muxsoma2|D[3]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~82_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) $ (((\dtp|muxsoma2|D[3]~81_combout\))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(6) & (!\dtp|muxsoma2|D[3]~80_combout\ & \dtp|muxsoma2|D[3]~81_combout\)) # (!\dtp|REG8|Q\(6) & 
-- (\dtp|muxsoma2|D[3]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~80_combout\,
	datad => \dtp|muxsoma2|D[3]~81_combout\,
	combout => \dtp|muxsoma2|D[3]~82_combout\);

-- Location: LCCOMB_X29_Y13_N22
\dtp|muxsoma2|D[3]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~83_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[3]~80_combout\) # (\dtp|muxsoma2|D[3]~81_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[3]~80_combout\ $ (\dtp|muxsoma2|D[3]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~80_combout\,
	datad => \dtp|muxsoma2|D[3]~81_combout\,
	combout => \dtp|muxsoma2|D[3]~83_combout\);

-- Location: LCCOMB_X29_Y13_N24
\dtp|muxsoma2|D[3]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~84_combout\ = (\dtp|REG8|Q\(7) & (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(2) $ (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & (\dtp|CSeq|cont\(0) $ (\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~84_combout\);

-- Location: LCCOMB_X29_Y13_N2
\dtp|muxsoma2|D[3]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~85_combout\ = (\dtp|REG8|Q\(6)) # ((\dtp|muxsoma2|D[3]~84_combout\ & \dtp|REG8|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~84_combout\,
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[3]~85_combout\);

-- Location: LCCOMB_X29_Y13_N0
\dtp|muxsoma2|D[3]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~86_combout\ = (\dtp|muxsoma2|D[3]~84_combout\ & (\dtp|muxsoma2|D[3]~82_combout\ $ (((\dtp|muxsoma2|D[3]~85_combout\) # (!\dtp|muxsoma2|D[3]~83_combout\))))) # (!\dtp|muxsoma2|D[3]~84_combout\ & ((\dtp|muxsoma2|D[3]~85_combout\ & 
-- ((!\dtp|muxsoma2|D[3]~83_combout\))) # (!\dtp|muxsoma2|D[3]~85_combout\ & (\dtp|muxsoma2|D[3]~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~82_combout\,
	datab => \dtp|muxsoma2|D[3]~83_combout\,
	datac => \dtp|muxsoma2|D[3]~84_combout\,
	datad => \dtp|muxsoma2|D[3]~85_combout\,
	combout => \dtp|muxsoma2|D[3]~86_combout\);

-- Location: LCCOMB_X31_Y15_N0
\dtp|muxsoma2|D[2]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~87_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(2)) # ((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(7)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(7) & 
-- \dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~87_combout\);

-- Location: LCCOMB_X32_Y15_N12
\dtp|muxsoma2|D[2]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~88_combout\ = (\dtp|REG8|Q\(2) & (((\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(7)) # ((\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~88_combout\);

-- Location: LCCOMB_X31_Y15_N20
\dtp|muxsoma2|D[3]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~90_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|CSeq|cont\(0))))) # (!\dtp|REG8|Q\(6) & ((\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~397_combout\))) # (!\dtp|CSeq|cont\(0) & (!\dtp|muxsoma2|D[2]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~89_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~397_combout\,
	combout => \dtp|muxsoma2|D[3]~90_combout\);

-- Location: LCCOMB_X31_Y15_N26
\dtp|muxsoma2|D[2]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~91_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~91_combout\);

-- Location: LCCOMB_X31_Y15_N16
\dtp|muxsoma2|D[2]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~92_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (((!\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(0))) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~92_combout\);

-- Location: LCCOMB_X31_Y15_N6
\dtp|muxsoma2|D[2]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~93_combout\ = (\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~91_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~92_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~91_combout\,
	datac => \dtp|muxsoma2|D[2]~92_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~93_combout\);

-- Location: LCCOMB_X31_Y15_N8
\dtp|muxsoma2|D[3]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~94_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~90_combout\ & (\dtp|muxsoma2|D[2]~93_combout\)) # (!\dtp|muxsoma2|D[3]~90_combout\ & ((\dtp|muxsoma2|D[2]~87_combout\))))) # (!\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[3]~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~93_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~90_combout\,
	datad => \dtp|muxsoma2|D[2]~87_combout\,
	combout => \dtp|muxsoma2|D[3]~94_combout\);

-- Location: LCCOMB_X30_Y14_N18
\dtp|decBCDsoma|output[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~29_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|muxsoma2|D[3]~86_combout\) # ((\dtp|CSeq|cont\(2))))) # (!\dtp|REG8|Q\(1) & (((!\dtp|CSeq|cont\(2) & \dtp|muxsoma2|D[3]~94_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~86_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|muxsoma2|D[3]~94_combout\,
	combout => \dtp|decBCDsoma|output[4]~29_combout\);

-- Location: LCCOMB_X30_Y14_N16
\dtp|muxsoma2|D[3]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~97_combout\ = \dtp|REG8|Q\(2) $ (((\dtp|REG8|Q\(4) & !\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[3]~97_combout\);

-- Location: LCCOMB_X30_Y14_N6
\dtp|muxsoma2|D[3]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~98_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2)) # (\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[3]~98_combout\);

-- Location: LCCOMB_X30_Y14_N24
\dtp|muxsoma2|D[3]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~99_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|muxsoma2|D[3]~98_combout\ & ((\dtp|REG8|Q\(7)) # (!\dtp|muxsoma2|D[3]~97_combout\)))) # (!\dtp|REG8|Q\(5) & (\dtp|muxsoma2|D[3]~98_combout\ $ (((\dtp|REG8|Q\(7) & 
-- !\dtp|muxsoma2|D[3]~97_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|muxsoma2|D[3]~97_combout\,
	datad => \dtp|muxsoma2|D[3]~98_combout\,
	combout => \dtp|muxsoma2|D[3]~99_combout\);

-- Location: LCCOMB_X29_Y14_N28
\dtp|muxsoma2|D[3]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~100_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) & \dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) $ (((\dtp|REG8|Q\(4) & \dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~100_combout\);

-- Location: LCCOMB_X30_Y14_N2
\dtp|muxsoma2|D[3]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~101_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|CSeq|cont\(0))))) # (!\dtp|REG8|Q\(6) & ((\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~99_combout\))) # (!\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[3]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[3]~100_combout\,
	datac => \dtp|muxsoma2|D[3]~99_combout\,
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[3]~101_combout\);

-- Location: LCCOMB_X31_Y13_N28
\dtp|muxsoma2|D[2]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~105_combout\ = (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(2) & ((!\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~105_combout\);

-- Location: LCCOMB_X31_Y13_N2
\dtp|muxsoma2|D[3]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~106_combout\ = ((!\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~105_combout\) # (!\dtp|REG8|Q\(7))))) # (!\dtp|CSeq|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~105_combout\,
	combout => \dtp|muxsoma2|D[3]~106_combout\);

-- Location: LCCOMB_X31_Y13_N20
\dtp|muxsoma2|D[3]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~108_combout\ = (\dtp|REG8|Q\(7) & (\dtp|muxsoma2|D[2]~107_combout\ & (\dtp|REG8|Q\(5) & \dtp|REG8|Q\(2)))) # (!\dtp|REG8|Q\(7) & (((!\dtp|muxsoma2|D[2]~107_combout\ & !\dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|muxsoma2|D[2]~107_combout\,
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~108_combout\);

-- Location: LCCOMB_X31_Y13_N30
\dtp|muxsoma2|D[3]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~109_combout\ = (\dtp|muxsoma2|D[3]~106_combout\) # ((\dtp|muxsoma2|D[3]~108_combout\ & \dtp|REG8|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~108_combout\,
	datab => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[3]~106_combout\,
	combout => \dtp|muxsoma2|D[3]~109_combout\);

-- Location: LCCOMB_X30_Y15_N14
\dtp|muxsoma2|D[3]~117\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~117_combout\ = (!\dtp|REG8|Q\(7) & (((!\dtp|REG8|Q\(5)) # (!\dtp|muxsoma2|D[2]~107_combout\)) # (!\dtp|REG8|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~107_combout\,
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[3]~117_combout\);

-- Location: LCCOMB_X31_Y15_N30
\dtp|muxsoma2|D[3]~118\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~118_combout\ = (\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(6) & ((!\dtp|muxsoma2|D[2]~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|muxsoma2|D[2]~91_combout\,
	combout => \dtp|muxsoma2|D[3]~118_combout\);

-- Location: LCCOMB_X30_Y15_N16
\dtp|muxsoma2|D[3]~119\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~119_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[3]~117_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[3]~118_combout\))))) # (!\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[3]~117_combout\,
	datad => \dtp|muxsoma2|D[3]~118_combout\,
	combout => \dtp|muxsoma2|D[3]~119_combout\);

-- Location: LCCOMB_X30_Y13_N2
\dtp|muxsoma2|D[3]~125\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~125_combout\ = \dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[3]~125_combout\);

-- Location: LCCOMB_X29_Y13_N10
\dtp|muxsoma2|D[2]~126\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~126_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(2)) # (\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~126_combout\);

-- Location: LCCOMB_X29_Y13_N28
\dtp|muxsoma2|D[3]~127\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~127_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[2]~112_combout\) # (!\dtp|muxsoma2|D[2]~111_combout\)))) # (!\dtp|REG8|Q\(6) & (!\dtp|muxsoma2|D[2]~126_combout\ & ((!\dtp|muxsoma2|D[2]~112_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~126_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[2]~111_combout\,
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|muxsoma2|D[3]~127_combout\);

-- Location: LCCOMB_X29_Y13_N14
\dtp|muxsoma2|D[3]~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~128_combout\ = (\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7) & !\dtp|muxsoma2|D[3]~127_combout\)) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7))))) # (!\dtp|muxsoma2|D[2]~112_combout\ & 
-- (((\dtp|muxsoma2|D[3]~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|muxsoma2|D[2]~112_combout\,
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|muxsoma2|D[3]~127_combout\,
	combout => \dtp|muxsoma2|D[3]~128_combout\);

-- Location: LCCOMB_X30_Y13_N16
\dtp|muxsoma2|D[3]~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~129_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~125_combout\))) # (!\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[3]~128_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~128_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[3]~125_combout\,
	combout => \dtp|muxsoma2|D[3]~129_combout\);

-- Location: LCCOMB_X31_Y13_N26
\dtp|muxsoma2|D[3]~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~131_combout\ = (\dtp|REG8|Q\(7) & (((!\dtp|muxsoma2|D[2]~107_combout\ & !\dtp|REG8|Q\(5))) # (!\dtp|muxsoma2|D[3]~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~130_combout\,
	datab => \dtp|muxsoma2|D[2]~107_combout\,
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[3]~131_combout\);

-- Location: LCCOMB_X31_Y13_N24
\dtp|muxsoma2|D[3]~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~132_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(2)) # ((\dtp|REG8|Q\(5) & \dtp|muxsoma2|D[2]~107_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) & (\dtp|muxsoma2|D[2]~107_combout\ & \dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|muxsoma2|D[2]~107_combout\,
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~132_combout\);

-- Location: LCCOMB_X31_Y13_N10
\dtp|muxsoma2|D[3]~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~133_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~131_combout\) # ((\dtp|muxsoma2|D[3]~132_combout\ & !\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~132_combout\,
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[3]~131_combout\,
	combout => \dtp|muxsoma2|D[3]~133_combout\);

-- Location: LCCOMB_X31_Y13_N0
\dtp|muxsoma2|D[3]~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~134_combout\ = (\dtp|REG8|Q\(6) & (((!\dtp|muxsoma2|D[3]~108_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) & ((!\dtp|muxsoma2|D[2]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~108_combout\,
	datad => \dtp|muxsoma2|D[2]~105_combout\,
	combout => \dtp|muxsoma2|D[3]~134_combout\);

-- Location: LCCOMB_X31_Y13_N18
\dtp|muxsoma2|D[3]~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~135_combout\ = (\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[3]~134_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[3]~134_combout\,
	combout => \dtp|muxsoma2|D[3]~135_combout\);

-- Location: LCCOMB_X31_Y13_N4
\dtp|decBCDsoma|output[4]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~33_combout\ = (\dtp|REG8|Q\(1) & (((\dtp|CSeq|cont\(2)) # (\dtp|muxsoma2|D[3]~133_combout\)))) # (!\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[3]~135_combout\ & (!\dtp|CSeq|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|muxsoma2|D[3]~135_combout\,
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|muxsoma2|D[3]~133_combout\,
	combout => \dtp|decBCDsoma|output[4]~33_combout\);

-- Location: LCCOMB_X31_Y13_N6
\dtp|muxsoma2|D[3]~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~136_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4) & \dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~136_combout\);

-- Location: LCCOMB_X31_Y13_N12
\dtp|muxsoma2|D[3]~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~137_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(4)) # (\dtp|REG8|Q\(2)))) # (!\dtp|REG8|Q\(6) & ((!\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~137_combout\);

-- Location: LCCOMB_X31_Y13_N14
\dtp|muxsoma2|D[3]~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~138_combout\ = (\dtp|muxsoma2|D[3]~137_combout\ & (\dtp|REG8|Q\(5) $ ((\dtp|REG8|Q\(7))))) # (!\dtp|muxsoma2|D[3]~137_combout\ & ((\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(6)))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(6)) # 
-- (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[3]~137_combout\,
	combout => \dtp|muxsoma2|D[3]~138_combout\);

-- Location: LCCOMB_X31_Y13_N8
\dtp|muxsoma2|D[3]~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~139_combout\ = (\dtp|muxsoma2|D[3]~136_combout\) # ((!\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[3]~138_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[3]~138_combout\,
	datad => \dtp|muxsoma2|D[3]~136_combout\,
	combout => \dtp|muxsoma2|D[3]~139_combout\);

-- Location: LCCOMB_X31_Y13_N22
\dtp|decBCDsoma|output[4]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~34_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|decBCDsoma|output[4]~33_combout\ & (\dtp|muxsoma2|D[3]~139_combout\)) # (!\dtp|decBCDsoma|output[4]~33_combout\ & ((\dtp|muxsoma2|D[3]~129_combout\))))) # (!\dtp|CSeq|cont\(2) & 
-- (((\dtp|decBCDsoma|output[4]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(2),
	datab => \dtp|muxsoma2|D[3]~139_combout\,
	datac => \dtp|decBCDsoma|output[4]~33_combout\,
	datad => \dtp|muxsoma2|D[3]~129_combout\,
	combout => \dtp|decBCDsoma|output[4]~34_combout\);

-- Location: LCCOMB_X35_Y14_N10
\dtp|muxsoma2|D[3]~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~149_combout\ = (\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[3]~410_combout\) # ((\dtp|muxsoma2|D[2]~62_combout\)))) # (!\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[3]~410_combout\ & (\dtp|muxsoma2|D[2]~62_combout\)) # 
-- (!\dtp|muxsoma2|D[3]~410_combout\ & ((\dtp|muxsoma1|D[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~112_combout\,
	datab => \dtp|muxsoma2|D[3]~410_combout\,
	datac => \dtp|muxsoma2|D[2]~62_combout\,
	datad => \dtp|muxsoma1|D[3]~3_combout\,
	combout => \dtp|muxsoma2|D[3]~149_combout\);

-- Location: LCCOMB_X30_Y15_N10
\dtp|muxsoma2|D[2]~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~152_combout\ = (!\dtp|REG8|Q\(5) & (((!\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~152_combout\);

-- Location: LCCOMB_X31_Y15_N18
\dtp|muxsoma2|D[2]~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~158_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~158_combout\);

-- Location: LCCOMB_X31_Y15_N12
\dtp|muxsoma2|D[2]~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~159_combout\ = (!\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(5) & ((!\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(7)))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (\dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~159_combout\);

-- Location: LCCOMB_X31_Y15_N10
\dtp|muxsoma2|D[2]~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~160_combout\ = (\dtp|muxsoma2|D[2]~159_combout\) # ((\dtp|muxsoma2|D[2]~92_combout\ & \dtp|REG8|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~159_combout\,
	datac => \dtp|muxsoma2|D[2]~92_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~160_combout\);

-- Location: LCCOMB_X31_Y15_N4
\dtp|muxsoma2|D[3]~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~161_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~160_combout\) # ((\dtp|REG8|Q\(6))))) # (!\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~87_combout\ & !\dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~160_combout\,
	datab => \dtp|muxsoma2|D[2]~87_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[3]~161_combout\);

-- Location: LCCOMB_X31_Y15_N14
\dtp|muxsoma2|D[3]~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~162_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~161_combout\ & ((\dtp|muxsoma2|D[2]~397_combout\))) # (!\dtp|muxsoma2|D[3]~161_combout\ & (\dtp|muxsoma2|D[2]~158_combout\)))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~161_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~158_combout\,
	datac => \dtp|muxsoma2|D[3]~161_combout\,
	datad => \dtp|muxsoma2|D[2]~397_combout\,
	combout => \dtp|muxsoma2|D[3]~162_combout\);

-- Location: LCCOMB_X31_Y14_N24
\dtp|muxsoma2|D[2]~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~163_combout\ = (\dtp|REG8|Q\(7) & (\dtp|decBCDsoma|Equal10~2_combout\ & ((\dtp|REG8|Q\(0)) # (\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[2]~163_combout\);

-- Location: LCCOMB_X37_Y14_N16
\dtp|muxsoma2|D[3]~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~168_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~168_combout\);

-- Location: LCCOMB_X30_Y14_N30
\dtp|muxsoma2|D[3]~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~173_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[3]~399_combout\ & (!\dtp|REG8|Q\(2))) # (!\dtp|muxsoma2|D[3]~399_combout\ & ((\dtp|REG8|Q\(2)) # (!\dtp|muxsoma2|D[2]~76_combout\))))) # (!\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2) & 
-- !\dtp|muxsoma2|D[2]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[3]~399_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~76_combout\,
	combout => \dtp|muxsoma2|D[3]~173_combout\);

-- Location: LCCOMB_X29_Y15_N20
\dtp|muxsoma2|D[2]~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~177_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~177_combout\);

-- Location: LCCOMB_X29_Y15_N30
\dtp|muxsoma2|D[2]~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~178_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~178_combout\);

-- Location: LCCOMB_X29_Y15_N12
\dtp|muxsoma2|D[3]~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~179_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6)) # ((!\dtp|muxsoma2|D[2]~417_combout\)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[2]~417_combout\,
	datad => \dtp|muxsoma2|D[2]~178_combout\,
	combout => \dtp|muxsoma2|D[3]~179_combout\);

-- Location: LCCOMB_X29_Y14_N20
\dtp|muxsoma2|D[2]~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~180_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & \dtp|REG8|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~180_combout\);

-- Location: LCCOMB_X29_Y14_N6
\dtp|muxsoma2|D[2]~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~181_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & \dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~181_combout\);

-- Location: LCCOMB_X29_Y14_N0
\dtp|muxsoma2|D[2]~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~182_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~181_combout\ & (\dtp|REG8|Q\(4) $ (\dtp|muxsoma2|D[2]~180_combout\)))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~180_combout\ & (\dtp|REG8|Q\(4) $ 
-- (\dtp|muxsoma2|D[2]~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~180_combout\,
	datad => \dtp|muxsoma2|D[2]~181_combout\,
	combout => \dtp|muxsoma2|D[2]~182_combout\);

-- Location: LCCOMB_X29_Y15_N6
\dtp|muxsoma2|D[3]~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~183_combout\ = (\dtp|muxsoma2|D[3]~179_combout\ & ((\dtp|muxsoma2|D[2]~182_combout\) # ((!\dtp|REG8|Q\(6))))) # (!\dtp|muxsoma2|D[3]~179_combout\ & (((\dtp|muxsoma2|D[2]~177_combout\ & \dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~179_combout\,
	datab => \dtp|muxsoma2|D[2]~182_combout\,
	datac => \dtp|muxsoma2|D[2]~177_combout\,
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[3]~183_combout\);

-- Location: LCCOMB_X29_Y15_N24
\dtp|muxsoma2|D[2]~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~184_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~184_combout\);

-- Location: LCCOMB_X29_Y15_N10
\dtp|muxsoma2|D[2]~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~185_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) $ (\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~185_combout\);

-- Location: LCCOMB_X29_Y15_N0
\dtp|muxsoma2|D[2]~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~186_combout\ = ((\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4))) # (!\dtp|muxsoma2|D[2]~185_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~185_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~186_combout\);

-- Location: LCCOMB_X29_Y15_N14
\dtp|muxsoma2|D[2]~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~187_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~187_combout\);

-- Location: LCCOMB_X29_Y15_N4
\dtp|muxsoma2|D[3]~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~188_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6)) # ((!\dtp|muxsoma2|D[2]~186_combout\)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[2]~187_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[2]~187_combout\,
	datad => \dtp|muxsoma2|D[2]~186_combout\,
	combout => \dtp|muxsoma2|D[3]~188_combout\);

-- Location: LCCOMB_X29_Y15_N22
\dtp|muxsoma2|D[2]~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~189_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(2)))) # 
-- (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~189_combout\);

-- Location: LCCOMB_X29_Y15_N28
\dtp|muxsoma2|D[2]~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~190_combout\ = (\dtp|muxsoma2|D[2]~189_combout\ & ((!\dtp|REG8|Q\(4)))) # (!\dtp|muxsoma2|D[2]~189_combout\ & (\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~189_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~190_combout\);

-- Location: LCCOMB_X29_Y15_N2
\dtp|muxsoma2|D[3]~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~191_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~188_combout\ & ((\dtp|muxsoma2|D[2]~190_combout\))) # (!\dtp|muxsoma2|D[3]~188_combout\ & (\dtp|muxsoma2|D[2]~184_combout\)))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~184_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~188_combout\,
	datad => \dtp|muxsoma2|D[2]~190_combout\,
	combout => \dtp|muxsoma2|D[3]~191_combout\);

-- Location: LCCOMB_X29_Y15_N16
\dtp|muxsoma2|D[3]~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~192_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6)) # ((\dtp|muxsoma2|D[2]~182_combout\)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[2]~184_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[2]~184_combout\,
	datad => \dtp|muxsoma2|D[2]~182_combout\,
	combout => \dtp|muxsoma2|D[3]~192_combout\);

-- Location: LCCOMB_X29_Y15_N18
\dtp|muxsoma2|D[3]~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~193_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~192_combout\ & (!\dtp|muxsoma2|D[2]~186_combout\)) # (!\dtp|muxsoma2|D[3]~192_combout\ & ((\dtp|muxsoma2|D[2]~178_combout\))))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~186_combout\,
	datac => \dtp|muxsoma2|D[3]~192_combout\,
	datad => \dtp|muxsoma2|D[2]~178_combout\,
	combout => \dtp|muxsoma2|D[3]~193_combout\);

-- Location: LCCOMB_X29_Y12_N0
\dtp|muxsoma2|D[2]~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~194_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~194_combout\);

-- Location: LCCOMB_X29_Y12_N18
\dtp|muxsoma2|D[3]~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~195_combout\ = (\dtp|REG8|Q\(6) & (((!\dtp|muxsoma2|D[2]~65_combout\ & \dtp|muxsoma2|D[2]~112_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[2]~194_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~194_combout\,
	datac => \dtp|muxsoma2|D[2]~65_combout\,
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|muxsoma2|D[3]~195_combout\);

-- Location: LCCOMB_X29_Y12_N24
\dtp|muxsoma2|D[2]~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~196_combout\ = (\dtp|REG8|Q\(0) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~196_combout\);

-- Location: LCCOMB_X29_Y12_N6
\dtp|muxsoma2|D[3]~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~197_combout\ = (\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) $ (\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~197_combout\);

-- Location: LCCOMB_X29_Y12_N12
\dtp|muxsoma2|D[3]~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~198_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~194_combout\))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~197_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~197_combout\,
	datab => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[2]~194_combout\,
	combout => \dtp|muxsoma2|D[3]~198_combout\);

-- Location: LCCOMB_X29_Y12_N2
\dtp|decBCDsoma|output[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~41_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~196_combout\) # ((\dtp|REG8|Q\(3))))) # (!\dtp|CSeq|cont\(0) & (((!\dtp|REG8|Q\(3) & \dtp|muxsoma2|D[3]~198_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~196_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|muxsoma2|D[3]~198_combout\,
	combout => \dtp|decBCDsoma|output[3]~41_combout\);

-- Location: LCCOMB_X29_Y12_N16
\dtp|muxsoma2|D[2]~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~199_combout\ = (\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(2) & ((!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~199_combout\);

-- Location: LCCOMB_X29_Y12_N10
\dtp|decBCDsoma|output[3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~42_combout\ = (\dtp|REG8|Q\(3) & ((\dtp|decBCDsoma|output[3]~41_combout\ & (\dtp|muxsoma2|D[2]~199_combout\)) # (!\dtp|decBCDsoma|output[3]~41_combout\ & ((\dtp|muxsoma2|D[3]~195_combout\))))) # (!\dtp|REG8|Q\(3) & 
-- (\dtp|decBCDsoma|output[3]~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|decBCDsoma|output[3]~41_combout\,
	datac => \dtp|muxsoma2|D[2]~199_combout\,
	datad => \dtp|muxsoma2|D[3]~195_combout\,
	combout => \dtp|decBCDsoma|output[3]~42_combout\);

-- Location: LCCOMB_X30_Y11_N28
\dtp|decBCDsoma|output[3]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~48_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5) & (!\dtp|decBCDsoma|output[2]~40_combout\ & !\dtp|decBCDsoma|output[3]~103_combout\)) # (!\dtp|REG8|Q\(5) & (\dtp|decBCDsoma|output[2]~40_combout\ $ 
-- (\dtp|decBCDsoma|output[3]~103_combout\))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & (!\dtp|decBCDsoma|output[2]~40_combout\ & !\dtp|decBCDsoma|output[3]~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|decBCDsoma|output[2]~40_combout\,
	datad => \dtp|decBCDsoma|output[3]~103_combout\,
	combout => \dtp|decBCDsoma|output[3]~48_combout\);

-- Location: LCCOMB_X32_Y13_N0
\dtp|muxsoma2|D[2]~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~201_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((\dtp|decBCDsoma|Equal2~3_combout\)))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[2]~201_combout\);

-- Location: LCCOMB_X30_Y15_N12
\dtp|muxsoma2|D[2]~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~221_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & (!\dtp|muxsoma2|D[2]~65_combout\ & (\dtp|REG8|Q\(4) $ (!\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~65_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~221_combout\);

-- Location: LCCOMB_X32_Y13_N24
\dtp|muxsoma2|D[3]~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~230_combout\ = (\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[3]~230_combout\);

-- Location: LCCOMB_X32_Y13_N10
\dtp|muxsoma2|D[3]~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~231_combout\ = (\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~230_combout\ & !\dtp|CSeq|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~230_combout\,
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[3]~231_combout\);

-- Location: LCCOMB_X31_Y11_N0
\dtp|muxsoma2|D[2]~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~243_combout\ = (\dtp|REG8|Q\(0) & (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(6) $ (((\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~243_combout\);

-- Location: LCCOMB_X31_Y11_N8
\dtp|muxsoma2|D[2]~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~245_combout\ = (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~243_combout\)) # (!\dtp|REG8|Q\(4) & ((!\dtp|muxsoma2|D[2]~244_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~243_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~244_combout\,
	combout => \dtp|muxsoma2|D[2]~245_combout\);

-- Location: LCCOMB_X32_Y11_N20
\dtp|muxsoma2|D[2]~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~248_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~246_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~247_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~246_combout\,
	combout => \dtp|muxsoma2|D[2]~248_combout\);

-- Location: LCCOMB_X31_Y11_N28
\dtp|muxsoma2|D[2]~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~251_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0) & (!\dtp|muxsoma2|D[2]~250_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~249_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|muxsoma2|D[2]~250_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~249_combout\,
	combout => \dtp|muxsoma2|D[2]~251_combout\);

-- Location: LCCOMB_X31_Y11_N6
\dtp|muxsoma2|D[2]~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~252_combout\ = (\dtp|muxsoma2|D[2]~251_combout\) # ((!\dtp|REG8|Q\(6) & (!\dtp|muxsoma2|D[2]~76_combout\ & !\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~76_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~251_combout\,
	combout => \dtp|muxsoma2|D[2]~252_combout\);

-- Location: LCCOMB_X32_Y11_N22
\dtp|muxsoma2|D[2]~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~253_combout\ = (\dtp|muxsoma2|D[2]~248_combout\ & (((\dtp|muxsoma2|D[2]~252_combout\)) # (!\dtp|CSeq|cont\(0)))) # (!\dtp|muxsoma2|D[2]~248_combout\ & (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~245_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~248_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~252_combout\,
	datad => \dtp|muxsoma2|D[2]~245_combout\,
	combout => \dtp|muxsoma2|D[2]~253_combout\);

-- Location: LCCOMB_X32_Y11_N16
\dtp|muxsoma2|D[2]~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~255_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~254_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~246_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~246_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~254_combout\,
	combout => \dtp|muxsoma2|D[2]~255_combout\);

-- Location: LCCOMB_X31_Y11_N24
\dtp|muxsoma2|D[2]~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~256_combout\ = \dtp|REG8|Q\(6) $ (((!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~256_combout\);

-- Location: LCCOMB_X31_Y11_N14
\dtp|muxsoma2|D[2]~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~257_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~256_combout\)) # (!\dtp|REG8|Q\(0) & ((!\dtp|muxsoma2|D[2]~244_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~256_combout\,
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~244_combout\,
	combout => \dtp|muxsoma2|D[2]~257_combout\);

-- Location: LCCOMB_X31_Y11_N20
\dtp|muxsoma2|D[2]~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~258_combout\ = (\dtp|muxsoma2|D[2]~257_combout\) # ((!\dtp|REG8|Q\(4) & !\dtp|muxsoma2|D[2]~250_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~257_combout\,
	datad => \dtp|muxsoma2|D[2]~250_combout\,
	combout => \dtp|muxsoma2|D[2]~258_combout\);

-- Location: LCCOMB_X32_Y11_N6
\dtp|muxsoma2|D[2]~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~259_combout\ = (\dtp|muxsoma2|D[2]~255_combout\ & ((\dtp|muxsoma2|D[2]~258_combout\) # ((!\dtp|CSeq|cont\(0))))) # (!\dtp|muxsoma2|D[2]~255_combout\ & (((\dtp|muxsoma2|D[2]~252_combout\ & \dtp|CSeq|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~258_combout\,
	datab => \dtp|muxsoma2|D[2]~252_combout\,
	datac => \dtp|muxsoma2|D[2]~255_combout\,
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[2]~259_combout\);

-- Location: LCCOMB_X32_Y11_N12
\dtp|muxsoma2|D[2]~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~260_combout\ = (\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(0) & (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~260_combout\);

-- Location: LCCOMB_X31_Y11_N30
\dtp|muxsoma2|D[2]~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~261_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~249_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~256_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~249_combout\,
	combout => \dtp|muxsoma2|D[2]~261_combout\);

-- Location: LCCOMB_X29_Y11_N24
\dtp|muxsoma2|D[2]~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~262_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5)) # (\dtp|REG8|Q\(6)))) # (!\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(6)) # (!\dtp|REG8|Q\(5)))))) # (!\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(6) $ (((\dtp|REG8|Q\(7) & 
-- !\dtp|REG8|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~262_combout\);

-- Location: LCCOMB_X32_Y11_N10
\dtp|muxsoma2|D[2]~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~263_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~261_combout\ & (!\dtp|muxsoma2|D[2]~262_combout\)) # (!\dtp|muxsoma2|D[2]~261_combout\ & ((\dtp|muxsoma2|D[2]~260_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~262_combout\,
	datac => \dtp|muxsoma2|D[2]~261_combout\,
	datad => \dtp|muxsoma2|D[2]~260_combout\,
	combout => \dtp|muxsoma2|D[2]~263_combout\);

-- Location: LCCOMB_X32_Y11_N28
\dtp|decBCDsoma|output[1]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~61_combout\ = (\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[2]~263_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~263_combout\,
	combout => \dtp|decBCDsoma|output[1]~61_combout\);

-- Location: LCCOMB_X29_Y11_N6
\dtp|muxsoma2|D[2]~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~264_combout\ = (\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~264_combout\);

-- Location: LCCOMB_X32_Y11_N4
\dtp|decBCDsoma|output[1]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~62_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~264_combout\)) # (!\dtp|REG8|Q\(2) & ((!\dtp|muxsoma2|D[2]~265_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~264_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~265_combout\,
	combout => \dtp|decBCDsoma|output[1]~62_combout\);

-- Location: LCCOMB_X32_Y11_N2
\dtp|decBCDsoma|output[1]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~63_combout\ = (\dtp|decBCDsoma|output[1]~105_combout\) # ((!\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[1]~61_combout\) # (\dtp|decBCDsoma|output[1]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~40_combout\,
	datab => \dtp|decBCDsoma|output[1]~61_combout\,
	datac => \dtp|decBCDsoma|output[1]~62_combout\,
	datad => \dtp|decBCDsoma|output[1]~105_combout\,
	combout => \dtp|decBCDsoma|output[1]~63_combout\);

-- Location: LCCOMB_X33_Y11_N30
\dtp|decBCDsoma|output[1]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~64_combout\ = (\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) $ (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & 
-- \dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|decBCDsoma|output[1]~64_combout\);

-- Location: LCCOMB_X33_Y11_N0
\dtp|decBCDsoma|output[1]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~65_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[2]~266_combout\))) # (!\dtp|muxsoma2|D[2]~112_combout\ & (\dtp|decBCDsoma|output[1]~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|decBCDsoma|output[1]~64_combout\,
	datac => \dtp|muxsoma2|D[2]~266_combout\,
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|decBCDsoma|output[1]~65_combout\);

-- Location: LCCOMB_X29_Y12_N26
\dtp|decBCDsoma|output[1]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~66_combout\ = (\dtp|decBCDsoma|output[2]~40_combout\ & (((\dtp|CSeq|cont\(0))))) # (!\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[1]~65_combout\) # ((\dtp|muxsoma2|D[2]~196_combout\ & \dtp|CSeq|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~196_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|decBCDsoma|output[2]~40_combout\,
	datad => \dtp|decBCDsoma|output[1]~65_combout\,
	combout => \dtp|decBCDsoma|output[1]~66_combout\);

-- Location: LCCOMB_X30_Y11_N14
\dtp|muxsoma2|D[2]~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~267_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(6))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~267_combout\);

-- Location: LCCOMB_X30_Y11_N30
\dtp|muxsoma2|D[2]~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~269_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~267_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~268_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~267_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~269_combout\);

-- Location: LCCOMB_X30_Y11_N18
\dtp|muxsoma2|D[2]~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~271_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~270_combout\) # ((\dtp|CSeq|cont\(0))))) # (!\dtp|REG8|Q\(2) & (((\dtp|muxsoma2|D[2]~267_combout\ & !\dtp|CSeq|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~270_combout\,
	datac => \dtp|muxsoma2|D[2]~267_combout\,
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[2]~271_combout\);

-- Location: LCCOMB_X30_Y11_N12
\dtp|decBCDsoma|output[1]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~67_combout\ = (\dtp|REG8|Q\(3) & (\dtp|muxsoma2|D[2]~269_combout\)) # (!\dtp|REG8|Q\(3) & ((\dtp|muxsoma2|D[2]~271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|muxsoma2|D[2]~269_combout\,
	datad => \dtp|muxsoma2|D[2]~271_combout\,
	combout => \dtp|decBCDsoma|output[1]~67_combout\);

-- Location: LCCOMB_X29_Y12_N28
\dtp|decBCDsoma|output[1]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~68_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(0) $ (((\dtp|decBCDsoma|output[1]~67_combout\ & !\dtp|REG8|Q\(3)))))) # (!\dtp|REG8|Q\(4) & (!\dtp|decBCDsoma|output[1]~67_combout\ & (\dtp|REG8|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001000011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|decBCDsoma|output[1]~67_combout\,
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|decBCDsoma|output[1]~68_combout\);

-- Location: LCCOMB_X29_Y12_N14
\dtp|decBCDsoma|output[1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~69_combout\ = (\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[1]~66_combout\ & (!\dtp|decBCDsoma|output[1]~68_combout\)) # (!\dtp|decBCDsoma|output[1]~66_combout\ & ((\dtp|decBCDsoma|output[1]~67_combout\))))) # 
-- (!\dtp|decBCDsoma|output[2]~40_combout\ & (((\dtp|decBCDsoma|output[1]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~40_combout\,
	datab => \dtp|decBCDsoma|output[1]~68_combout\,
	datac => \dtp|decBCDsoma|output[1]~67_combout\,
	datad => \dtp|decBCDsoma|output[1]~66_combout\,
	combout => \dtp|decBCDsoma|output[1]~69_combout\);

-- Location: LCCOMB_X30_Y12_N22
\dtp|decBCDsoma|output[1]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~72_combout\ = (\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[2]~107_combout\ $ (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~107_combout\ & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))) # 
-- (!\dtp|muxsoma2|D[2]~107_combout\ & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~107_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|decBCDsoma|output[1]~72_combout\);

-- Location: LCCOMB_X30_Y12_N12
\dtp|decBCDsoma|output[1]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~73_combout\ = (\dtp|REG8|Q\(3) & (\dtp|decBCDsoma|output[1]~72_combout\ & (\dtp|CSeq|cont\(0) & !\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|decBCDsoma|output[1]~72_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|decBCDsoma|output[1]~73_combout\);

-- Location: LCCOMB_X31_Y12_N24
\dtp|muxsoma2|D[2]~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~283_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(0))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~283_combout\);

-- Location: LCCOMB_X37_Y14_N12
\dtp|muxsoma2|D[2]~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~320_combout\ = \dtp|REG8|Q\(4) $ (\dtp|REG8|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~320_combout\);

-- Location: LCCOMB_X37_Y14_N10
\dtp|muxsoma2|D[3]~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~321_combout\ = (\dtp|muxsoma2|D[2]~320_combout\ & (((!\dtp|REG8|Q\(2) & !\dtp|muxsoma2|D[2]~167_combout\)) # (!\dtp|REG8|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~320_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~167_combout\,
	combout => \dtp|muxsoma2|D[3]~321_combout\);

-- Location: LCCOMB_X37_Y14_N24
\dtp|muxsoma2|D[3]~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~322_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(0))) # (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~167_combout\))))) # (!\dtp|REG8|Q\(2) & (((\dtp|muxsoma2|D[2]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~167_combout\,
	combout => \dtp|muxsoma2|D[3]~322_combout\);

-- Location: LCCOMB_X37_Y14_N14
\dtp|muxsoma2|D[3]~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~323_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|REG8|Q\(0) & !\dtp|muxsoma2|D[2]~167_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~167_combout\,
	combout => \dtp|muxsoma2|D[3]~323_combout\);

-- Location: LCCOMB_X36_Y14_N18
\dtp|muxsoma2|D[3]~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~324_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~323_combout\ & ((\dtp|REG8|Q\(7)) # (!\dtp|muxsoma2|D[3]~322_combout\))) # (!\dtp|muxsoma2|D[3]~323_combout\ & ((\dtp|muxsoma2|D[3]~322_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~323_combout\,
	datad => \dtp|muxsoma2|D[3]~322_combout\,
	combout => \dtp|muxsoma2|D[3]~324_combout\);

-- Location: LCCOMB_X35_Y14_N28
\dtp|muxsoma2|D[3]~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~325_combout\ = (\dtp|muxsoma2|D[3]~324_combout\ & (((\dtp|somadorSeq|Add0~0_combout\) # (!\dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|muxsoma2|D[3]~322_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~322_combout\,
	datab => \dtp|muxsoma2|D[3]~324_combout\,
	datac => \dtp|somadorSeq|Add0~0_combout\,
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[3]~325_combout\);

-- Location: LCCOMB_X35_Y14_N2
\dtp|muxsoma2|D[3]~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~326_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~321_combout\) # ((\dtp|muxsoma2|D[3]~325_combout\)))) # (!\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[3]~321_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[3]~325_combout\,
	combout => \dtp|muxsoma2|D[3]~326_combout\);

-- Location: LCCOMB_X30_Y11_N22
\dtp|muxsoma2|D[3]~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~327_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(4)) # ((\dtp|REG8|Q\(6) & \dtp|REG8|Q\(5))))) # (!\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) & \dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~327_combout\);

-- Location: LCCOMB_X30_Y11_N0
\dtp|muxsoma2|D[3]~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~328_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|REG8|Q\(7) & \dtp|muxsoma2|D[3]~327_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(0) $ (((\dtp|muxsoma2|D[3]~327_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[3]~327_combout\,
	combout => \dtp|muxsoma2|D[3]~328_combout\);

-- Location: LCCOMB_X35_Y12_N2
\dtp|muxsoma2|D[2]~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~340_combout\ = \dtp|REG8|Q\(0) $ (((\dtp|REG8|Q\(4) & \dtp|CSeq|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~340_combout\);

-- Location: LCCOMB_X30_Y11_N26
\dtp|muxsoma2|D[2]~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~348_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~270_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~268_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~268_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~270_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~348_combout\);

-- Location: LCCOMB_X33_Y11_N18
\dtp|muxsoma2|D[2]~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~349_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~266_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~273_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~266_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~273_combout\,
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~349_combout\);

-- Location: LCCOMB_X33_Y11_N16
\dtp|muxsoma2|D[2]~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~350_combout\ = (\dtp|muxsoma2|D[2]~349_combout\) # ((\dtp|muxsoma2|D[2]~288_combout\ & !\dtp|REG8|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~288_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~349_combout\,
	combout => \dtp|muxsoma2|D[2]~350_combout\);

-- Location: LCCOMB_X33_Y11_N26
\dtp|muxsoma2|D[2]~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~351_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~348_combout\ & (\dtp|muxsoma2|D[2]~350_combout\)) # (!\dtp|muxsoma2|D[2]~348_combout\ & ((\dtp|muxsoma2|D[2]~346_combout\))))) # (!\dtp|CSeq|cont\(0) & 
-- (\dtp|muxsoma2|D[2]~348_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~348_combout\,
	datac => \dtp|muxsoma2|D[2]~350_combout\,
	datad => \dtp|muxsoma2|D[2]~346_combout\,
	combout => \dtp|muxsoma2|D[2]~351_combout\);

-- Location: LCCOMB_X31_Y12_N6
\dtp|muxsoma2|D[2]~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~354_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(0))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(0))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((!\dtp|REG8|Q\(6) & 
-- !\dtp|REG8|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~354_combout\);

-- Location: LCCOMB_X31_Y12_N8
\dtp|decBCDsoma|output[2]~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~85_combout\ = (!\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~273_combout\)) # (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~266_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~273_combout\,
	datad => \dtp|muxsoma2|D[2]~266_combout\,
	combout => \dtp|decBCDsoma|output[2]~85_combout\);

-- Location: LCCOMB_X31_Y11_N12
\dtp|decBCDsoma|output[2]~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~86_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|decBCDsoma|output[2]~85_combout\) # ((\dtp|muxsoma2|D[2]~267_combout\ & \dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~267_combout\,
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|decBCDsoma|output[2]~85_combout\,
	combout => \dtp|decBCDsoma|output[2]~86_combout\);

-- Location: LCCOMB_X32_Y11_N14
\dtp|muxsoma2|D[2]~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~356_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((!\dtp|muxsoma2|D[2]~265_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~247_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~265_combout\,
	combout => \dtp|muxsoma2|D[2]~356_combout\);

-- Location: LCCOMB_X32_Y11_N8
\dtp|muxsoma2|D[2]~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~357_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~356_combout\ $ (\dtp|REG8|Q\(0))))) # (!\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~356_combout\,
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~357_combout\);

-- Location: LCCOMB_X30_Y11_N16
\dtp|muxsoma2|D[2]~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~360_combout\ = \dtp|REG8|Q\(6) $ (((\dtp|muxsoma2|D[2]~107_combout\ & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7)))) # (!\dtp|muxsoma2|D[2]~107_combout\ & (!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~107_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~360_combout\);

-- Location: LCCOMB_X30_Y11_N10
\dtp|decBCDsoma|output[2]~91\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~91_combout\ = (\dtp|muxsoma2|D[2]~107_combout\ & ((\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))))) # (!\dtp|muxsoma2|D[2]~107_combout\ & (!\dtp|REG8|Q\(6) & 
-- ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~107_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|decBCDsoma|output[2]~91_combout\);

-- Location: LCCOMB_X30_Y11_N4
\dtp|decBCDsoma|output[2]~92\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~92_combout\ = (\dtp|REG8|Q\(3) & (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~360_combout\))) # (!\dtp|REG8|Q\(3) & (((\dtp|decBCDsoma|output[2]~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~360_combout\,
	datad => \dtp|decBCDsoma|output[2]~91_combout\,
	combout => \dtp|decBCDsoma|output[2]~92_combout\);

-- Location: LCCOMB_X31_Y11_N10
\dtp|muxsoma2|D[2]~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~361_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) $ (((!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(0)))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~361_combout\);

-- Location: LCCOMB_X33_Y15_N10
\dtp|muxsoma2|D[2]~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~370_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~369_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~407_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~407_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~369_combout\,
	combout => \dtp|muxsoma2|D[2]~370_combout\);

-- Location: LCCOMB_X33_Y15_N2
\dtp|muxsoma2|D[2]~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~382_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) $ (((!\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~382_combout\);

-- Location: LCCOMB_X33_Y16_N12
\dtp|d7_hx0_3|Equal15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_3|Equal15~0_combout\ = (\dtp|decBCDsoma|output[3]~60_combout\ & \dtp|decBCDsoma|output[2]~100_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|decBCDsoma|output[3]~60_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|d7_hx0_3|Equal15~0_combout\);

-- Location: LCCOMB_X34_Y16_N26
\dtp|mx3hx0|D[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[1]~12_combout\ = (\SW~combout\(1) & ((\SW~combout\(0) & ((\SW~combout\(3)))) # (!\SW~combout\(0) & (\SW~combout\(2))))) # (!\SW~combout\(1) & (\SW~combout\(2) & ((\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|mx3hx0|D[1]~12_combout\);

-- Location: LCCOMB_X34_Y16_N4
\dtp|mx3hx0|D[2]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[2]~14_combout\ = (\SW~combout\(0) & (\SW~combout\(2) & (\SW~combout\(3)))) # (!\SW~combout\(0) & (\SW~combout\(1) & (\SW~combout\(2) $ (!\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|mx3hx0|D[2]~14_combout\);

-- Location: LCCOMB_X33_Y16_N16
\dtp|mx3hx0|D[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[6]~27_combout\ = (\dtp|decBCDsoma|output[1]~80_combout\ & (((!\dtp|decBCDsoma|output[2]~100_combout\) # (!\dtp|decBCDsoma|output[0]~83_combout\)))) # (!\dtp|decBCDsoma|output[1]~80_combout\ & (\dtp|decBCDsoma|output[3]~60_combout\ $ 
-- (((\dtp|decBCDsoma|output[2]~100_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|mx3hx0|D[6]~27_combout\);

-- Location: LCCOMB_X37_Y24_N8
\dtp|divfreq|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~0_combout\ = (!\dtp|divfreq|cont\(25) & (!\dtp|divfreq|cont\(26) & !\dtp|divfreq|cont\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(25),
	datab => \dtp|divfreq|cont\(26),
	datad => \dtp|divfreq|cont\(27),
	combout => \dtp|divfreq|LessThan0~0_combout\);

-- Location: LCCOMB_X36_Y24_N0
\dtp|divfreq|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~1_combout\ = (!\dtp|divfreq|cont\(8) & (!\dtp|divfreq|cont\(7) & (!\dtp|divfreq|cont\(10) & !\dtp|divfreq|cont\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(8),
	datab => \dtp|divfreq|cont\(7),
	datac => \dtp|divfreq|cont\(10),
	datad => \dtp|divfreq|cont\(9),
	combout => \dtp|divfreq|LessThan0~1_combout\);

-- Location: LCCOMB_X37_Y24_N14
\dtp|divfreq|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~5_combout\ = (((!\dtp|divfreq|cont\(11)) # (!\dtp|divfreq|cont\(13))) # (!\dtp|divfreq|cont\(12))) # (!\dtp|divfreq|cont\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(14),
	datab => \dtp|divfreq|cont\(12),
	datac => \dtp|divfreq|cont\(13),
	datad => \dtp|divfreq|cont\(11),
	combout => \dtp|divfreq|LessThan0~5_combout\);

-- Location: LCFF_X34_Y16_N13
\dtp|play1|Q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(8));

-- Location: LCFF_X34_Y16_N21
\dtp|play1|Q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(9));

-- Location: LCFF_X33_Y12_N7
\dtp|play1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[1]~80_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(1));

-- Location: LCFF_X34_Y12_N9
\dtp|play1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[0]~83_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(0));

-- Location: LCCOMB_X34_Y16_N20
\dtp|Comp|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Comp|Equal0~0_combout\ = (\dtp|play1|Q\(0) & (\dtp|play1|Q\(8) & (\dtp|play1|Q\(1) $ (!\dtp|play1|Q\(9))))) # (!\dtp|play1|Q\(0) & (!\dtp|play1|Q\(8) & (\dtp|play1|Q\(1) $ (!\dtp|play1|Q\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|play1|Q\(0),
	datab => \dtp|play1|Q\(1),
	datac => \dtp|play1|Q\(9),
	datad => \dtp|play1|Q\(8),
	combout => \dtp|Comp|Equal0~0_combout\);

-- Location: LCFF_X33_Y13_N31
\dtp|play1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[3]~60_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(3));

-- Location: LCFF_X36_Y14_N21
\dtp|play1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[5]~39_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(5));

-- Location: LCFF_X36_Y14_N7
\dtp|play1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[7]~26_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(7));

-- Location: LCCOMB_X34_Y16_N24
\dtp|LoadMux1|D[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|LoadMux1|D[2]~1_combout\ = ((!\dtp|SelREG2|Q\(1) & !\dtp|Comp|Equal0~4_combout\)) # (!\ctr|EAtual.Check~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|SelREG2|Q\(1),
	datac => \ctr|EAtual.Check~regout\,
	datad => \dtp|Comp|Equal0~4_combout\,
	combout => \dtp|LoadMux1|D[2]~1_combout\);

-- Location: LCCOMB_X31_Y20_N10
\dtp|dec7bcd|output[4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~48_combout\ = (!\dtp|Ctime|cont\(2) & ((\dtp|Ctime|cont\(0)) # ((\dtp|Ctime|cont\(4) & \dtp|dec7bcd|Equal99~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(0),
	datab => \dtp|Ctime|cont\(4),
	datac => \dtp|dec7bcd|Equal99~0_combout\,
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[4]~48_combout\);

-- Location: LCCOMB_X32_Y14_N20
\dtp|somador2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador2|Add0~6_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) & (\dtp|CSeq|cont\(2) & \dtp|CSeq|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|CSeq|cont\(1),
	combout => \dtp|somador2|Add0~6_combout\);

-- Location: LCCOMB_X32_Y15_N24
\dtp|muxsoma2|D[2]~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~397_combout\ = (\dtp|REG8|Q\(5) & (((\dtp|REG8|Q\(2)) # (\dtp|muxsoma2|D[2]~88_combout\)))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & \dtp|muxsoma2|D[2]~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~88_combout\,
	combout => \dtp|muxsoma2|D[2]~397_combout\);

-- Location: LCCOMB_X29_Y15_N8
\dtp|decBCDsoma|output[3]~101\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~101_combout\ = (\dtp|REG8|Q\(3) & (((!\dtp|REG8|Q\(1) & \dtp|muxsoma2|D[3]~183_combout\)))) # (!\dtp|REG8|Q\(3) & (\dtp|muxsoma2|D[3]~191_combout\ & (\dtp|REG8|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|muxsoma2|D[3]~191_combout\,
	datac => \dtp|REG8|Q\(1),
	datad => \dtp|muxsoma2|D[3]~183_combout\,
	combout => \dtp|decBCDsoma|output[3]~101_combout\);

-- Location: LCCOMB_X29_Y15_N26
\dtp|decBCDsoma|output[3]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~102_combout\ = (\dtp|decBCDsoma|output[3]~101_combout\) # ((\dtp|muxsoma2|D[3]~193_combout\ & (\dtp|REG8|Q\(3) $ (!\dtp|REG8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|decBCDsoma|output[3]~101_combout\,
	datad => \dtp|muxsoma2|D[3]~193_combout\,
	combout => \dtp|decBCDsoma|output[3]~102_combout\);

-- Location: LCCOMB_X29_Y11_N8
\dtp|decBCDsoma|output[3]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~103_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0)) # ((\dtp|REG8|Q\(3) & !\dtp|REG8|Q\(1))))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(3) & ((!\dtp|REG8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(3),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(1),
	combout => \dtp|decBCDsoma|output[3]~103_combout\);

-- Location: LCCOMB_X34_Y13_N10
\dtp|muxsoma2|D[2]~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~403_combout\ = ((\dtp|somadorSeq|Add0~2_combout\) # (!\dtp|somadorSeq|Add0~0_combout\)) # (!\dtp|REG8|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|somadorSeq|Add0~2_combout\,
	datad => \dtp|somadorSeq|Add0~0_combout\,
	combout => \dtp|muxsoma2|D[2]~403_combout\);

-- Location: LCCOMB_X32_Y11_N0
\dtp|decBCDsoma|output[1]~105\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~105_combout\ = (\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[2]~259_combout\ & (!\dtp|REG8|Q\(3)))) # (!\dtp|REG8|Q\(1) & (((\dtp|REG8|Q\(3) & \dtp|muxsoma2|D[2]~253_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~259_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|muxsoma2|D[2]~253_combout\,
	combout => \dtp|decBCDsoma|output[1]~105_combout\);

-- Location: LCCOMB_X29_Y11_N16
\dtp|decBCDsoma|output[2]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~110_combout\ = (\dtp|decBCDsoma|output[2]~92_combout\ & ((\dtp|REG8|Q\(1) $ (\dtp|REG8|Q\(3))) # (!\dtp|CSeq|cont\(0)))) # (!\dtp|decBCDsoma|output[2]~92_combout\ & (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(1)) # 
-- (!\dtp|REG8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~92_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|decBCDsoma|output[2]~110_combout\);

-- Location: LCCOMB_X35_Y14_N18
\dtp|muxsoma2|D[3]~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~410_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2)) # ((!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~410_combout\);

-- Location: LCCOMB_X33_Y21_N0
\dtp|dec7bcd|output[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~9_combout\ = (\dtp|Ctime|cont\(3) & (\dtp|Ctime|cont\(1) & ((\dtp|Ctime|cont\(2)) # (!\dtp|Ctime|cont\(4))))) # (!\dtp|Ctime|cont\(3) & (!\dtp|Ctime|cont\(1) & ((\dtp|Ctime|cont\(4)) # (!\dtp|Ctime|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(3),
	datab => \dtp|Ctime|cont\(4),
	datac => \dtp|Ctime|cont\(2),
	datad => \dtp|Ctime|cont\(1),
	combout => \dtp|dec7bcd|output[1]~9_combout\);

-- Location: LCCOMB_X33_Y21_N2
\dtp|dec7bcd|output[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~10_combout\ = (\dtp|Ctime|cont\(3) & ((\dtp|Ctime|cont\(4) & (!\dtp|Ctime|cont\(2) & !\dtp|Ctime|cont\(1))) # (!\dtp|Ctime|cont\(4) & (\dtp|Ctime|cont\(2) & \dtp|Ctime|cont\(1))))) # (!\dtp|Ctime|cont\(3) & (\dtp|Ctime|cont\(1) $ 
-- (((\dtp|Ctime|cont\(2)) # (!\dtp|Ctime|cont\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(3),
	datab => \dtp|Ctime|cont\(4),
	datac => \dtp|Ctime|cont\(2),
	datad => \dtp|Ctime|cont\(1),
	combout => \dtp|dec7bcd|output[1]~10_combout\);

-- Location: LCCOMB_X33_Y21_N16
\dtp|dec7bcd|output[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~8_combout\ = (\dtp|Ctime|cont\(6) & (\dtp|dec7bcd|output[1]~10_combout\)) # (!\dtp|Ctime|cont\(6) & ((\dtp|dec7bcd|output[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|dec7bcd|output[1]~10_combout\,
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|dec7bcd|output[1]~9_combout\,
	combout => \dtp|dec7bcd|output[1]~8_combout\);

-- Location: LCCOMB_X35_Y12_N14
\dtp|muxsoma2|D[2]~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~412_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # ((!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(0))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(0) $ (((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~412_combout\);

-- Location: LCCOMB_X29_Y11_N26
\dtp|muxsoma2|D[2]~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~416_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(5)))))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # 
-- (!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(5) $ (\dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~416_combout\);

-- Location: LCCOMB_X29_Y11_N28
\dtp|muxsoma2|D[2]~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~417_combout\ = (\dtp|muxsoma2|D[2]~416_combout\) # ((\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(5) $ (\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|muxsoma2|D[2]~416_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~417_combout\);

-- Location: LCCOMB_X31_Y20_N12
\dtp|dec7bcd|output[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[2]~50_combout\ = (\dtp|Ctime|cont\(6) & ((\dtp|Ctime|cont\(7)) # ((\dtp|dec7bcd|output[1]~46_combout\ & \dtp|Ctime|cont\(5))))) # (!\dtp|Ctime|cont\(6) & (((!\dtp|Ctime|cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(7),
	datab => \dtp|Ctime|cont\(6),
	datac => \dtp|dec7bcd|output[1]~46_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[2]~50_combout\);

-- Location: LCCOMB_X31_Y20_N26
\dtp|dec7bcd|output[2]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[2]~51_combout\ = (\dtp|dec7bcd|output[2]~50_combout\) # ((\dtp|dec7bcd|output[1]~45_combout\ & !\dtp|Ctime|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[2]~50_combout\,
	datac => \dtp|dec7bcd|output[1]~45_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[2]~51_combout\);

-- Location: LCCOMB_X32_Y20_N0
\dtp|dec7bcd|output[3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~54_combout\ = (\dtp|Ctime|cont\(3) & ((\dtp|Ctime|cont\(4) & (\dtp|Ctime|cont\(6) $ (!\dtp|Ctime|cont\(2)))) # (!\dtp|Ctime|cont\(4) & (\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(2))))) # (!\dtp|Ctime|cont\(3) & (!\dtp|Ctime|cont\(4) & 
-- (!\dtp|Ctime|cont\(6) & \dtp|Ctime|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(3),
	datab => \dtp|Ctime|cont\(4),
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[3]~54_combout\);

-- Location: LCCOMB_X32_Y20_N18
\dtp|dec7bcd|output[3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~55_combout\ = (\dtp|Ctime|cont\(5) & ((\dtp|dec7bcd|output[3]~54_combout\))) # (!\dtp|Ctime|cont\(5) & (!\dtp|Ctime|cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(6),
	datab => \dtp|dec7bcd|output[3]~54_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[3]~55_combout\);

-- Location: CLKCTRL_G8
\dtp|divfreq|CLK_1Hz~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dtp|divfreq|CLK_1Hz~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dtp|divfreq|CLK_1Hz~clkctrl_outclk\);

-- Location: LCCOMB_X35_Y8_N6
\dtp|cntround|cont[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|cntround|cont[0]~0_combout\ = !\dtp|cntround|cont\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|cntround|cont\(0),
	combout => \dtp|cntround|cont[0]~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK_50,
	combout => \CLK_50~combout\);

-- Location: CLKCTRL_G2
\CLK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_50~clkctrl_outclk\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "high",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1),
	regout => \bsc|BTN1_state.EsperaApertar\);

-- Location: LCCOMB_X64_Y20_N4
\bsc|BTN1_next.SaidaAtiva~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bsc|BTN1_next.SaidaAtiva~0_combout\ = (\bsc|BTN1_state.EsperaApertar\ & !\KEY~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bsc|BTN1_state.EsperaApertar\,
	datad => \KEY~combout\(1),
	combout => \bsc|BTN1_next.SaidaAtiva~0_combout\);

-- Location: LCFF_X64_Y20_N5
\bsc|BTN1_state.SaidaAtiva\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \bsc|BTN1_next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bsc|BTN1_state.SaidaAtiva~regout\);

-- Location: LCCOMB_X35_Y17_N26
\ctr|PEstado.Innit~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|PEstado.Innit~0_combout\ = (!\ctr|EAtual.Result~regout\) # (!\bsc|BTN1_state.SaidaAtiva~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsc|BTN1_state.SaidaAtiva~regout\,
	datac => \ctr|EAtual.Result~regout\,
	combout => \ctr|PEstado.Innit~0_combout\);

-- Location: LCCOMB_X35_Y16_N24
\ctr|EAtual.Innit~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|EAtual.Innit~feeder_combout\ = \ctr|PEstado.Innit~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr|PEstado.Innit~0_combout\,
	combout => \ctr|EAtual.Innit~feeder_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "high",
	input_register_mode => "register",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_50~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0),
	regout => \bsc|BTN0_state.EsperaApertar\);

-- Location: LCCOMB_X36_Y23_N30
\bsc|BTN0_next.SaidaAtiva~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \bsc|BTN0_next.SaidaAtiva~0_combout\ = (!\KEY~combout\(0) & \bsc|BTN0_state.EsperaApertar\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \bsc|BTN0_state.EsperaApertar\,
	combout => \bsc|BTN0_next.SaidaAtiva~0_combout\);

-- Location: LCFF_X36_Y23_N31
\bsc|BTN0_state.SaidaAtiva\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \bsc|BTN0_next.SaidaAtiva~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \bsc|BTN0_state.SaidaAtiva~regout\);

-- Location: LCFF_X35_Y16_N25
\ctr|EAtual.Innit\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|EAtual.Innit~feeder_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Innit~regout\);

-- Location: LCCOMB_X34_Y14_N6
\dtp|CSeq|cont[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|CSeq|cont[0]~2_combout\ = \dtp|CSeq|cont\(0) $ (\ctr|EAtual.Sequence~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|CSeq|cont\(0),
	datad => \ctr|EAtual.Sequence~regout\,
	combout => \dtp|CSeq|cont[0]~2_combout\);

-- Location: LCCOMB_X35_Y16_N8
\dtp|R1_or_E5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|R1_or_E5~combout\ = (\ctr|EAtual.Check~regout\) # (!\ctr|EAtual.Innit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Innit~regout\,
	datad => \ctr|EAtual.Check~regout\,
	combout => \dtp|R1_or_E5~combout\);

-- Location: LCFF_X34_Y14_N7
\dtp|CSeq|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dtp|divfreq|CLK_1Hz~clkctrl_outclk\,
	datain => \dtp|CSeq|cont[0]~2_combout\,
	aclr => \dtp|R1_or_E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|CSeq|cont\(0));

-- Location: LCCOMB_X34_Y14_N14
\dtp|CSeq|cont[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|CSeq|cont[2]~0_combout\ = \dtp|CSeq|cont\(2) $ (((\dtp|CSeq|cont\(1) & (\ctr|EAtual.Sequence~regout\ & \dtp|CSeq|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datab => \ctr|EAtual.Sequence~regout\,
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|CSeq|cont[2]~0_combout\);

-- Location: LCFF_X34_Y14_N15
\dtp|CSeq|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dtp|divfreq|CLK_1Hz~clkctrl_outclk\,
	datain => \dtp|CSeq|cont[2]~0_combout\,
	aclr => \dtp|R1_or_E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|CSeq|cont\(2));

-- Location: LCCOMB_X34_Y14_N30
\dtp|CSeq|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|CSeq|Equal0~0_combout\ = (\dtp|CSeq|cont\(1) & (!\dtp|CSeq|cont\(2) & \dtp|CSeq|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|CSeq|Equal0~0_combout\);

-- Location: LCFF_X34_Y14_N31
\dtp|CSeq|end_seq\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dtp|divfreq|CLK_1Hz~clkctrl_outclk\,
	datain => \dtp|CSeq|Equal0~0_combout\,
	aclr => \dtp|R1_or_E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|CSeq|end_seq~regout\);

-- Location: LCCOMB_X35_Y17_N10
\ctr|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector1~0_combout\ = (\ctr|EAtual.Sequence~regout\ & !\dtp|CSeq|end_seq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr|EAtual.Sequence~regout\,
	datad => \dtp|CSeq|end_seq~regout\,
	combout => \ctr|Selector1~0_combout\);

-- Location: LCCOMB_X35_Y17_N28
\ctr|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector1~1_combout\ = (\ctr|Selector1~0_combout\) # ((\ctr|EAtual.Sellect~regout\ & (\ctr|COMB~0_combout\ & \bsc|BTN1_state.SaidaAtiva~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Sellect~regout\,
	datab => \ctr|COMB~0_combout\,
	datac => \bsc|BTN1_state.SaidaAtiva~regout\,
	datad => \ctr|Selector1~0_combout\,
	combout => \ctr|Selector1~1_combout\);

-- Location: LCFF_X35_Y17_N29
\ctr|EAtual.Sequence\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|Selector1~1_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Sequence~regout\);

-- Location: LCCOMB_X35_Y17_N12
\ctr|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector2~0_combout\ = (\ctr|EAtual.Sequence~regout\ & \dtp|CSeq|end_seq~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr|EAtual.Sequence~regout\,
	datad => \dtp|CSeq|end_seq~regout\,
	combout => \ctr|Selector2~0_combout\);

-- Location: LCCOMB_X35_Y17_N18
\ctr|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector2~1_combout\ = (\ctr|Selector2~0_combout\) # ((\ctr|COMB~0_combout\ & (!\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|EAtual.Play~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|COMB~0_combout\,
	datab => \bsc|BTN1_state.SaidaAtiva~regout\,
	datac => \ctr|EAtual.Play~regout\,
	datad => \ctr|Selector2~0_combout\,
	combout => \ctr|Selector2~1_combout\);

-- Location: LCFF_X35_Y17_N19
\ctr|EAtual.Play\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|Selector2~1_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Play~regout\);

-- Location: LCCOMB_X35_Y17_N8
\ctr|PEstado.Check~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|PEstado.Check~0_combout\ = (\ctr|COMB~0_combout\ & (\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|EAtual.Play~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|COMB~0_combout\,
	datac => \bsc|BTN1_state.SaidaAtiva~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \ctr|PEstado.Check~0_combout\);

-- Location: LCCOMB_X35_Y16_N30
\ctr|EAtual.Check~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|EAtual.Check~feeder_combout\ = \ctr|PEstado.Check~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr|PEstado.Check~0_combout\,
	combout => \ctr|EAtual.Check~feeder_combout\);

-- Location: LCFF_X35_Y16_N31
\ctr|EAtual.Check\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|EAtual.Check~feeder_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Check~regout\);

-- Location: LCFF_X35_Y8_N7
\dtp|cntround|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|cntround|cont[0]~0_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Check~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|cntround|cont\(0));

-- Location: LCCOMB_X35_Y8_N20
\dtp|cntround|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|cntround|Add0~0_combout\ = \dtp|cntround|cont\(1) $ (\dtp|cntround|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|cntround|cont\(1),
	datad => \dtp|cntround|cont\(0),
	combout => \dtp|cntround|Add0~0_combout\);

-- Location: LCFF_X35_Y8_N21
\dtp|cntround|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|cntround|Add0~0_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Check~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|cntround|cont\(1));

-- Location: LCCOMB_X35_Y8_N18
\dtp|cntround|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|cntround|Add0~1_combout\ = \dtp|cntround|cont\(2) $ (((\dtp|cntround|cont\(0) & \dtp|cntround|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(0),
	datac => \dtp|cntround|cont\(2),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|cntround|Add0~1_combout\);

-- Location: LCFF_X35_Y8_N19
\dtp|cntround|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|cntround|Add0~1_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Check~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|cntround|cont\(2));

-- Location: LCCOMB_X35_Y8_N16
\dtp|cntround|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|cntround|Add0~2_combout\ = \dtp|cntround|cont\(3) $ (((\dtp|cntround|cont\(0) & (\dtp|cntround|cont\(2) & \dtp|cntround|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(0),
	datab => \dtp|cntround|cont\(2),
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|cntround|Add0~2_combout\);

-- Location: LCFF_X35_Y8_N17
\dtp|cntround|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|cntround|Add0~2_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Check~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|cntround|cont\(3));

-- Location: LCCOMB_X36_Y7_N20
\dtp|dectermo|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|Equal14~0_combout\ = (\dtp|cntround|cont\(0) & (\dtp|cntround|cont\(1) & (\dtp|cntround|cont\(3) & \dtp|cntround|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(0),
	datab => \dtp|cntround|cont\(1),
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|cntround|cont\(2),
	combout => \dtp|dectermo|Equal14~0_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X34_Y16_N28
\dtp|SelREG2|Q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|SelREG2|Q[0]~feeder_combout\ = \SW~combout\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW~combout\(0),
	combout => \dtp|SelREG2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X35_Y17_N16
\ctr|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector0~0_combout\ = ((!\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|EAtual.Setup~regout\)) # (!\ctr|EAtual.Innit~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Innit~regout\,
	datab => \bsc|BTN1_state.SaidaAtiva~regout\,
	datad => \ctr|EAtual.Setup~regout\,
	combout => \ctr|Selector0~0_combout\);

-- Location: LCFF_X35_Y24_N9
\ctr|EAtual.Setup\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \ctr|Selector0~0_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Setup~regout\);

-- Location: LCFF_X34_Y16_N29
\dtp|SelREG2|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|SelREG2|Q[0]~feeder_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|SelREG2|Q\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7),
	combout => \SW~combout\(7));

-- Location: LCCOMB_X35_Y17_N22
\ctr|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector3~0_combout\ = (\ctr|EAtual.Check~regout\) # ((\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|EAtual.Setup~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr|EAtual.Check~regout\,
	datac => \bsc|BTN1_state.SaidaAtiva~regout\,
	datad => \ctr|EAtual.Setup~regout\,
	combout => \ctr|Selector3~0_combout\);

-- Location: LCCOMB_X35_Y17_N24
\ctr|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector3~1_combout\ = (\ctr|Selector3~0_combout\) # ((\ctr|EAtual.Sellect~regout\ & (!\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|COMB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Sellect~regout\,
	datab => \bsc|BTN1_state.SaidaAtiva~regout\,
	datac => \ctr|COMB~0_combout\,
	datad => \ctr|Selector3~0_combout\,
	combout => \ctr|Selector3~1_combout\);

-- Location: LCCOMB_X35_Y24_N30
\ctr|EAtual.Sellect~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|EAtual.Sellect~feeder_combout\ = \ctr|Selector3~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctr|Selector3~1_combout\,
	combout => \ctr|EAtual.Sellect~feeder_combout\);

-- Location: LCFF_X35_Y24_N31
\ctr|EAtual.Sellect\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|EAtual.Sellect~feeder_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Sellect~regout\);

-- Location: LCFF_X34_Y14_N9
\dtp|REG8|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(7));

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: LCFF_X34_Y14_N1
\dtp|REG8|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(5));

-- Location: LCFF_X33_Y14_N21
\dtp|REG8|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(0),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(0));

-- Location: LCCOMB_X31_Y12_N14
\dtp|muxsoma2|D[2]~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~352_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((!\dtp|REG8|Q\(6) & !\dtp|REG8|Q\(0)))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(6)) # (\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~352_combout\);

-- Location: LCCOMB_X30_Y15_N8
\dtp|muxsoma2|D[2]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~65_combout\ = \dtp|REG8|Q\(5) $ (\dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~65_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: LCFF_X33_Y14_N9
\dtp|REG8|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(2));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4),
	combout => \SW~combout\(4));

-- Location: LCFF_X34_Y14_N17
\dtp|REG8|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(4));

-- Location: LCCOMB_X31_Y12_N4
\dtp|muxsoma2|D[2]~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~353_combout\ = (\dtp|REG8|Q\(2) & (((\dtp|REG8|Q\(4)) # (!\dtp|muxsoma2|D[2]~65_combout\)))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~266_combout\ & ((!\dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~266_combout\,
	datab => \dtp|muxsoma2|D[2]~65_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~353_combout\);

-- Location: LCCOMB_X31_Y12_N0
\dtp|muxsoma2|D[2]~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~355_combout\ = (\dtp|muxsoma2|D[2]~353_combout\ & ((\dtp|muxsoma2|D[2]~354_combout\) # ((!\dtp|REG8|Q\(4))))) # (!\dtp|muxsoma2|D[2]~353_combout\ & (((\dtp|muxsoma2|D[2]~352_combout\ & \dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~354_combout\,
	datab => \dtp|muxsoma2|D[2]~352_combout\,
	datac => \dtp|muxsoma2|D[2]~353_combout\,
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~355_combout\);

-- Location: LCCOMB_X31_Y12_N18
\dtp|decBCDsoma|output[2]~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~84_combout\ = (\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[2]~355_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~355_combout\,
	combout => \dtp|decBCDsoma|output[2]~84_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: LCFF_X33_Y14_N11
\dtp|REG8|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(3));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCFF_X33_Y14_N19
\dtp|REG8|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(1));

-- Location: LCCOMB_X29_Y11_N20
\dtp|decBCDsoma|output[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~40_combout\ = \dtp|REG8|Q\(3) $ (\dtp|REG8|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|REG8|Q\(1),
	combout => \dtp|decBCDsoma|output[2]~40_combout\);

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6),
	combout => \SW~combout\(6));

-- Location: LCFF_X34_Y14_N5
\dtp|REG8|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Sellect~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|REG8|Q\(6));

-- Location: LCCOMB_X33_Y11_N8
\dtp|muxsoma2|D[2]~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~345_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((!\dtp|REG8|Q\(6)) # (!\dtp|REG8|Q\(0))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((!\dtp|REG8|Q\(6)) # (!\dtp|REG8|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~345_combout\);

-- Location: LCCOMB_X33_Y11_N22
\dtp|muxsoma2|D[2]~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~298_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(6)))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~298_combout\);

-- Location: LCCOMB_X33_Y11_N2
\dtp|muxsoma2|D[2]~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~346_combout\ = (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~345_combout\)) # (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~298_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~345_combout\,
	datad => \dtp|muxsoma2|D[2]~298_combout\,
	combout => \dtp|muxsoma2|D[2]~346_combout\);

-- Location: LCCOMB_X33_Y11_N28
\dtp|muxsoma2|D[2]~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~343_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(6)))))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(6))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(5) & 
-- \dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~343_combout\);

-- Location: LCCOMB_X30_Y11_N20
\dtp|muxsoma2|D[2]~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~268_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(6) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) & !\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4) & 
-- !\dtp|REG8|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~268_combout\);

-- Location: LCCOMB_X33_Y11_N14
\dtp|muxsoma2|D[2]~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~344_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~268_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~343_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~343_combout\,
	datac => \dtp|muxsoma2|D[2]~268_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~344_combout\);

-- Location: LCCOMB_X33_Y11_N12
\dtp|muxsoma2|D[2]~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~341_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~298_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~266_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~266_combout\,
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~298_combout\,
	combout => \dtp|muxsoma2|D[2]~341_combout\);

-- Location: LCCOMB_X33_Y11_N10
\dtp|muxsoma2|D[2]~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~342_combout\ = (\dtp|muxsoma2|D[2]~341_combout\) # ((\dtp|muxsoma2|D[2]~273_combout\ & !\dtp|REG8|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~273_combout\,
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~341_combout\,
	combout => \dtp|muxsoma2|D[2]~342_combout\);

-- Location: LCCOMB_X33_Y11_N24
\dtp|muxsoma2|D[2]~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~347_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~344_combout\ & (\dtp|muxsoma2|D[2]~346_combout\)) # (!\dtp|muxsoma2|D[2]~344_combout\ & ((\dtp|muxsoma2|D[2]~342_combout\))))) # (!\dtp|CSeq|cont\(0) & 
-- (((\dtp|muxsoma2|D[2]~344_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~346_combout\,
	datac => \dtp|muxsoma2|D[2]~344_combout\,
	datad => \dtp|muxsoma2|D[2]~342_combout\,
	combout => \dtp|muxsoma2|D[2]~347_combout\);

-- Location: LCCOMB_X32_Y11_N26
\dtp|decBCDsoma|output[2]~108\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~108_combout\ = (\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[2]~351_combout\ & (!\dtp|REG8|Q\(3)))) # (!\dtp|REG8|Q\(1) & (((\dtp|REG8|Q\(3) & \dtp|muxsoma2|D[2]~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~351_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|muxsoma2|D[2]~347_combout\,
	combout => \dtp|decBCDsoma|output[2]~108_combout\);

-- Location: LCCOMB_X32_Y11_N24
\dtp|decBCDsoma|output[2]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~87_combout\ = (\dtp|decBCDsoma|output[2]~108_combout\) # ((!\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[2]~86_combout\) # (\dtp|decBCDsoma|output[2]~84_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~86_combout\,
	datab => \dtp|decBCDsoma|output[2]~84_combout\,
	datac => \dtp|decBCDsoma|output[2]~40_combout\,
	datad => \dtp|decBCDsoma|output[2]~108_combout\,
	combout => \dtp|decBCDsoma|output[2]~87_combout\);

-- Location: LCCOMB_X34_Y14_N12
\dtp|CSeq|cont[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|CSeq|cont[1]~1_combout\ = \dtp|CSeq|cont\(1) $ (((\dtp|CSeq|cont\(0) & \ctr|EAtual.Sequence~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datac => \dtp|CSeq|cont\(1),
	datad => \ctr|EAtual.Sequence~regout\,
	combout => \dtp|CSeq|cont[1]~1_combout\);

-- Location: LCFF_X34_Y14_N13
\dtp|CSeq|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \dtp|divfreq|CLK_1Hz~clkctrl_outclk\,
	datain => \dtp|CSeq|cont[1]~1_combout\,
	aclr => \dtp|R1_or_E5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|CSeq|cont\(1));

-- Location: LCCOMB_X29_Y11_N18
\dtp|muxsoma2|D[2]~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~254_combout\ = (\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(4) $ (((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~254_combout\);

-- Location: LCCOMB_X29_Y11_N22
\dtp|decBCDsoma|output[2]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~89_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~254_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~264_combout\,
	datab => \dtp|muxsoma2|D[2]~254_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|decBCDsoma|output[2]~89_combout\);

-- Location: LCCOMB_X33_Y11_N20
\dtp|muxsoma2|D[2]~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~246_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) $ (((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~246_combout\);

-- Location: LCCOMB_X32_Y11_N30
\dtp|muxsoma2|D[2]~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~265_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (\dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(5) & ((!\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(7)))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(4) $ (((\dtp|REG8|Q\(5)) # 
-- (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~265_combout\);

-- Location: LCCOMB_X32_Y11_N18
\dtp|muxsoma2|D[2]~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~358_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~246_combout\)) # (!\dtp|REG8|Q\(2) & ((!\dtp|muxsoma2|D[2]~265_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~246_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~265_combout\,
	combout => \dtp|muxsoma2|D[2]~358_combout\);

-- Location: LCCOMB_X29_Y11_N30
\dtp|muxsoma2|D[2]~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~359_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~358_combout\ & ((!\dtp|CSeq|cont\(0)))) # (!\dtp|muxsoma2|D[2]~358_combout\ & (!\dtp|REG8|Q\(0) & \dtp|CSeq|cont\(0))))) # (!\dtp|REG8|Q\(4) & (((\dtp|muxsoma2|D[2]~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~358_combout\,
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[2]~359_combout\);

-- Location: LCCOMB_X29_Y11_N14
\dtp|decBCDsoma|output[2]~109\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~109_combout\ = (\dtp|REG8|Q\(1) & (((!\dtp|REG8|Q\(3) & \dtp|muxsoma2|D[2]~359_combout\)))) # (!\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[2]~357_combout\ & (\dtp|REG8|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~357_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|muxsoma2|D[2]~359_combout\,
	combout => \dtp|decBCDsoma|output[2]~109_combout\);

-- Location: LCCOMB_X29_Y11_N12
\dtp|decBCDsoma|output[2]~88\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~88_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(4) $ (\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|decBCDsoma|output[2]~88_combout\);

-- Location: LCCOMB_X29_Y11_N4
\dtp|decBCDsoma|output[2]~90\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~90_combout\ = (\dtp|decBCDsoma|output[2]~109_combout\) # ((!\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[2]~89_combout\) # (\dtp|decBCDsoma|output[2]~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~40_combout\,
	datab => \dtp|decBCDsoma|output[2]~89_combout\,
	datac => \dtp|decBCDsoma|output[2]~109_combout\,
	datad => \dtp|decBCDsoma|output[2]~88_combout\,
	combout => \dtp|decBCDsoma|output[2]~90_combout\);

-- Location: LCCOMB_X31_Y11_N2
\dtp|muxsoma2|D[2]~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~244_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(6)) # (\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110110111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~244_combout\);

-- Location: LCCOMB_X30_Y13_N4
\dtp|muxsoma2|D[2]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~107_combout\ = (\dtp|REG8|Q\(4) & \dtp|REG8|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~107_combout\);

-- Location: LCCOMB_X32_Y15_N22
\dtp|muxsoma2|D[2]~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~249_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~249_combout\);

-- Location: LCCOMB_X31_Y11_N18
\dtp|decBCDsoma|output[2]~93\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~93_combout\ = (\dtp|REG8|Q\(3) & ((\dtp|muxsoma2|D[2]~107_combout\ & ((\dtp|muxsoma2|D[2]~249_combout\))) # (!\dtp|muxsoma2|D[2]~107_combout\ & (!\dtp|muxsoma2|D[2]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|muxsoma2|D[2]~244_combout\,
	datac => \dtp|muxsoma2|D[2]~107_combout\,
	datad => \dtp|muxsoma2|D[2]~249_combout\,
	combout => \dtp|decBCDsoma|output[2]~93_combout\);

-- Location: LCCOMB_X30_Y11_N2
\dtp|decBCDsoma|output[2]~94\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~94_combout\ = (\dtp|decBCDsoma|output[2]~93_combout\) # ((\dtp|muxsoma2|D[2]~360_combout\ & !\dtp|REG8|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~360_combout\,
	datab => \dtp|decBCDsoma|output[2]~93_combout\,
	datad => \dtp|REG8|Q\(3),
	combout => \dtp|decBCDsoma|output[2]~94_combout\);

-- Location: LCCOMB_X31_Y11_N26
\dtp|muxsoma2|D[2]~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~250_combout\ = \dtp|REG8|Q\(6) $ (((\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~250_combout\);

-- Location: LCCOMB_X31_Y11_N16
\dtp|muxsoma2|D[2]~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~362_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & (!\dtp|muxsoma2|D[2]~250_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~249_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~250_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~249_combout\,
	combout => \dtp|muxsoma2|D[2]~362_combout\);

-- Location: LCCOMB_X31_Y11_N22
\dtp|muxsoma2|D[2]~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~363_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(0))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) $ (((\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~363_combout\);

-- Location: LCCOMB_X31_Y11_N4
\dtp|muxsoma2|D[2]~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~364_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~362_combout\ & ((\dtp|muxsoma2|D[2]~363_combout\))) # (!\dtp|muxsoma2|D[2]~362_combout\ & (\dtp|muxsoma2|D[2]~361_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~361_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~362_combout\,
	datad => \dtp|muxsoma2|D[2]~363_combout\,
	combout => \dtp|muxsoma2|D[2]~364_combout\);

-- Location: LCCOMB_X30_Y11_N24
\dtp|decBCDsoma|output[2]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~95_combout\ = (\dtp|decBCDsoma|output[2]~40_combout\ & (!\dtp|REG8|Q\(2) & (\dtp|decBCDsoma|output[2]~94_combout\))) # (!\dtp|decBCDsoma|output[2]~40_combout\ & (((\dtp|muxsoma2|D[2]~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|decBCDsoma|output[2]~94_combout\,
	datac => \dtp|decBCDsoma|output[2]~40_combout\,
	datad => \dtp|muxsoma2|D[2]~364_combout\,
	combout => \dtp|decBCDsoma|output[2]~95_combout\);

-- Location: LCCOMB_X29_Y11_N2
\dtp|decBCDsoma|output[2]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~96_combout\ = (\dtp|decBCDsoma|output[2]~110_combout\ & ((\dtp|REG8|Q\(2)) # ((\dtp|CSeq|cont\(0) & \dtp|decBCDsoma|output[2]~95_combout\)))) # (!\dtp|decBCDsoma|output[2]~110_combout\ & (\dtp|CSeq|cont\(0) & 
-- ((\dtp|decBCDsoma|output[2]~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~110_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|decBCDsoma|output[2]~95_combout\,
	combout => \dtp|decBCDsoma|output[2]~96_combout\);

-- Location: LCCOMB_X30_Y11_N6
\dtp|decBCDsoma|output[2]~97\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~97_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|CSeq|cont\(1)) # ((\dtp|decBCDsoma|output[2]~90_combout\)))) # (!\dtp|CSeq|cont\(2) & (!\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[2]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(2),
	datab => \dtp|CSeq|cont\(1),
	datac => \dtp|decBCDsoma|output[2]~90_combout\,
	datad => \dtp|decBCDsoma|output[2]~96_combout\,
	combout => \dtp|decBCDsoma|output[2]~97_combout\);

-- Location: LCCOMB_X34_Y14_N2
\dtp|muxsoma2|D[4]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[4]~58_combout\ = (\dtp|REG8|Q\(6) & \dtp|CSeq|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|CSeq|cont\(2),
	combout => \dtp|muxsoma2|D[4]~58_combout\);

-- Location: LCCOMB_X34_Y14_N8
\dtp|muxsoma1|D[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma1|D[3]~1_combout\ = (\dtp|REG8|Q\(7) & \dtp|CSeq|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma1|D[3]~1_combout\);

-- Location: LCCOMB_X34_Y14_N18
\dtp|somador1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador1|Add0~0_combout\ = (\dtp|muxsoma2|D[3]~59_combout\ & (\dtp|muxsoma1|D[3]~1_combout\ $ (VCC))) # (!\dtp|muxsoma2|D[3]~59_combout\ & (\dtp|muxsoma1|D[3]~1_combout\ & VCC))
-- \dtp|somador1|Add0~1\ = CARRY((\dtp|muxsoma2|D[3]~59_combout\ & \dtp|muxsoma1|D[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~59_combout\,
	datab => \dtp|muxsoma1|D[3]~1_combout\,
	datad => VCC,
	combout => \dtp|somador1|Add0~0_combout\,
	cout => \dtp|somador1|Add0~1\);

-- Location: LCCOMB_X34_Y14_N20
\dtp|somador1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador1|Add0~2_combout\ = (\dtp|muxsoma1|D[4]~0_combout\ & ((\dtp|muxsoma2|D[4]~58_combout\ & (\dtp|somador1|Add0~1\ & VCC)) # (!\dtp|muxsoma2|D[4]~58_combout\ & (!\dtp|somador1|Add0~1\)))) # (!\dtp|muxsoma1|D[4]~0_combout\ & 
-- ((\dtp|muxsoma2|D[4]~58_combout\ & (!\dtp|somador1|Add0~1\)) # (!\dtp|muxsoma2|D[4]~58_combout\ & ((\dtp|somador1|Add0~1\) # (GND)))))
-- \dtp|somador1|Add0~3\ = CARRY((\dtp|muxsoma1|D[4]~0_combout\ & (!\dtp|muxsoma2|D[4]~58_combout\ & !\dtp|somador1|Add0~1\)) # (!\dtp|muxsoma1|D[4]~0_combout\ & ((!\dtp|somador1|Add0~1\) # (!\dtp|muxsoma2|D[4]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma1|D[4]~0_combout\,
	datab => \dtp|muxsoma2|D[4]~58_combout\,
	datad => VCC,
	cin => \dtp|somador1|Add0~1\,
	combout => \dtp|somador1|Add0~2_combout\,
	cout => \dtp|somador1|Add0~3\);

-- Location: LCCOMB_X34_Y14_N22
\dtp|somador1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador1|Add0~4_combout\ = (\dtp|somador1|Add0~3\ & (\dtp|REG8|Q\(7) & (\dtp|CSeq|cont\(2) & VCC))) # (!\dtp|somador1|Add0~3\ & ((((\dtp|REG8|Q\(7) & \dtp|CSeq|cont\(2))))))
-- \dtp|somador1|Add0~5\ = CARRY((\dtp|REG8|Q\(7) & (\dtp|CSeq|cont\(2) & !\dtp|somador1|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|CSeq|cont\(2),
	datad => VCC,
	cin => \dtp|somador1|Add0~3\,
	combout => \dtp|somador1|Add0~4_combout\,
	cout => \dtp|somador1|Add0~5\);

-- Location: LCCOMB_X34_Y14_N0
\dtp|somador2|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador2|Add0~3_combout\ = (\dtp|CSeq|cont\(1) & (\dtp|REG8|Q\(5) & ((!\dtp|CSeq|cont\(0)) # (!\dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|somador2|Add0~3_combout\);

-- Location: LCCOMB_X34_Y14_N28
\dtp|somador2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador2|Add0~4_combout\ = \dtp|somador2|Add0~3_combout\ $ (((\dtp|REG8|Q\(4) & \dtp|CSeq|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|somador2|Add0~3_combout\,
	combout => \dtp|somador2|Add0~4_combout\);

-- Location: LCCOMB_X33_Y14_N22
\dtp|somador3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador3|Add0~0_combout\ = (\dtp|muxsoma2|D[2]~60_combout\ & (\dtp|somador2|Add0~4_combout\ $ (VCC))) # (!\dtp|muxsoma2|D[2]~60_combout\ & (\dtp|somador2|Add0~4_combout\ & VCC))
-- \dtp|somador3|Add0~1\ = CARRY((\dtp|muxsoma2|D[2]~60_combout\ & \dtp|somador2|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~60_combout\,
	datab => \dtp|somador2|Add0~4_combout\,
	datad => VCC,
	combout => \dtp|somador3|Add0~0_combout\,
	cout => \dtp|somador3|Add0~1\);

-- Location: LCCOMB_X33_Y14_N26
\dtp|somador3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador3|Add0~4_combout\ = ((\dtp|somador2|Add0~6_combout\ $ (\dtp|somador1|Add0~2_combout\ $ (!\dtp|somador3|Add0~3\)))) # (GND)
-- \dtp|somador3|Add0~5\ = CARRY((\dtp|somador2|Add0~6_combout\ & ((\dtp|somador1|Add0~2_combout\) # (!\dtp|somador3|Add0~3\))) # (!\dtp|somador2|Add0~6_combout\ & (\dtp|somador1|Add0~2_combout\ & !\dtp|somador3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somador2|Add0~6_combout\,
	datab => \dtp|somador1|Add0~2_combout\,
	datad => VCC,
	cin => \dtp|somador3|Add0~3\,
	combout => \dtp|somador3|Add0~4_combout\,
	cout => \dtp|somador3|Add0~5\);

-- Location: LCCOMB_X33_Y14_N28
\dtp|somador3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador3|Add0~6_combout\ = (\dtp|somador1|Add0~4_combout\ & (!\dtp|somador3|Add0~5\)) # (!\dtp|somador1|Add0~4_combout\ & ((\dtp|somador3|Add0~5\) # (GND)))
-- \dtp|somador3|Add0~7\ = CARRY((!\dtp|somador3|Add0~5\) # (!\dtp|somador1|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|somador1|Add0~4_combout\,
	datad => VCC,
	cin => \dtp|somador3|Add0~5\,
	combout => \dtp|somador3|Add0~6_combout\,
	cout => \dtp|somador3|Add0~7\);

-- Location: LCCOMB_X32_Y14_N16
\dtp|somador2|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador2|Add0~5_combout\ = (\dtp|CSeq|cont\(1) & (\dtp|REG8|Q\(4) $ (((\dtp|REG8|Q\(5) & \dtp|CSeq|cont\(0)))))) # (!\dtp|CSeq|cont\(1) & (((\dtp|REG8|Q\(5) & \dtp|CSeq|cont\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|somador2|Add0~5_combout\);

-- Location: LCCOMB_X33_Y14_N4
\dtp|somadorSeq|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~0_combout\ = (\dtp|muxsoma4|D[0]~1_combout\ & (\dtp|REG8|Q\(0) $ (VCC))) # (!\dtp|muxsoma4|D[0]~1_combout\ & (\dtp|REG8|Q\(0) & VCC))
-- \dtp|somadorSeq|Add0~1\ = CARRY((\dtp|muxsoma4|D[0]~1_combout\ & \dtp|REG8|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma4|D[0]~1_combout\,
	datab => \dtp|REG8|Q\(0),
	datad => VCC,
	combout => \dtp|somadorSeq|Add0~0_combout\,
	cout => \dtp|somadorSeq|Add0~1\);

-- Location: LCCOMB_X33_Y14_N6
\dtp|somadorSeq|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~2_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|somador2|Add0~5_combout\ & (\dtp|somadorSeq|Add0~1\ & VCC)) # (!\dtp|somador2|Add0~5_combout\ & (!\dtp|somadorSeq|Add0~1\)))) # (!\dtp|REG8|Q\(1) & ((\dtp|somador2|Add0~5_combout\ & 
-- (!\dtp|somadorSeq|Add0~1\)) # (!\dtp|somador2|Add0~5_combout\ & ((\dtp|somadorSeq|Add0~1\) # (GND)))))
-- \dtp|somadorSeq|Add0~3\ = CARRY((\dtp|REG8|Q\(1) & (!\dtp|somador2|Add0~5_combout\ & !\dtp|somadorSeq|Add0~1\)) # (!\dtp|REG8|Q\(1) & ((!\dtp|somadorSeq|Add0~1\) # (!\dtp|somador2|Add0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|somador2|Add0~5_combout\,
	datad => VCC,
	cin => \dtp|somadorSeq|Add0~1\,
	combout => \dtp|somadorSeq|Add0~2_combout\,
	cout => \dtp|somadorSeq|Add0~3\);

-- Location: LCCOMB_X33_Y14_N8
\dtp|somadorSeq|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~4_combout\ = ((\dtp|REG8|Q\(2) $ (\dtp|somador3|Add0~0_combout\ $ (!\dtp|somadorSeq|Add0~3\)))) # (GND)
-- \dtp|somadorSeq|Add0~5\ = CARRY((\dtp|REG8|Q\(2) & ((\dtp|somador3|Add0~0_combout\) # (!\dtp|somadorSeq|Add0~3\))) # (!\dtp|REG8|Q\(2) & (\dtp|somador3|Add0~0_combout\ & !\dtp|somadorSeq|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|somador3|Add0~0_combout\,
	datad => VCC,
	cin => \dtp|somadorSeq|Add0~3\,
	combout => \dtp|somadorSeq|Add0~4_combout\,
	cout => \dtp|somadorSeq|Add0~5\);

-- Location: LCCOMB_X33_Y14_N10
\dtp|somadorSeq|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~6_combout\ = (\dtp|somador3|Add0~2_combout\ & ((\dtp|REG8|Q\(3) & (\dtp|somadorSeq|Add0~5\ & VCC)) # (!\dtp|REG8|Q\(3) & (!\dtp|somadorSeq|Add0~5\)))) # (!\dtp|somador3|Add0~2_combout\ & ((\dtp|REG8|Q\(3) & (!\dtp|somadorSeq|Add0~5\)) 
-- # (!\dtp|REG8|Q\(3) & ((\dtp|somadorSeq|Add0~5\) # (GND)))))
-- \dtp|somadorSeq|Add0~7\ = CARRY((\dtp|somador3|Add0~2_combout\ & (!\dtp|REG8|Q\(3) & !\dtp|somadorSeq|Add0~5\)) # (!\dtp|somador3|Add0~2_combout\ & ((!\dtp|somadorSeq|Add0~5\) # (!\dtp|REG8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somador3|Add0~2_combout\,
	datab => \dtp|REG8|Q\(3),
	datad => VCC,
	cin => \dtp|somadorSeq|Add0~5\,
	combout => \dtp|somadorSeq|Add0~6_combout\,
	cout => \dtp|somadorSeq|Add0~7\);

-- Location: LCCOMB_X33_Y14_N12
\dtp|somadorSeq|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~8_combout\ = (\dtp|somador3|Add0~4_combout\ & (\dtp|somadorSeq|Add0~7\ $ (GND))) # (!\dtp|somador3|Add0~4_combout\ & (!\dtp|somadorSeq|Add0~7\ & VCC))
-- \dtp|somadorSeq|Add0~9\ = CARRY((\dtp|somador3|Add0~4_combout\ & !\dtp|somadorSeq|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|somador3|Add0~4_combout\,
	datad => VCC,
	cin => \dtp|somadorSeq|Add0~7\,
	combout => \dtp|somadorSeq|Add0~8_combout\,
	cout => \dtp|somadorSeq|Add0~9\);

-- Location: LCCOMB_X33_Y14_N14
\dtp|somadorSeq|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~10_combout\ = (\dtp|somador3|Add0~6_combout\ & (!\dtp|somadorSeq|Add0~9\)) # (!\dtp|somador3|Add0~6_combout\ & ((\dtp|somadorSeq|Add0~9\) # (GND)))
-- \dtp|somadorSeq|Add0~11\ = CARRY((!\dtp|somadorSeq|Add0~9\) # (!\dtp|somador3|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|somador3|Add0~6_combout\,
	datad => VCC,
	cin => \dtp|somadorSeq|Add0~9\,
	combout => \dtp|somadorSeq|Add0~10_combout\,
	cout => \dtp|somadorSeq|Add0~11\);

-- Location: LCCOMB_X34_Y14_N24
\dtp|somador1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador1|Add0~6_combout\ = \dtp|somador1|Add0~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \dtp|somador1|Add0~5\,
	combout => \dtp|somador1|Add0~6_combout\);

-- Location: LCCOMB_X33_Y14_N30
\dtp|somador3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somador3|Add0~8_combout\ = \dtp|somador3|Add0~7\ $ (!\dtp|somador1|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dtp|somador1|Add0~6_combout\,
	cin => \dtp|somador3|Add0~7\,
	combout => \dtp|somador3|Add0~8_combout\);

-- Location: LCCOMB_X33_Y14_N16
\dtp|somadorSeq|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|somadorSeq|Add0~12_combout\ = \dtp|somadorSeq|Add0~11\ $ (!\dtp|somador3|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dtp|somador3|Add0~8_combout\,
	cin => \dtp|somadorSeq|Add0~11\,
	combout => \dtp|somadorSeq|Add0~12_combout\);

-- Location: LCCOMB_X33_Y14_N18
\dtp|decBCDsoma|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal1~1_combout\ = (\dtp|somadorSeq|Add0~2_combout\ & (!\dtp|somadorSeq|Add0~4_combout\ & !\dtp|somadorSeq|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~2_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datad => \dtp|somadorSeq|Add0~6_combout\,
	combout => \dtp|decBCDsoma|Equal1~1_combout\);

-- Location: LCCOMB_X33_Y14_N0
\dtp|decBCDsoma|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal1~2_combout\ = (!\dtp|somadorSeq|Add0~8_combout\ & (\dtp|somadorSeq|Add0~10_combout\ & (\dtp|somadorSeq|Add0~12_combout\ & \dtp|decBCDsoma|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~8_combout\,
	datab => \dtp|somadorSeq|Add0~10_combout\,
	datac => \dtp|somadorSeq|Add0~12_combout\,
	datad => \dtp|decBCDsoma|Equal1~1_combout\,
	combout => \dtp|decBCDsoma|Equal1~2_combout\);

-- Location: LCCOMB_X34_Y15_N0
\dtp|muxsoma2|D[2]~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~287_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(6))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~287_combout\);

-- Location: LCCOMB_X34_Y15_N18
\dtp|muxsoma2|D[2]~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~317_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~317_combout\);

-- Location: LCCOMB_X34_Y15_N16
\dtp|muxsoma2|D[2]~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~368_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|muxsoma2|D[2]~287_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~287_combout\,
	datad => \dtp|muxsoma2|D[2]~317_combout\,
	combout => \dtp|muxsoma2|D[2]~368_combout\);

-- Location: LCCOMB_X34_Y15_N14
\dtp|muxsoma2|D[2]~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~297_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(6) & !\dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~297_combout\);

-- Location: LCCOMB_X34_Y15_N6
\dtp|muxsoma2|D[2]~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~300_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(6) & !\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) $ ((\dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~300_combout\);

-- Location: LCCOMB_X34_Y15_N30
\dtp|muxsoma2|D[2]~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~367_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~297_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~300_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~297_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~300_combout\,
	combout => \dtp|muxsoma2|D[2]~367_combout\);

-- Location: LCCOMB_X33_Y15_N4
\dtp|muxsoma2|D[2]~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~371_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~368_combout\ & (\dtp|muxsoma2|D[2]~370_combout\)) # (!\dtp|muxsoma2|D[2]~368_combout\ & ((\dtp|muxsoma2|D[2]~367_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~370_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~368_combout\,
	datad => \dtp|muxsoma2|D[2]~367_combout\,
	combout => \dtp|muxsoma2|D[2]~371_combout\);

-- Location: LCCOMB_X32_Y15_N28
\dtp|muxsoma2|D[2]~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~247_combout\ = (\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(4) $ (((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5)))))) # (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(4) & !\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) & 
-- \dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~247_combout\);

-- Location: LCCOMB_X30_Y12_N0
\dtp|muxsoma2|D[2]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~76_combout\ = (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~76_combout\);

-- Location: LCCOMB_X32_Y12_N26
\dtp|muxsoma2|D[2]~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~278_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) & !\dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~278_combout\);

-- Location: LCCOMB_X32_Y15_N18
\dtp|muxsoma2|D[2]~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~365_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|muxsoma2|D[2]~278_combout\)))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(6) & (!\dtp|muxsoma2|D[2]~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[2]~76_combout\,
	datad => \dtp|muxsoma2|D[2]~278_combout\,
	combout => \dtp|muxsoma2|D[2]~365_combout\);

-- Location: LCCOMB_X32_Y15_N8
\dtp|muxsoma2|D[2]~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~366_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~365_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~247_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~247_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~365_combout\,
	combout => \dtp|muxsoma2|D[2]~366_combout\);

-- Location: LCCOMB_X33_Y15_N14
\dtp|muxsoma2|D[2]~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~372_combout\ = (\dtp|muxsoma2|D[2]~366_combout\) # ((\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[2]~371_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~371_combout\,
	datad => \dtp|muxsoma2|D[2]~366_combout\,
	combout => \dtp|muxsoma2|D[2]~372_combout\);

-- Location: LCCOMB_X32_Y15_N14
\dtp|muxsoma2|D[2]~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~408_combout\ = (\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) $ ((\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~408_combout\);

-- Location: LCCOMB_X33_Y15_N30
\dtp|muxsoma2|D[2]~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~407_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(6) & !\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~407_combout\);

-- Location: LCCOMB_X32_Y15_N2
\dtp|muxsoma2|D[2]~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~391_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~407_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~408_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~408_combout\,
	datad => \dtp|muxsoma2|D[2]~407_combout\,
	combout => \dtp|muxsoma2|D[2]~391_combout\);

-- Location: LCCOMB_X33_Y15_N16
\dtp|muxsoma2|D[2]~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~373_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010111100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~373_combout\);

-- Location: LCCOMB_X32_Y15_N26
\dtp|muxsoma2|D[2]~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~376_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~376_combout\);

-- Location: LCCOMB_X32_Y15_N20
\dtp|muxsoma2|D[2]~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~389_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~376_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~373_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~373_combout\,
	datad => \dtp|muxsoma2|D[2]~376_combout\,
	combout => \dtp|muxsoma2|D[2]~389_combout\);

-- Location: LCCOMB_X33_Y15_N24
\dtp|muxsoma2|D[2]~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~390_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~369_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~297_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~369_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~297_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~390_combout\);

-- Location: LCCOMB_X32_Y15_N4
\dtp|muxsoma2|D[2]~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~392_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~390_combout\ & (\dtp|muxsoma2|D[2]~391_combout\)) # (!\dtp|muxsoma2|D[2]~390_combout\ & ((\dtp|muxsoma2|D[2]~389_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~391_combout\,
	datac => \dtp|muxsoma2|D[2]~389_combout\,
	datad => \dtp|muxsoma2|D[2]~390_combout\,
	combout => \dtp|muxsoma2|D[2]~392_combout\);

-- Location: LCCOMB_X32_Y12_N14
\dtp|muxsoma2|D[2]~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~280_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(6))))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~280_combout\);

-- Location: LCCOMB_X32_Y12_N12
\dtp|muxsoma2|D[2]~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~281_combout\ = (\dtp|REG8|Q\(5) & (((\dtp|REG8|Q\(7) & !\dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|REG8|Q\(6)))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) $ ((!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~281_combout\);

-- Location: LCCOMB_X32_Y12_N16
\dtp|muxsoma2|D[2]~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~393_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~281_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~249_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~249_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~281_combout\,
	combout => \dtp|muxsoma2|D[2]~393_combout\);

-- Location: LCCOMB_X32_Y12_N22
\dtp|muxsoma2|D[2]~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~306_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|REG8|Q\(5) & !\dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~306_combout\);

-- Location: LCCOMB_X32_Y12_N10
\dtp|muxsoma2|D[2]~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~394_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~393_combout\ & ((\dtp|muxsoma2|D[2]~306_combout\))) # (!\dtp|muxsoma2|D[2]~393_combout\ & (\dtp|muxsoma2|D[2]~280_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~393_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~280_combout\,
	datac => \dtp|muxsoma2|D[2]~393_combout\,
	datad => \dtp|muxsoma2|D[2]~306_combout\,
	combout => \dtp|muxsoma2|D[2]~394_combout\);

-- Location: LCCOMB_X32_Y15_N30
\dtp|muxsoma2|D[2]~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~395_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~392_combout\)) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~392_combout\,
	datad => \dtp|muxsoma2|D[2]~394_combout\,
	combout => \dtp|muxsoma2|D[2]~395_combout\);

-- Location: LCCOMB_X29_Y14_N10
\dtp|muxsoma2|D[2]~112\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~112_combout\ = \dtp|REG8|Q\(4) $ (\dtp|REG8|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~112_combout\);

-- Location: LCCOMB_X32_Y15_N6
\dtp|muxsoma2|D[2]~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~383_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~112_combout\ & (\dtp|muxsoma2|D[2]~382_combout\)) # (!\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[2]~249_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~382_combout\,
	datab => \dtp|muxsoma2|D[2]~249_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|muxsoma2|D[2]~383_combout\);

-- Location: LCCOMB_X34_Y15_N2
\dtp|muxsoma2|D[2]~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~386_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~407_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~407_combout\,
	datad => \dtp|muxsoma2|D[2]~297_combout\,
	combout => \dtp|muxsoma2|D[2]~386_combout\);

-- Location: LCCOMB_X34_Y15_N26
\dtp|muxsoma2|D[2]~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~315_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(6) & \dtp|decBCDsoma|Equal1~2_combout\)) # (!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ ((\dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~315_combout\);

-- Location: LCCOMB_X34_Y15_N8
\dtp|muxsoma2|D[2]~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~385_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((!\dtp|muxsoma2|D[2]~315_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~297_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~297_combout\,
	datad => \dtp|muxsoma2|D[2]~315_combout\,
	combout => \dtp|muxsoma2|D[2]~385_combout\);

-- Location: LCCOMB_X34_Y15_N10
\dtp|muxsoma2|D[2]~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~384_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~300_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~287_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~287_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~300_combout\,
	combout => \dtp|muxsoma2|D[2]~384_combout\);

-- Location: LCCOMB_X34_Y15_N20
\dtp|muxsoma2|D[2]~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~387_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~385_combout\ & (\dtp|muxsoma2|D[2]~386_combout\)) # (!\dtp|muxsoma2|D[2]~385_combout\ & ((\dtp|muxsoma2|D[2]~384_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~386_combout\,
	datac => \dtp|muxsoma2|D[2]~385_combout\,
	datad => \dtp|muxsoma2|D[2]~384_combout\,
	combout => \dtp|muxsoma2|D[2]~387_combout\);

-- Location: LCCOMB_X33_Y15_N8
\dtp|muxsoma2|D[2]~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~388_combout\ = (\dtp|muxsoma2|D[2]~383_combout\) # ((\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[2]~387_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~383_combout\,
	datad => \dtp|muxsoma2|D[2]~387_combout\,
	combout => \dtp|muxsoma2|D[2]~388_combout\);

-- Location: LCCOMB_X33_Y15_N12
\dtp|muxsoma2|D[2]~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~369_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) $ ((!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~369_combout\);

-- Location: LCCOMB_X33_Y15_N22
\dtp|muxsoma2|D[2]~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~374_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~373_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~369_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~373_combout\,
	datad => \dtp|muxsoma2|D[2]~369_combout\,
	combout => \dtp|muxsoma2|D[2]~374_combout\);

-- Location: LCCOMB_X32_Y15_N0
\dtp|muxsoma2|D[2]~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~377_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~408_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~376_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~408_combout\,
	datad => \dtp|muxsoma2|D[2]~376_combout\,
	combout => \dtp|muxsoma2|D[2]~377_combout\);

-- Location: LCCOMB_X33_Y15_N0
\dtp|muxsoma2|D[2]~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~375_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~407_combout\) # ((\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(2) & (((!\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[2]~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~407_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~300_combout\,
	combout => \dtp|muxsoma2|D[2]~375_combout\);

-- Location: LCCOMB_X33_Y15_N18
\dtp|muxsoma2|D[2]~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~378_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~375_combout\ & ((\dtp|muxsoma2|D[2]~377_combout\))) # (!\dtp|muxsoma2|D[2]~375_combout\ & (\dtp|muxsoma2|D[2]~374_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~375_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~374_combout\,
	datac => \dtp|muxsoma2|D[2]~377_combout\,
	datad => \dtp|muxsoma2|D[2]~375_combout\,
	combout => \dtp|muxsoma2|D[2]~378_combout\);

-- Location: LCCOMB_X32_Y12_N20
\dtp|muxsoma2|D[2]~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~277_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~277_combout\);

-- Location: LCCOMB_X32_Y12_N28
\dtp|muxsoma2|D[2]~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~379_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~278_combout\))) # (!\dtp|REG8|Q\(2) & (!\dtp|muxsoma2|D[2]~244_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~244_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~278_combout\,
	combout => \dtp|muxsoma2|D[2]~379_combout\);

-- Location: LCCOMB_X32_Y12_N2
\dtp|muxsoma2|D[2]~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~380_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~379_combout\ & ((\dtp|muxsoma2|D[2]~277_combout\))) # (!\dtp|muxsoma2|D[2]~379_combout\ & (\dtp|muxsoma2|D[2]~281_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~281_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~277_combout\,
	datad => \dtp|muxsoma2|D[2]~379_combout\,
	combout => \dtp|muxsoma2|D[2]~380_combout\);

-- Location: LCCOMB_X33_Y15_N28
\dtp|muxsoma2|D[2]~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~381_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~378_combout\)) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~380_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~378_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~380_combout\,
	combout => \dtp|muxsoma2|D[2]~381_combout\);

-- Location: LCCOMB_X33_Y15_N26
\dtp|decBCDsoma|output[2]~98\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~98_combout\ = (\dtp|REG8|Q\(1) & (\dtp|REG8|Q\(3))) # (!\dtp|REG8|Q\(1) & ((\dtp|REG8|Q\(3) & ((\dtp|muxsoma2|D[2]~381_combout\))) # (!\dtp|REG8|Q\(3) & (\dtp|muxsoma2|D[2]~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|REG8|Q\(3),
	datac => \dtp|muxsoma2|D[2]~388_combout\,
	datad => \dtp|muxsoma2|D[2]~381_combout\,
	combout => \dtp|decBCDsoma|output[2]~98_combout\);

-- Location: LCCOMB_X33_Y15_N6
\dtp|decBCDsoma|output[2]~99\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~99_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|decBCDsoma|output[2]~98_combout\ & ((\dtp|muxsoma2|D[2]~395_combout\))) # (!\dtp|decBCDsoma|output[2]~98_combout\ & (\dtp|muxsoma2|D[2]~372_combout\)))) # (!\dtp|REG8|Q\(1) & 
-- (((\dtp|decBCDsoma|output[2]~98_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|muxsoma2|D[2]~372_combout\,
	datac => \dtp|muxsoma2|D[2]~395_combout\,
	datad => \dtp|decBCDsoma|output[2]~98_combout\,
	combout => \dtp|decBCDsoma|output[2]~99_combout\);

-- Location: LCCOMB_X33_Y15_N20
\dtp|decBCDsoma|output[2]~100\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[2]~100_combout\ = (\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[2]~97_combout\ & ((\dtp|decBCDsoma|output[2]~99_combout\))) # (!\dtp|decBCDsoma|output[2]~97_combout\ & (\dtp|decBCDsoma|output[2]~87_combout\)))) # 
-- (!\dtp|CSeq|cont\(1) & (((\dtp|decBCDsoma|output[2]~97_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datab => \dtp|decBCDsoma|output[2]~87_combout\,
	datac => \dtp|decBCDsoma|output[2]~97_combout\,
	datad => \dtp|decBCDsoma|output[2]~99_combout\,
	combout => \dtp|decBCDsoma|output[2]~100_combout\);

-- Location: LCFF_X33_Y15_N21
\dtp|play1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[2]~100_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(2));

-- Location: LCFF_X34_Y16_N9
\dtp|play1|Q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(3),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(11));

-- Location: LCFF_X34_Y16_N3
\dtp|play1|Q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(2),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(10));

-- Location: LCCOMB_X34_Y16_N8
\dtp|Comp|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Comp|Equal0~1_combout\ = (\dtp|play1|Q\(3) & (\dtp|play1|Q\(11) & (\dtp|play1|Q\(2) $ (!\dtp|play1|Q\(10))))) # (!\dtp|play1|Q\(3) & (!\dtp|play1|Q\(11) & (\dtp|play1|Q\(2) $ (!\dtp|play1|Q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|play1|Q\(3),
	datab => \dtp|play1|Q\(2),
	datac => \dtp|play1|Q\(11),
	datad => \dtp|play1|Q\(10),
	combout => \dtp|Comp|Equal0~1_combout\);

-- Location: LCCOMB_X36_Y14_N8
\dtp|decBCDsoma|output[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[6]~25_combout\ = (\dtp|somadorSeq|Add0~10_combout\ & ((\dtp|somadorSeq|Add0~4_combout\) # ((\dtp|somadorSeq|Add0~8_combout\) # (\dtp|somadorSeq|Add0~6_combout\)))) # (!\dtp|somadorSeq|Add0~10_combout\ & 
-- (((!\dtp|somadorSeq|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~10_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|somadorSeq|Add0~6_combout\,
	combout => \dtp|decBCDsoma|output[6]~25_combout\);

-- Location: LCCOMB_X36_Y14_N4
\dtp|decBCDsoma|output[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[6]~28_combout\ = (\dtp|somadorSeq|Add0~12_combout\ & (((\dtp|decBCDsoma|output[6]~25_combout\)))) # (!\dtp|somadorSeq|Add0~12_combout\ & (!\dtp|decBCDsoma|output[6]~27_combout\ & (\dtp|somadorSeq|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[6]~27_combout\,
	datab => \dtp|somadorSeq|Add0~10_combout\,
	datac => \dtp|decBCDsoma|output[6]~25_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|decBCDsoma|output[6]~28_combout\);

-- Location: LCFF_X36_Y14_N5
\dtp|play1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[6]~28_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(6));

-- Location: LCFF_X36_Y14_N27
\dtp|play1|Q[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(7),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(15));

-- Location: LCFF_X36_Y14_N11
\dtp|play1|Q[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(6),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(14));

-- Location: LCCOMB_X36_Y14_N26
\dtp|Comp|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Comp|Equal0~3_combout\ = (\dtp|play1|Q\(7) & (\dtp|play1|Q\(15) & (\dtp|play1|Q\(6) $ (!\dtp|play1|Q\(14))))) # (!\dtp|play1|Q\(7) & (!\dtp|play1|Q\(15) & (\dtp|play1|Q\(6) $ (!\dtp|play1|Q\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|play1|Q\(7),
	datab => \dtp|play1|Q\(6),
	datac => \dtp|play1|Q\(15),
	datad => \dtp|play1|Q\(14),
	combout => \dtp|Comp|Equal0~3_combout\);

-- Location: LCCOMB_X29_Y14_N18
\dtp|muxsoma2|D[3]~110\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~110_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4)) # (\dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~110_combout\);

-- Location: LCCOMB_X29_Y14_N16
\dtp|muxsoma2|D[2]~111\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~111_combout\ = \dtp|REG8|Q\(7) $ (\dtp|REG8|Q\(5) $ (\dtp|REG8|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~111_combout\);

-- Location: LCCOMB_X29_Y14_N8
\dtp|muxsoma2|D[3]~113\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~113_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[2]~76_combout\))) # (!\dtp|muxsoma2|D[2]~112_combout\ & (\dtp|muxsoma2|D[2]~111_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~111_combout\,
	datac => \dtp|muxsoma2|D[2]~76_combout\,
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|muxsoma2|D[3]~113_combout\);

-- Location: LCCOMB_X29_Y14_N26
\dtp|muxsoma2|D[2]~114\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~114_combout\ = (\dtp|REG8|Q\(4)) # (\dtp|REG8|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~114_combout\);

-- Location: LCCOMB_X29_Y14_N12
\dtp|muxsoma2|D[3]~115\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~115_combout\ = (!\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[2]~114_combout\ & ((!\dtp|muxsoma2|D[2]~65_combout\))) # (!\dtp|muxsoma2|D[2]~114_combout\ & (\dtp|muxsoma2|D[2]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~114_combout\,
	datac => \dtp|muxsoma2|D[2]~76_combout\,
	datad => \dtp|muxsoma2|D[2]~65_combout\,
	combout => \dtp|muxsoma2|D[3]~115_combout\);

-- Location: LCCOMB_X29_Y14_N2
\dtp|muxsoma2|D[3]~116\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~116_combout\ = (\dtp|muxsoma2|D[3]~110_combout\) # ((!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~113_combout\) # (\dtp|muxsoma2|D[3]~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[3]~110_combout\,
	datac => \dtp|muxsoma2|D[3]~113_combout\,
	datad => \dtp|muxsoma2|D[3]~115_combout\,
	combout => \dtp|muxsoma2|D[3]~116_combout\);

-- Location: LCCOMB_X30_Y14_N20
\dtp|decBCDsoma|output[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~31_combout\ = (\dtp|REG8|Q\(1) & (((\dtp|CSeq|cont\(2))))) # (!\dtp|REG8|Q\(1) & ((\dtp|CSeq|cont\(2) & ((\dtp|muxsoma2|D[3]~116_combout\))) # (!\dtp|CSeq|cont\(2) & (\dtp|muxsoma2|D[3]~119_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~119_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|CSeq|cont\(2),
	datad => \dtp|muxsoma2|D[3]~116_combout\,
	combout => \dtp|decBCDsoma|output[4]~31_combout\);

-- Location: LCCOMB_X29_Y14_N4
\dtp|muxsoma2|D[2]~120\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~120_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~120_combout\);

-- Location: LCCOMB_X29_Y14_N14
\dtp|muxsoma2|D[2]~121\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~121_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(7)))) # (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5)))))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(6) $ (\dtp|REG8|Q\(5) $ 
-- (!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~121_combout\);

-- Location: LCCOMB_X29_Y14_N24
\dtp|muxsoma2|D[2]~122\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~122_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~120_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~121_combout\))))) # (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~121_combout\))) # 
-- (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~120_combout\,
	datac => \dtp|muxsoma2|D[2]~121_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~122_combout\);

-- Location: LCCOMB_X35_Y14_N26
\dtp|decBCDsoma|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal2~2_combout\ = (\dtp|somadorSeq|Add0~0_combout\ & !\dtp|somadorSeq|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|somadorSeq|Add0~0_combout\,
	datad => \dtp|somadorSeq|Add0~2_combout\,
	combout => \dtp|decBCDsoma|Equal2~2_combout\);

-- Location: LCCOMB_X36_Y14_N12
\dtp|muxsoma1|D[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma1|D[3]~2_combout\ = (\dtp|REG8|Q\(7) & (\dtp|decBCDsoma|Equal2~2_combout\ & (!\dtp|somadorSeq|Add0~10_combout\ & \dtp|somadorSeq|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|decBCDsoma|Equal2~2_combout\,
	datac => \dtp|somadorSeq|Add0~10_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|muxsoma1|D[3]~2_combout\);

-- Location: LCCOMB_X36_Y14_N22
\dtp|muxsoma1|D[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma1|D[3]~3_combout\ = ((\dtp|somadorSeq|Add0~4_combout\) # ((!\dtp|muxsoma1|D[3]~2_combout\) # (!\dtp|somadorSeq|Add0~8_combout\))) # (!\dtp|somadorSeq|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~6_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|muxsoma1|D[3]~2_combout\,
	combout => \dtp|muxsoma1|D[3]~3_combout\);

-- Location: LCCOMB_X31_Y14_N0
\dtp|muxsoma2|D[2]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~61_combout\ = (!\dtp|somadorSeq|Add0~4_combout\ & (\dtp|decBCDsoma|Equal2~2_combout\ & (\dtp|somadorSeq|Add0~8_combout\ & \dtp|somadorSeq|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~4_combout\,
	datab => \dtp|decBCDsoma|Equal2~2_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|muxsoma2|D[2]~61_combout\);

-- Location: LCCOMB_X31_Y14_N18
\dtp|muxsoma2|D[2]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~62_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|somadorSeq|Add0~10_combout\) # ((!\dtp|muxsoma2|D[2]~61_combout\) # (!\dtp|somadorSeq|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~10_combout\,
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|somadorSeq|Add0~6_combout\,
	datad => \dtp|muxsoma2|D[2]~61_combout\,
	combout => \dtp|muxsoma2|D[2]~62_combout\);

-- Location: LCCOMB_X32_Y14_N0
\dtp|muxsoma2|D[2]~123\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~123_combout\ = (\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(5) & (\dtp|muxsoma1|D[3]~3_combout\))) # (!\dtp|REG8|Q\(0) & (((\dtp|muxsoma2|D[2]~62_combout\)) # (!\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|muxsoma1|D[3]~3_combout\,
	datad => \dtp|muxsoma2|D[2]~62_combout\,
	combout => \dtp|muxsoma2|D[2]~123_combout\);

-- Location: LCCOMB_X32_Y14_N6
\dtp|muxsoma2|D[2]~124\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~124_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[2]~123_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) $ ((!\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~123_combout\,
	combout => \dtp|muxsoma2|D[2]~124_combout\);

-- Location: LCCOMB_X32_Y14_N10
\dtp|muxsoma2|D[2]~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~418_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~124_combout\))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~124_combout\,
	combout => \dtp|muxsoma2|D[2]~418_combout\);

-- Location: LCCOMB_X32_Y14_N28
\dtp|muxsoma2|D[2]~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~419_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~418_combout\))) # (!\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~122_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~122_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~418_combout\,
	combout => \dtp|muxsoma2|D[2]~419_combout\);

-- Location: LCCOMB_X32_Y14_N12
\dtp|decBCDsoma|output[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~32_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|decBCDsoma|output[4]~31_combout\ & ((\dtp|muxsoma2|D[2]~419_combout\))) # (!\dtp|decBCDsoma|output[4]~31_combout\ & (\dtp|muxsoma2|D[3]~109_combout\)))) # (!\dtp|REG8|Q\(1) & 
-- (((\dtp|decBCDsoma|output[4]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~109_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|decBCDsoma|output[4]~31_combout\,
	datad => \dtp|muxsoma2|D[2]~419_combout\,
	combout => \dtp|decBCDsoma|output[4]~32_combout\);

-- Location: LCCOMB_X32_Y14_N22
\dtp|decBCDsoma|output[4]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~35_combout\ = (\dtp|REG8|Q\(3) & (((\dtp|CSeq|cont\(1)) # (\dtp|decBCDsoma|output[4]~32_combout\)))) # (!\dtp|REG8|Q\(3) & (\dtp|decBCDsoma|output[4]~34_combout\ & (!\dtp|CSeq|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[4]~34_combout\,
	datab => \dtp|REG8|Q\(3),
	datac => \dtp|CSeq|cont\(1),
	datad => \dtp|decBCDsoma|output[4]~32_combout\,
	combout => \dtp|decBCDsoma|output[4]~35_combout\);

-- Location: LCCOMB_X31_Y15_N28
\dtp|muxsoma2|D[2]~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~151_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(4)))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(7)) # 
-- (!\dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~151_combout\);

-- Location: LCCOMB_X29_Y14_N30
\dtp|muxsoma2|D[2]~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~155_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(5)) # ((\dtp|REG8|Q\(0) & \dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~155_combout\);

-- Location: LCCOMB_X30_Y15_N6
\dtp|muxsoma2|D[2]~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~156_combout\ = (\dtp|REG8|Q\(2) & (!\dtp|muxsoma2|D[2]~91_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~91_combout\,
	datac => \dtp|muxsoma2|D[2]~155_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~156_combout\);

-- Location: LCCOMB_X31_Y15_N22
\dtp|muxsoma2|D[2]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~89_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # ((!\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (((\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~89_combout\);

-- Location: LCCOMB_X30_Y15_N24
\dtp|muxsoma2|D[2]~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~153_combout\ = (\dtp|muxsoma2|D[2]~152_combout\) # ((!\dtp|REG8|Q\(2) & (!\dtp|muxsoma2|D[2]~107_combout\ & !\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~152_combout\,
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~107_combout\,
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~153_combout\);

-- Location: LCCOMB_X31_Y15_N2
\dtp|muxsoma2|D[3]~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~154_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|CSeq|cont\(0))))) # (!\dtp|REG8|Q\(6) & ((\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~153_combout\))) # (!\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~89_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~153_combout\,
	combout => \dtp|muxsoma2|D[3]~154_combout\);

-- Location: LCCOMB_X31_Y15_N24
\dtp|muxsoma2|D[3]~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~157_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~154_combout\ & ((\dtp|muxsoma2|D[2]~156_combout\))) # (!\dtp|muxsoma2|D[3]~154_combout\ & (\dtp|muxsoma2|D[2]~151_combout\)))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[2]~151_combout\,
	datac => \dtp|muxsoma2|D[2]~156_combout\,
	datad => \dtp|muxsoma2|D[3]~154_combout\,
	combout => \dtp|muxsoma2|D[3]~157_combout\);

-- Location: LCCOMB_X32_Y15_N10
\dtp|decBCDsoma|output[4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~36_combout\ = (\dtp|CSeq|cont\(2) & (((\dtp|REG8|Q\(1))))) # (!\dtp|CSeq|cont\(2) & ((\dtp|REG8|Q\(1) & ((\dtp|muxsoma2|D[3]~157_combout\))) # (!\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[3]~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~162_combout\,
	datab => \dtp|CSeq|cont\(2),
	datac => \dtp|REG8|Q\(1),
	datad => \dtp|muxsoma2|D[3]~157_combout\,
	combout => \dtp|decBCDsoma|output[4]~36_combout\);

-- Location: LCCOMB_X31_Y14_N16
\dtp|muxsoma2|D[2]~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~396_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|muxsoma2|D[2]~62_combout\))) # (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma2|D[2]~62_combout\,
	combout => \dtp|muxsoma2|D[2]~396_combout\);

-- Location: LCCOMB_X31_Y14_N22
\dtp|decBCDsoma|Equal10~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal10~3_combout\ = (\dtp|somadorSeq|Add0~0_combout\ & (!\dtp|somadorSeq|Add0~2_combout\ & (!\dtp|somadorSeq|Add0~10_combout\ & \dtp|somadorSeq|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~0_combout\,
	datab => \dtp|somadorSeq|Add0~2_combout\,
	datac => \dtp|somadorSeq|Add0~10_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|decBCDsoma|Equal10~3_combout\);

-- Location: LCCOMB_X31_Y14_N28
\dtp|decBCDsoma|Equal10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal10~2_combout\ = (\dtp|somadorSeq|Add0~4_combout\) # (((!\dtp|decBCDsoma|Equal10~3_combout\) # (!\dtp|somadorSeq|Add0~8_combout\)) # (!\dtp|somadorSeq|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~4_combout\,
	datab => \dtp|somadorSeq|Add0~6_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|decBCDsoma|Equal10~3_combout\,
	combout => \dtp|decBCDsoma|Equal10~2_combout\);

-- Location: LCCOMB_X30_Y14_N10
\dtp|muxsoma2|D[3]~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~140_combout\ = (\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal10~2_combout\) # (!\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[3]~140_combout\);

-- Location: LCCOMB_X30_Y14_N8
\dtp|muxsoma2|D[3]~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~141_combout\ = (\dtp|REG8|Q\(2) & (!\dtp|muxsoma2|D[2]~76_combout\ & (!\dtp|muxsoma2|D[2]~62_combout\))) # (!\dtp|REG8|Q\(2) & (((\dtp|muxsoma2|D[3]~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~76_combout\,
	datab => \dtp|muxsoma2|D[2]~62_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[3]~140_combout\,
	combout => \dtp|muxsoma2|D[3]~141_combout\);

-- Location: LCCOMB_X31_Y14_N30
\dtp|muxsoma2|D[3]~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~142_combout\ = (\dtp|REG8|Q\(4) & ((!\dtp|muxsoma2|D[3]~141_combout\))) # (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~396_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~396_combout\,
	datad => \dtp|muxsoma2|D[3]~141_combout\,
	combout => \dtp|muxsoma2|D[3]~142_combout\);

-- Location: LCCOMB_X36_Y14_N16
\dtp|muxsoma2|D[3]~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~147_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((!\dtp|REG8|Q\(4) & !\dtp|REG8|Q\(2)))))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) & \dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(4)) # 
-- (\dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~147_combout\);

-- Location: LCCOMB_X35_Y14_N30
\dtp|muxsoma2|D[3]~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~144_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~144_combout\);

-- Location: LCCOMB_X35_Y14_N4
\dtp|muxsoma2|D[2]~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~143_combout\ = ((\dtp|REG8|Q\(0) & !\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~143_combout\);

-- Location: LCCOMB_X35_Y14_N0
\dtp|muxsoma2|D[2]~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~145_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|decBCDsoma|Equal10~2_combout\)) # (!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5)) # ((!\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[2]~145_combout\);

-- Location: LCCOMB_X35_Y14_N22
\dtp|muxsoma2|D[3]~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~146_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[3]~144_combout\ & ((\dtp|muxsoma2|D[2]~145_combout\))) # (!\dtp|muxsoma2|D[3]~144_combout\ & (\dtp|muxsoma2|D[2]~143_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (\dtp|muxsoma2|D[3]~144_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[3]~144_combout\,
	datac => \dtp|muxsoma2|D[2]~143_combout\,
	datad => \dtp|muxsoma2|D[2]~145_combout\,
	combout => \dtp|muxsoma2|D[3]~146_combout\);

-- Location: LCCOMB_X35_Y14_N24
\dtp|muxsoma2|D[3]~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~148_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6)) # ((\dtp|muxsoma2|D[3]~146_combout\)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~147_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~147_combout\,
	datad => \dtp|muxsoma2|D[3]~146_combout\,
	combout => \dtp|muxsoma2|D[3]~148_combout\);

-- Location: LCCOMB_X32_Y14_N4
\dtp|muxsoma2|D[3]~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~150_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~148_combout\ & (\dtp|muxsoma2|D[3]~149_combout\)) # (!\dtp|muxsoma2|D[3]~148_combout\ & ((\dtp|muxsoma2|D[3]~142_combout\))))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~148_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~149_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~142_combout\,
	datad => \dtp|muxsoma2|D[3]~148_combout\,
	combout => \dtp|muxsoma2|D[3]~150_combout\);

-- Location: LCCOMB_X30_Y14_N26
\dtp|muxsoma2|D[3]~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~399_combout\ = (\dtp|REG8|Q\(0) & (((!\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[3]~399_combout\);

-- Location: LCCOMB_X30_Y14_N4
\dtp|muxsoma2|D[3]~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~174_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[3]~399_combout\ & (\dtp|REG8|Q\(2))) # (!\dtp|muxsoma2|D[3]~399_combout\ & (!\dtp|REG8|Q\(2) & \dtp|muxsoma2|D[2]~76_combout\)))) # (!\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2) & 
-- \dtp|muxsoma2|D[2]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[3]~399_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~76_combout\,
	combout => \dtp|muxsoma2|D[3]~174_combout\);

-- Location: LCCOMB_X31_Y14_N4
\dtp|muxsoma2|D[3]~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~175_combout\ = (\dtp|muxsoma2|D[3]~173_combout\ & ((\dtp|muxsoma2|D[3]~174_combout\ & ((\dtp|muxsoma1|D[3]~3_combout\))) # (!\dtp|muxsoma2|D[3]~174_combout\ & (\dtp|muxsoma2|D[2]~62_combout\)))) # (!\dtp|muxsoma2|D[3]~173_combout\ & 
-- (((\dtp|muxsoma2|D[3]~174_combout\) # (\dtp|muxsoma1|D[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~173_combout\,
	datab => \dtp|muxsoma2|D[2]~62_combout\,
	datac => \dtp|muxsoma2|D[3]~174_combout\,
	datad => \dtp|muxsoma1|D[3]~3_combout\,
	combout => \dtp|muxsoma2|D[3]~175_combout\);

-- Location: LCCOMB_X31_Y14_N26
\dtp|muxsoma2|D[2]~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~164_combout\ = ((\dtp|REG8|Q\(5) & \dtp|decBCDsoma|Equal10~2_combout\)) # (!\dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[2]~164_combout\);

-- Location: LCCOMB_X31_Y14_N20
\dtp|muxsoma2|D[3]~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~165_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|muxsoma2|D[2]~164_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~396_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~396_combout\,
	datad => \dtp|muxsoma2|D[2]~164_combout\,
	combout => \dtp|muxsoma2|D[3]~165_combout\);

-- Location: LCCOMB_X31_Y14_N10
\dtp|muxsoma2|D[2]~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~398_combout\ = (\dtp|muxsoma2|D[2]~62_combout\) # ((!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma2|D[2]~62_combout\,
	combout => \dtp|muxsoma2|D[2]~398_combout\);

-- Location: LCCOMB_X31_Y14_N6
\dtp|muxsoma2|D[3]~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~166_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[3]~165_combout\ & ((\dtp|muxsoma2|D[2]~398_combout\))) # (!\dtp|muxsoma2|D[3]~165_combout\ & (\dtp|muxsoma2|D[2]~163_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[3]~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~163_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[3]~165_combout\,
	datad => \dtp|muxsoma2|D[2]~398_combout\,
	combout => \dtp|muxsoma2|D[3]~166_combout\);

-- Location: LCCOMB_X37_Y14_N0
\dtp|muxsoma2|D[3]~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~171_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(5)) # (!\dtp|REG8|Q\(2)))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((!\dtp|REG8|Q\(2)) # 
-- (!\dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~171_combout\);

-- Location: LCCOMB_X37_Y14_N2
\dtp|muxsoma2|D[2]~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~167_combout\ = (\dtp|REG8|Q\(5) & \dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~167_combout\);

-- Location: LCCOMB_X36_Y14_N14
\dtp|muxsoma2|D[2]~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~169_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|muxsoma1|D[3]~3_combout\))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma1|D[3]~3_combout\,
	combout => \dtp|muxsoma2|D[2]~169_combout\);

-- Location: LCCOMB_X37_Y14_N18
\dtp|muxsoma2|D[3]~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~170_combout\ = (\dtp|muxsoma2|D[3]~168_combout\ & (((\dtp|muxsoma2|D[2]~169_combout\) # (!\dtp|REG8|Q\(4))))) # (!\dtp|muxsoma2|D[3]~168_combout\ & (!\dtp|muxsoma2|D[2]~167_combout\ & (\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~168_combout\,
	datab => \dtp|muxsoma2|D[2]~167_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~169_combout\,
	combout => \dtp|muxsoma2|D[3]~170_combout\);

-- Location: LCCOMB_X37_Y14_N6
\dtp|muxsoma2|D[3]~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~172_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6)) # ((\dtp|muxsoma2|D[3]~170_combout\)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~171_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~171_combout\,
	datad => \dtp|muxsoma2|D[3]~170_combout\,
	combout => \dtp|muxsoma2|D[3]~172_combout\);

-- Location: LCCOMB_X32_Y14_N18
\dtp|muxsoma2|D[3]~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~176_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~172_combout\ & (\dtp|muxsoma2|D[3]~175_combout\)) # (!\dtp|muxsoma2|D[3]~172_combout\ & ((\dtp|muxsoma2|D[3]~166_combout\))))) # (!\dtp|REG8|Q\(6) & 
-- (((\dtp|muxsoma2|D[3]~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[3]~175_combout\,
	datac => \dtp|muxsoma2|D[3]~166_combout\,
	datad => \dtp|muxsoma2|D[3]~172_combout\,
	combout => \dtp|muxsoma2|D[3]~176_combout\);

-- Location: LCCOMB_X32_Y14_N24
\dtp|decBCDsoma|output[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~37_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|decBCDsoma|output[4]~36_combout\ & ((\dtp|muxsoma2|D[3]~176_combout\))) # (!\dtp|decBCDsoma|output[4]~36_combout\ & (\dtp|muxsoma2|D[3]~150_combout\)))) # (!\dtp|CSeq|cont\(2) & 
-- (\dtp|decBCDsoma|output[4]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(2),
	datab => \dtp|decBCDsoma|output[4]~36_combout\,
	datac => \dtp|muxsoma2|D[3]~150_combout\,
	datad => \dtp|muxsoma2|D[3]~176_combout\,
	combout => \dtp|decBCDsoma|output[4]~37_combout\);

-- Location: LCCOMB_X37_Y14_N26
\dtp|muxsoma2|D[2]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~70_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2)) # (!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4) & 
-- \dtp|REG8|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~70_combout\);

-- Location: LCCOMB_X37_Y14_N4
\dtp|muxsoma2|D[2]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~69_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(5)) # ((\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~69_combout\);

-- Location: LCCOMB_X37_Y14_N20
\dtp|muxsoma2|D[3]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~71_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~69_combout\) # (\dtp|REG8|Q\(6))))) # (!\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~70_combout\ & ((!\dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~70_combout\,
	datac => \dtp|muxsoma2|D[2]~69_combout\,
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[3]~71_combout\);

-- Location: LCCOMB_X35_Y14_N8
\dtp|muxsoma2|D[2]~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~72_combout\ = (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~72_combout\);

-- Location: LCCOMB_X35_Y14_N14
\dtp|muxsoma2|D[2]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~74_combout\ = (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~72_combout\) # ((!\dtp|muxsoma2|D[2]~73_combout\ & \dtp|decBCDsoma|Equal10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~73_combout\,
	datab => \dtp|muxsoma2|D[2]~72_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[2]~74_combout\);

-- Location: LCCOMB_X36_Y14_N10
\dtp|muxsoma2|D[2]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~75_combout\ = (\dtp|REG8|Q\(0)) # ((\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~75_combout\);

-- Location: LCCOMB_X36_Y14_N30
\dtp|muxsoma2|D[2]~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~411_combout\ = (\dtp|REG8|Q\(4) & (\dtp|muxsoma1|D[3]~3_combout\ $ (((!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma1|D[3]~3_combout\,
	combout => \dtp|muxsoma2|D[2]~411_combout\);

-- Location: LCCOMB_X35_Y14_N12
\dtp|muxsoma2|D[2]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~77_combout\ = (\dtp|muxsoma2|D[2]~75_combout\ & ((\dtp|muxsoma2|D[2]~409_combout\) # ((\dtp|muxsoma2|D[2]~62_combout\)))) # (!\dtp|muxsoma2|D[2]~75_combout\ & (\dtp|muxsoma2|D[2]~409_combout\ $ (((\dtp|muxsoma2|D[2]~411_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~409_combout\,
	datab => \dtp|muxsoma2|D[2]~75_combout\,
	datac => \dtp|muxsoma2|D[2]~62_combout\,
	datad => \dtp|muxsoma2|D[2]~411_combout\,
	combout => \dtp|muxsoma2|D[2]~77_combout\);

-- Location: LCCOMB_X35_Y14_N6
\dtp|muxsoma2|D[2]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~78_combout\ = (\dtp|muxsoma2|D[2]~74_combout\) # ((\dtp|REG8|Q\(2) & \dtp|muxsoma2|D[2]~77_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~74_combout\,
	datad => \dtp|muxsoma2|D[2]~77_combout\,
	combout => \dtp|muxsoma2|D[2]~78_combout\);

-- Location: LCCOMB_X30_Y14_N0
\dtp|muxsoma2|D[2]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~63_combout\ = (\dtp|muxsoma2|D[2]~62_combout\) # (!\dtp|REG8|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma2|D[2]~62_combout\,
	combout => \dtp|muxsoma2|D[2]~63_combout\);

-- Location: LCCOMB_X30_Y14_N22
\dtp|muxsoma2|D[2]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~64_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(0) & \dtp|decBCDsoma|Equal10~2_combout\)) # (!\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal10~2_combout\,
	combout => \dtp|muxsoma2|D[2]~64_combout\);

-- Location: LCCOMB_X30_Y14_N28
\dtp|muxsoma2|D[2]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~66_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~64_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~65_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~64_combout\,
	combout => \dtp|muxsoma2|D[2]~66_combout\);

-- Location: LCCOMB_X31_Y14_N2
\dtp|muxsoma2|D[2]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~68_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~66_combout\ & (\dtp|muxsoma2|D[2]~396_combout\)) # (!\dtp|muxsoma2|D[2]~66_combout\ & ((\dtp|muxsoma2|D[2]~63_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~66_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~396_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~63_combout\,
	datad => \dtp|muxsoma2|D[2]~66_combout\,
	combout => \dtp|muxsoma2|D[2]~68_combout\);

-- Location: LCCOMB_X32_Y14_N8
\dtp|muxsoma2|D[3]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~79_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~71_combout\ & (\dtp|muxsoma2|D[2]~78_combout\)) # (!\dtp|muxsoma2|D[3]~71_combout\ & ((\dtp|muxsoma2|D[2]~68_combout\))))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~71_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[3]~71_combout\,
	datac => \dtp|muxsoma2|D[2]~78_combout\,
	datad => \dtp|muxsoma2|D[2]~68_combout\,
	combout => \dtp|muxsoma2|D[3]~79_combout\);

-- Location: LCCOMB_X35_Y14_N16
\dtp|muxsoma2|D[2]~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~409_combout\ = (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~409_combout\);

-- Location: LCCOMB_X31_Y14_N12
\dtp|muxsoma2|D[3]~102\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~102_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma1|D[3]~3_combout\))) # (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~396_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~396_combout\,
	datad => \dtp|muxsoma1|D[3]~3_combout\,
	combout => \dtp|muxsoma2|D[3]~102_combout\);

-- Location: LCCOMB_X31_Y14_N14
\dtp|muxsoma2|D[3]~103\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~103_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~62_combout\) # ((\dtp|muxsoma2|D[2]~409_combout\)))) # (!\dtp|REG8|Q\(2) & (((\dtp|muxsoma2|D[3]~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~62_combout\,
	datac => \dtp|muxsoma2|D[2]~409_combout\,
	datad => \dtp|muxsoma2|D[3]~102_combout\,
	combout => \dtp|muxsoma2|D[3]~103_combout\);

-- Location: LCCOMB_X30_Y14_N12
\dtp|muxsoma2|D[3]~95\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~95_combout\ = (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~63_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~65_combout\,
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~63_combout\,
	combout => \dtp|muxsoma2|D[3]~95_combout\);

-- Location: LCCOMB_X30_Y14_N14
\dtp|muxsoma2|D[3]~96\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~96_combout\ = (\dtp|muxsoma2|D[3]~95_combout\) # ((\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[2]~396_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~396_combout\,
	datad => \dtp|muxsoma2|D[3]~95_combout\,
	combout => \dtp|muxsoma2|D[3]~96_combout\);

-- Location: LCCOMB_X31_Y14_N8
\dtp|muxsoma2|D[3]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~104_combout\ = (\dtp|muxsoma2|D[3]~101_combout\ & (((\dtp|muxsoma2|D[3]~103_combout\)) # (!\dtp|REG8|Q\(6)))) # (!\dtp|muxsoma2|D[3]~101_combout\ & (\dtp|REG8|Q\(6) & ((\dtp|muxsoma2|D[3]~96_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~101_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|muxsoma2|D[3]~103_combout\,
	datad => \dtp|muxsoma2|D[3]~96_combout\,
	combout => \dtp|muxsoma2|D[3]~104_combout\);

-- Location: LCCOMB_X32_Y14_N26
\dtp|decBCDsoma|output[4]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~30_combout\ = (\dtp|decBCDsoma|output[4]~29_combout\ & (((\dtp|muxsoma2|D[3]~104_combout\)) # (!\dtp|CSeq|cont\(2)))) # (!\dtp|decBCDsoma|output[4]~29_combout\ & (\dtp|CSeq|cont\(2) & (\dtp|muxsoma2|D[3]~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[4]~29_combout\,
	datab => \dtp|CSeq|cont\(2),
	datac => \dtp|muxsoma2|D[3]~79_combout\,
	datad => \dtp|muxsoma2|D[3]~104_combout\,
	combout => \dtp|decBCDsoma|output[4]~30_combout\);

-- Location: LCCOMB_X32_Y14_N30
\dtp|decBCDsoma|output[4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[4]~38_combout\ = (\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[4]~35_combout\ & (\dtp|decBCDsoma|output[4]~37_combout\)) # (!\dtp|decBCDsoma|output[4]~35_combout\ & ((\dtp|decBCDsoma|output[4]~30_combout\))))) # 
-- (!\dtp|CSeq|cont\(1) & (\dtp|decBCDsoma|output[4]~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(1),
	datab => \dtp|decBCDsoma|output[4]~35_combout\,
	datac => \dtp|decBCDsoma|output[4]~37_combout\,
	datad => \dtp|decBCDsoma|output[4]~30_combout\,
	combout => \dtp|decBCDsoma|output[4]~38_combout\);

-- Location: LCFF_X32_Y14_N31
\dtp|play1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|decBCDsoma|output[4]~38_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(4));

-- Location: LCFF_X36_Y14_N29
\dtp|play1|Q[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(5),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(13));

-- Location: LCFF_X36_Y14_N3
\dtp|play1|Q[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(4),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Play~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|play1|Q\(12));

-- Location: LCCOMB_X36_Y14_N28
\dtp|Comp|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Comp|Equal0~2_combout\ = (\dtp|play1|Q\(5) & (\dtp|play1|Q\(13) & (\dtp|play1|Q\(4) $ (!\dtp|play1|Q\(12))))) # (!\dtp|play1|Q\(5) & (!\dtp|play1|Q\(13) & (\dtp|play1|Q\(4) $ (!\dtp|play1|Q\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|play1|Q\(5),
	datab => \dtp|play1|Q\(4),
	datac => \dtp|play1|Q\(13),
	datad => \dtp|play1|Q\(12),
	combout => \dtp|Comp|Equal0~2_combout\);

-- Location: LCCOMB_X34_Y16_N10
\dtp|Comp|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Comp|Equal0~4_combout\ = (\dtp|Comp|Equal0~0_combout\ & (\dtp|Comp|Equal0~1_combout\ & (\dtp|Comp|Equal0~3_combout\ & \dtp|Comp|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Comp|Equal0~0_combout\,
	datab => \dtp|Comp|Equal0~1_combout\,
	datac => \dtp|Comp|Equal0~3_combout\,
	datad => \dtp|Comp|Equal0~2_combout\,
	combout => \dtp|Comp|Equal0~4_combout\);

-- Location: LCCOMB_X34_Y16_N22
\dtp|LoadMux1|D[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|LoadMux1|D[1]~2_combout\ = ((!\dtp|SelREG2|Q\(0) & !\dtp|Comp|Equal0~4_combout\)) # (!\ctr|EAtual.Check~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|SelREG2|Q\(0),
	datac => \ctr|EAtual.Check~regout\,
	datad => \dtp|Comp|Equal0~4_combout\,
	combout => \dtp|LoadMux1|D[1]~2_combout\);

-- Location: LCCOMB_X34_Y20_N4
\dtp|Ctime|cont[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[0]~8_combout\ = (\ctr|EAtual.Check~regout\ & (\dtp|Ctime|cont\(0) & VCC)) # (!\ctr|EAtual.Check~regout\ & (!\dtp|Ctime|cont\(0)))
-- \dtp|Ctime|cont[0]~9\ = CARRY((!\ctr|EAtual.Check~regout\ & !\dtp|Ctime|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Check~regout\,
	datab => \dtp|Ctime|cont\(0),
	datad => VCC,
	combout => \dtp|Ctime|cont[0]~8_combout\,
	cout => \dtp|Ctime|cont[0]~9\);

-- Location: LCCOMB_X36_Y24_N4
\dtp|divfreq|cont[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[0]~29_combout\ = \dtp|divfreq|cont\(0) $ (VCC)
-- \dtp|divfreq|cont[0]~30\ = CARRY(\dtp|divfreq|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(0),
	datad => VCC,
	combout => \dtp|divfreq|cont[0]~29_combout\,
	cout => \dtp|divfreq|cont[0]~30\);

-- Location: LCCOMB_X35_Y24_N16
\dtp|rst_divfreq\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|rst_divfreq~combout\ = (\ctr|EAtual.Setup~regout\) # (\ctr|EAtual.Sellect~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Setup~regout\,
	datad => \ctr|EAtual.Sellect~regout\,
	combout => \dtp|rst_divfreq~combout\);

-- Location: LCFF_X36_Y24_N5
\dtp|divfreq|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[0]~29_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(0));

-- Location: LCCOMB_X36_Y24_N6
\dtp|divfreq|cont[1]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[1]~31_combout\ = (\dtp|divfreq|cont\(1) & (!\dtp|divfreq|cont[0]~30\)) # (!\dtp|divfreq|cont\(1) & ((\dtp|divfreq|cont[0]~30\) # (GND)))
-- \dtp|divfreq|cont[1]~32\ = CARRY((!\dtp|divfreq|cont[0]~30\) # (!\dtp|divfreq|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(1),
	datad => VCC,
	cin => \dtp|divfreq|cont[0]~30\,
	combout => \dtp|divfreq|cont[1]~31_combout\,
	cout => \dtp|divfreq|cont[1]~32\);

-- Location: LCCOMB_X36_Y24_N8
\dtp|divfreq|cont[2]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[2]~33_combout\ = (\dtp|divfreq|cont\(2) & (\dtp|divfreq|cont[1]~32\ $ (GND))) # (!\dtp|divfreq|cont\(2) & (!\dtp|divfreq|cont[1]~32\ & VCC))
-- \dtp|divfreq|cont[2]~34\ = CARRY((\dtp|divfreq|cont\(2) & !\dtp|divfreq|cont[1]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(2),
	datad => VCC,
	cin => \dtp|divfreq|cont[1]~32\,
	combout => \dtp|divfreq|cont[2]~33_combout\,
	cout => \dtp|divfreq|cont[2]~34\);

-- Location: LCFF_X36_Y24_N9
\dtp|divfreq|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[2]~33_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(2));

-- Location: LCCOMB_X36_Y24_N12
\dtp|divfreq|cont[4]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[4]~37_combout\ = (\dtp|divfreq|cont\(4) & (\dtp|divfreq|cont[3]~36\ $ (GND))) # (!\dtp|divfreq|cont\(4) & (!\dtp|divfreq|cont[3]~36\ & VCC))
-- \dtp|divfreq|cont[4]~38\ = CARRY((\dtp|divfreq|cont\(4) & !\dtp|divfreq|cont[3]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(4),
	datad => VCC,
	cin => \dtp|divfreq|cont[3]~36\,
	combout => \dtp|divfreq|cont[4]~37_combout\,
	cout => \dtp|divfreq|cont[4]~38\);

-- Location: LCFF_X37_Y24_N9
\dtp|divfreq|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \dtp|divfreq|cont[4]~37_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(4));

-- Location: LCCOMB_X36_Y24_N14
\dtp|divfreq|cont[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[5]~39_combout\ = (\dtp|divfreq|cont\(5) & (!\dtp|divfreq|cont[4]~38\)) # (!\dtp|divfreq|cont\(5) & ((\dtp|divfreq|cont[4]~38\) # (GND)))
-- \dtp|divfreq|cont[5]~40\ = CARRY((!\dtp|divfreq|cont[4]~38\) # (!\dtp|divfreq|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(5),
	datad => VCC,
	cin => \dtp|divfreq|cont[4]~38\,
	combout => \dtp|divfreq|cont[5]~39_combout\,
	cout => \dtp|divfreq|cont[5]~40\);

-- Location: LCFF_X37_Y24_N1
\dtp|divfreq|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \dtp|divfreq|cont[5]~39_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(5));

-- Location: LCCOMB_X36_Y24_N16
\dtp|divfreq|cont[6]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[6]~41_combout\ = (\dtp|divfreq|cont\(6) & (\dtp|divfreq|cont[5]~40\ $ (GND))) # (!\dtp|divfreq|cont\(6) & (!\dtp|divfreq|cont[5]~40\ & VCC))
-- \dtp|divfreq|cont[6]~42\ = CARRY((\dtp|divfreq|cont\(6) & !\dtp|divfreq|cont[5]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(6),
	datad => VCC,
	cin => \dtp|divfreq|cont[5]~40\,
	combout => \dtp|divfreq|cont[6]~41_combout\,
	cout => \dtp|divfreq|cont[6]~42\);

-- Location: LCCOMB_X36_Y24_N18
\dtp|divfreq|cont[7]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[7]~43_combout\ = (\dtp|divfreq|cont\(7) & (!\dtp|divfreq|cont[6]~42\)) # (!\dtp|divfreq|cont\(7) & ((\dtp|divfreq|cont[6]~42\) # (GND)))
-- \dtp|divfreq|cont[7]~44\ = CARRY((!\dtp|divfreq|cont[6]~42\) # (!\dtp|divfreq|cont\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(7),
	datad => VCC,
	cin => \dtp|divfreq|cont[6]~42\,
	combout => \dtp|divfreq|cont[7]~43_combout\,
	cout => \dtp|divfreq|cont[7]~44\);

-- Location: LCFF_X36_Y24_N19
\dtp|divfreq|cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[7]~43_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(7));

-- Location: LCCOMB_X36_Y24_N20
\dtp|divfreq|cont[8]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[8]~45_combout\ = (\dtp|divfreq|cont\(8) & (\dtp|divfreq|cont[7]~44\ $ (GND))) # (!\dtp|divfreq|cont\(8) & (!\dtp|divfreq|cont[7]~44\ & VCC))
-- \dtp|divfreq|cont[8]~46\ = CARRY((\dtp|divfreq|cont\(8) & !\dtp|divfreq|cont[7]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(8),
	datad => VCC,
	cin => \dtp|divfreq|cont[7]~44\,
	combout => \dtp|divfreq|cont[8]~45_combout\,
	cout => \dtp|divfreq|cont[8]~46\);

-- Location: LCFF_X36_Y24_N21
\dtp|divfreq|cont[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[8]~45_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(8));

-- Location: LCCOMB_X36_Y24_N24
\dtp|divfreq|cont[10]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[10]~49_combout\ = (\dtp|divfreq|cont\(10) & (\dtp|divfreq|cont[9]~48\ $ (GND))) # (!\dtp|divfreq|cont\(10) & (!\dtp|divfreq|cont[9]~48\ & VCC))
-- \dtp|divfreq|cont[10]~50\ = CARRY((\dtp|divfreq|cont\(10) & !\dtp|divfreq|cont[9]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(10),
	datad => VCC,
	cin => \dtp|divfreq|cont[9]~48\,
	combout => \dtp|divfreq|cont[10]~49_combout\,
	cout => \dtp|divfreq|cont[10]~50\);

-- Location: LCFF_X36_Y24_N25
\dtp|divfreq|cont[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[10]~49_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(10));

-- Location: LCCOMB_X36_Y24_N26
\dtp|divfreq|cont[11]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[11]~51_combout\ = (\dtp|divfreq|cont\(11) & (!\dtp|divfreq|cont[10]~50\)) # (!\dtp|divfreq|cont\(11) & ((\dtp|divfreq|cont[10]~50\) # (GND)))
-- \dtp|divfreq|cont[11]~52\ = CARRY((!\dtp|divfreq|cont[10]~50\) # (!\dtp|divfreq|cont\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(11),
	datad => VCC,
	cin => \dtp|divfreq|cont[10]~50\,
	combout => \dtp|divfreq|cont[11]~51_combout\,
	cout => \dtp|divfreq|cont[11]~52\);

-- Location: LCFF_X36_Y24_N27
\dtp|divfreq|cont[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[11]~51_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(11));

-- Location: LCCOMB_X36_Y24_N28
\dtp|divfreq|cont[12]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[12]~53_combout\ = (\dtp|divfreq|cont\(12) & (\dtp|divfreq|cont[11]~52\ $ (GND))) # (!\dtp|divfreq|cont\(12) & (!\dtp|divfreq|cont[11]~52\ & VCC))
-- \dtp|divfreq|cont[12]~54\ = CARRY((\dtp|divfreq|cont\(12) & !\dtp|divfreq|cont[11]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(12),
	datad => VCC,
	cin => \dtp|divfreq|cont[11]~52\,
	combout => \dtp|divfreq|cont[12]~53_combout\,
	cout => \dtp|divfreq|cont[12]~54\);

-- Location: LCFF_X36_Y24_N29
\dtp|divfreq|cont[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[12]~53_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(12));

-- Location: LCCOMB_X36_Y24_N30
\dtp|divfreq|cont[13]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[13]~55_combout\ = (\dtp|divfreq|cont\(13) & (!\dtp|divfreq|cont[12]~54\)) # (!\dtp|divfreq|cont\(13) & ((\dtp|divfreq|cont[12]~54\) # (GND)))
-- \dtp|divfreq|cont[13]~56\ = CARRY((!\dtp|divfreq|cont[12]~54\) # (!\dtp|divfreq|cont\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(13),
	datad => VCC,
	cin => \dtp|divfreq|cont[12]~54\,
	combout => \dtp|divfreq|cont[13]~55_combout\,
	cout => \dtp|divfreq|cont[13]~56\);

-- Location: LCFF_X36_Y24_N31
\dtp|divfreq|cont[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[13]~55_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(13));

-- Location: LCCOMB_X36_Y23_N0
\dtp|divfreq|cont[14]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[14]~57_combout\ = (\dtp|divfreq|cont\(14) & (\dtp|divfreq|cont[13]~56\ $ (GND))) # (!\dtp|divfreq|cont\(14) & (!\dtp|divfreq|cont[13]~56\ & VCC))
-- \dtp|divfreq|cont[14]~58\ = CARRY((\dtp|divfreq|cont\(14) & !\dtp|divfreq|cont[13]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(14),
	datad => VCC,
	cin => \dtp|divfreq|cont[13]~56\,
	combout => \dtp|divfreq|cont[14]~57_combout\,
	cout => \dtp|divfreq|cont[14]~58\);

-- Location: LCFF_X37_Y24_N25
\dtp|divfreq|cont[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \dtp|divfreq|cont[14]~57_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(14));

-- Location: LCCOMB_X36_Y23_N2
\dtp|divfreq|cont[15]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[15]~59_combout\ = (\dtp|divfreq|cont\(15) & (!\dtp|divfreq|cont[14]~58\)) # (!\dtp|divfreq|cont\(15) & ((\dtp|divfreq|cont[14]~58\) # (GND)))
-- \dtp|divfreq|cont[15]~60\ = CARRY((!\dtp|divfreq|cont[14]~58\) # (!\dtp|divfreq|cont\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(15),
	datad => VCC,
	cin => \dtp|divfreq|cont[14]~58\,
	combout => \dtp|divfreq|cont[15]~59_combout\,
	cout => \dtp|divfreq|cont[15]~60\);

-- Location: LCFF_X36_Y23_N3
\dtp|divfreq|cont[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[15]~59_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(15));

-- Location: LCCOMB_X36_Y23_N4
\dtp|divfreq|cont[16]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[16]~61_combout\ = (\dtp|divfreq|cont\(16) & (\dtp|divfreq|cont[15]~60\ $ (GND))) # (!\dtp|divfreq|cont\(16) & (!\dtp|divfreq|cont[15]~60\ & VCC))
-- \dtp|divfreq|cont[16]~62\ = CARRY((\dtp|divfreq|cont\(16) & !\dtp|divfreq|cont[15]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(16),
	datad => VCC,
	cin => \dtp|divfreq|cont[15]~60\,
	combout => \dtp|divfreq|cont[16]~61_combout\,
	cout => \dtp|divfreq|cont[16]~62\);

-- Location: LCFF_X36_Y23_N5
\dtp|divfreq|cont[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[16]~61_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(16));

-- Location: LCCOMB_X36_Y23_N6
\dtp|divfreq|cont[17]~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[17]~63_combout\ = (\dtp|divfreq|cont\(17) & (!\dtp|divfreq|cont[16]~62\)) # (!\dtp|divfreq|cont\(17) & ((\dtp|divfreq|cont[16]~62\) # (GND)))
-- \dtp|divfreq|cont[17]~64\ = CARRY((!\dtp|divfreq|cont[16]~62\) # (!\dtp|divfreq|cont\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(17),
	datad => VCC,
	cin => \dtp|divfreq|cont[16]~62\,
	combout => \dtp|divfreq|cont[17]~63_combout\,
	cout => \dtp|divfreq|cont[17]~64\);

-- Location: LCCOMB_X36_Y23_N8
\dtp|divfreq|cont[18]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[18]~65_combout\ = (\dtp|divfreq|cont\(18) & (\dtp|divfreq|cont[17]~64\ $ (GND))) # (!\dtp|divfreq|cont\(18) & (!\dtp|divfreq|cont[17]~64\ & VCC))
-- \dtp|divfreq|cont[18]~66\ = CARRY((\dtp|divfreq|cont\(18) & !\dtp|divfreq|cont[17]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(18),
	datad => VCC,
	cin => \dtp|divfreq|cont[17]~64\,
	combout => \dtp|divfreq|cont[18]~65_combout\,
	cout => \dtp|divfreq|cont[18]~66\);

-- Location: LCFF_X36_Y23_N9
\dtp|divfreq|cont[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[18]~65_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(18));

-- Location: LCCOMB_X36_Y23_N10
\dtp|divfreq|cont[19]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[19]~67_combout\ = (\dtp|divfreq|cont\(19) & (!\dtp|divfreq|cont[18]~66\)) # (!\dtp|divfreq|cont\(19) & ((\dtp|divfreq|cont[18]~66\) # (GND)))
-- \dtp|divfreq|cont[19]~68\ = CARRY((!\dtp|divfreq|cont[18]~66\) # (!\dtp|divfreq|cont\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(19),
	datad => VCC,
	cin => \dtp|divfreq|cont[18]~66\,
	combout => \dtp|divfreq|cont[19]~67_combout\,
	cout => \dtp|divfreq|cont[19]~68\);

-- Location: LCCOMB_X36_Y23_N14
\dtp|divfreq|cont[21]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[21]~71_combout\ = (\dtp|divfreq|cont\(21) & (!\dtp|divfreq|cont[20]~70\)) # (!\dtp|divfreq|cont\(21) & ((\dtp|divfreq|cont[20]~70\) # (GND)))
-- \dtp|divfreq|cont[21]~72\ = CARRY((!\dtp|divfreq|cont[20]~70\) # (!\dtp|divfreq|cont\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(21),
	datad => VCC,
	cin => \dtp|divfreq|cont[20]~70\,
	combout => \dtp|divfreq|cont[21]~71_combout\,
	cout => \dtp|divfreq|cont[21]~72\);

-- Location: LCFF_X36_Y23_N15
\dtp|divfreq|cont[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[21]~71_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(21));

-- Location: LCCOMB_X36_Y23_N16
\dtp|divfreq|cont[22]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[22]~73_combout\ = (\dtp|divfreq|cont\(22) & (\dtp|divfreq|cont[21]~72\ $ (GND))) # (!\dtp|divfreq|cont\(22) & (!\dtp|divfreq|cont[21]~72\ & VCC))
-- \dtp|divfreq|cont[22]~74\ = CARRY((\dtp|divfreq|cont\(22) & !\dtp|divfreq|cont[21]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(22),
	datad => VCC,
	cin => \dtp|divfreq|cont[21]~72\,
	combout => \dtp|divfreq|cont[22]~73_combout\,
	cout => \dtp|divfreq|cont[22]~74\);

-- Location: LCCOMB_X36_Y23_N18
\dtp|divfreq|cont[23]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[23]~75_combout\ = (\dtp|divfreq|cont\(23) & (!\dtp|divfreq|cont[22]~74\)) # (!\dtp|divfreq|cont\(23) & ((\dtp|divfreq|cont[22]~74\) # (GND)))
-- \dtp|divfreq|cont[23]~76\ = CARRY((!\dtp|divfreq|cont[22]~74\) # (!\dtp|divfreq|cont\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(23),
	datad => VCC,
	cin => \dtp|divfreq|cont[22]~74\,
	combout => \dtp|divfreq|cont[23]~75_combout\,
	cout => \dtp|divfreq|cont[23]~76\);

-- Location: LCFF_X36_Y23_N19
\dtp|divfreq|cont[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[23]~75_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(23));

-- Location: LCCOMB_X36_Y23_N20
\dtp|divfreq|cont[24]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[24]~77_combout\ = (\dtp|divfreq|cont\(24) & (\dtp|divfreq|cont[23]~76\ $ (GND))) # (!\dtp|divfreq|cont\(24) & (!\dtp|divfreq|cont[23]~76\ & VCC))
-- \dtp|divfreq|cont[24]~78\ = CARRY((\dtp|divfreq|cont\(24) & !\dtp|divfreq|cont[23]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(24),
	datad => VCC,
	cin => \dtp|divfreq|cont[23]~76\,
	combout => \dtp|divfreq|cont[24]~77_combout\,
	cout => \dtp|divfreq|cont[24]~78\);

-- Location: LCCOMB_X36_Y23_N22
\dtp|divfreq|cont[25]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[25]~79_combout\ = (\dtp|divfreq|cont\(25) & (!\dtp|divfreq|cont[24]~78\)) # (!\dtp|divfreq|cont\(25) & ((\dtp|divfreq|cont[24]~78\) # (GND)))
-- \dtp|divfreq|cont[25]~80\ = CARRY((!\dtp|divfreq|cont[24]~78\) # (!\dtp|divfreq|cont\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|cont\(25),
	datad => VCC,
	cin => \dtp|divfreq|cont[24]~78\,
	combout => \dtp|divfreq|cont[25]~79_combout\,
	cout => \dtp|divfreq|cont[25]~80\);

-- Location: LCFF_X36_Y23_N23
\dtp|divfreq|cont[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[25]~79_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(25));

-- Location: LCCOMB_X36_Y23_N24
\dtp|divfreq|cont[26]~87\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[26]~87_combout\ = (\dtp|divfreq|cont\(26) & (\dtp|divfreq|cont[25]~80\ $ (GND))) # (!\dtp|divfreq|cont\(26) & (!\dtp|divfreq|cont[25]~80\ & VCC))
-- \dtp|divfreq|cont[26]~88\ = CARRY((\dtp|divfreq|cont\(26) & !\dtp|divfreq|cont[25]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(26),
	datad => VCC,
	cin => \dtp|divfreq|cont[25]~80\,
	combout => \dtp|divfreq|cont[26]~87_combout\,
	cout => \dtp|divfreq|cont[26]~88\);

-- Location: LCCOMB_X36_Y23_N26
\dtp|divfreq|cont[27]~89\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont[27]~89_combout\ = \dtp|divfreq|cont[26]~88\ $ (\dtp|divfreq|cont\(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \dtp|divfreq|cont\(27),
	cin => \dtp|divfreq|cont[26]~88\,
	combout => \dtp|divfreq|cont[27]~89_combout\);

-- Location: LCFF_X36_Y23_N27
\dtp|divfreq|cont[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[27]~89_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(27));

-- Location: LCFF_X36_Y23_N25
\dtp|divfreq|cont[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[26]~87_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(26));

-- Location: LCFF_X36_Y23_N21
\dtp|divfreq|cont[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[24]~77_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(24));

-- Location: LCFF_X36_Y23_N7
\dtp|divfreq|cont[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[17]~63_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(17));

-- Location: LCCOMB_X37_Y24_N20
\dtp|divfreq|cont~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~81_combout\ = (\dtp|divfreq|cont\(14) & (\dtp|divfreq|cont\(12) & (\dtp|divfreq|cont\(13) & \dtp|divfreq|cont\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(14),
	datab => \dtp|divfreq|cont\(12),
	datac => \dtp|divfreq|cont\(13),
	datad => \dtp|divfreq|cont\(15),
	combout => \dtp|divfreq|cont~81_combout\);

-- Location: LCFF_X36_Y24_N17
\dtp|divfreq|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[6]~41_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(6));

-- Location: LCCOMB_X37_Y24_N4
\dtp|divfreq|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~3_combout\ = (!\dtp|divfreq|cont\(5)) # (!\dtp|divfreq|cont\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|divfreq|cont\(4),
	datad => \dtp|divfreq|cont\(5),
	combout => \dtp|divfreq|LessThan0~3_combout\);

-- Location: LCFF_X36_Y24_N7
\dtp|divfreq|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[1]~31_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(1));

-- Location: LCCOMB_X36_Y24_N2
\dtp|divfreq|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~2_combout\ = (((!\dtp|divfreq|cont\(1)) # (!\dtp|divfreq|cont\(0))) # (!\dtp|divfreq|cont\(2))) # (!\dtp|divfreq|cont\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(3),
	datab => \dtp|divfreq|cont\(2),
	datac => \dtp|divfreq|cont\(0),
	datad => \dtp|divfreq|cont\(1),
	combout => \dtp|divfreq|LessThan0~2_combout\);

-- Location: LCCOMB_X37_Y24_N12
\dtp|divfreq|cont~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~82_combout\ = ((\dtp|divfreq|cont\(6) & (!\dtp|divfreq|LessThan0~3_combout\ & !\dtp|divfreq|LessThan0~2_combout\))) # (!\dtp|divfreq|LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|LessThan0~1_combout\,
	datab => \dtp|divfreq|cont\(6),
	datac => \dtp|divfreq|LessThan0~3_combout\,
	datad => \dtp|divfreq|LessThan0~2_combout\,
	combout => \dtp|divfreq|cont~82_combout\);

-- Location: LCCOMB_X37_Y24_N22
\dtp|divfreq|cont~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~83_combout\ = (\dtp|divfreq|cont\(16)) # ((\dtp|divfreq|cont~81_combout\ & ((\dtp|divfreq|cont\(11)) # (\dtp|divfreq|cont~82_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(16),
	datab => \dtp|divfreq|cont\(11),
	datac => \dtp|divfreq|cont~81_combout\,
	datad => \dtp|divfreq|cont~82_combout\,
	combout => \dtp|divfreq|cont~83_combout\);

-- Location: LCCOMB_X37_Y24_N18
\dtp|divfreq|cont~84\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~84_combout\ = (\dtp|divfreq|cont\(18)) # ((\dtp|divfreq|cont\(17) & \dtp|divfreq|cont~83_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(18),
	datac => \dtp|divfreq|cont\(17),
	datad => \dtp|divfreq|cont~83_combout\,
	combout => \dtp|divfreq|cont~84_combout\);

-- Location: LCCOMB_X37_Y24_N28
\dtp|divfreq|cont~85\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~85_combout\ = (\dtp|divfreq|cont\(24)) # ((\dtp|divfreq|cont~28_combout\ & (\dtp|divfreq|cont\(23) & \dtp|divfreq|cont~84_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont~28_combout\,
	datab => \dtp|divfreq|cont\(24),
	datac => \dtp|divfreq|cont\(23),
	datad => \dtp|divfreq|cont~84_combout\,
	combout => \dtp|divfreq|cont~85_combout\);

-- Location: LCCOMB_X37_Y24_N16
\dtp|divfreq|cont~86\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~86_combout\ = (\dtp|divfreq|cont\(27)) # ((\dtp|divfreq|cont\(26)) # ((\dtp|divfreq|cont\(25) & \dtp|divfreq|cont~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(25),
	datab => \dtp|divfreq|cont\(27),
	datac => \dtp|divfreq|cont\(26),
	datad => \dtp|divfreq|cont~85_combout\,
	combout => \dtp|divfreq|cont~86_combout\);

-- Location: LCCOMB_X37_Y24_N6
\dtp|divfreq|CLK_1Hz~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|CLK_1Hz~feeder_combout\ = \dtp|divfreq|cont~86_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|divfreq|cont~86_combout\,
	combout => \dtp|divfreq|CLK_1Hz~feeder_combout\);

-- Location: LCFF_X37_Y24_N7
\dtp|divfreq|CLK_1Hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|CLK_1Hz~feeder_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|CLK_1Hz~regout\);

-- Location: LCCOMB_X34_Y20_N0
\dtp|E5_or_E4clk1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|E5_or_E4clk1~combout\ = (\ctr|EAtual.Check~regout\) # ((\ctr|EAtual.Play~regout\ & \dtp|divfreq|CLK_1Hz~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Check~regout\,
	datab => \ctr|EAtual.Play~regout\,
	datac => \dtp|divfreq|CLK_1Hz~regout\,
	combout => \dtp|E5_or_E4clk1~combout\);

-- Location: LCFF_X34_Y20_N5
\dtp|Ctime|cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[0]~8_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(0));

-- Location: LCCOMB_X34_Y20_N6
\dtp|Ctime|cont[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[1]~10_combout\ = ((\dtp|Ctime|cont\(1) $ (\dtp|LoadMux1|D[1]~2_combout\ $ (\dtp|Ctime|cont[0]~9\)))) # (GND)
-- \dtp|Ctime|cont[1]~11\ = CARRY((\dtp|Ctime|cont\(1) & ((!\dtp|Ctime|cont[0]~9\) # (!\dtp|LoadMux1|D[1]~2_combout\))) # (!\dtp|Ctime|cont\(1) & (!\dtp|LoadMux1|D[1]~2_combout\ & !\dtp|Ctime|cont[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|LoadMux1|D[1]~2_combout\,
	datad => VCC,
	cin => \dtp|Ctime|cont[0]~9\,
	combout => \dtp|Ctime|cont[1]~10_combout\,
	cout => \dtp|Ctime|cont[1]~11\);

-- Location: LCCOMB_X34_Y20_N8
\dtp|Ctime|cont[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[2]~12_combout\ = ((\dtp|LoadMux1|D[2]~1_combout\ $ (\dtp|Ctime|cont\(2) $ (!\dtp|Ctime|cont[1]~11\)))) # (GND)
-- \dtp|Ctime|cont[2]~13\ = CARRY((\dtp|LoadMux1|D[2]~1_combout\ & ((\dtp|Ctime|cont\(2)) # (!\dtp|Ctime|cont[1]~11\))) # (!\dtp|LoadMux1|D[2]~1_combout\ & (\dtp|Ctime|cont\(2) & !\dtp|Ctime|cont[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|LoadMux1|D[2]~1_combout\,
	datab => \dtp|Ctime|cont\(2),
	datad => VCC,
	cin => \dtp|Ctime|cont[1]~11\,
	combout => \dtp|Ctime|cont[2]~12_combout\,
	cout => \dtp|Ctime|cont[2]~13\);

-- Location: LCFF_X34_Y20_N9
\dtp|Ctime|cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[2]~12_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(2));

-- Location: LCCOMB_X34_Y20_N26
\dtp|LoadMux1|D[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|LoadMux1|D[7]~0_combout\ = (!\dtp|Comp|Equal0~4_combout\) # (!\ctr|EAtual.Check~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Check~regout\,
	datad => \dtp|Comp|Equal0~4_combout\,
	combout => \dtp|LoadMux1|D[7]~0_combout\);

-- Location: LCCOMB_X34_Y20_N10
\dtp|Ctime|cont[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[3]~14_combout\ = (\dtp|Ctime|cont\(3) & ((\dtp|LoadMux1|D[7]~0_combout\ & (\dtp|Ctime|cont[2]~13\ & VCC)) # (!\dtp|LoadMux1|D[7]~0_combout\ & (!\dtp|Ctime|cont[2]~13\)))) # (!\dtp|Ctime|cont\(3) & ((\dtp|LoadMux1|D[7]~0_combout\ & 
-- (!\dtp|Ctime|cont[2]~13\)) # (!\dtp|LoadMux1|D[7]~0_combout\ & ((\dtp|Ctime|cont[2]~13\) # (GND)))))
-- \dtp|Ctime|cont[3]~15\ = CARRY((\dtp|Ctime|cont\(3) & (!\dtp|LoadMux1|D[7]~0_combout\ & !\dtp|Ctime|cont[2]~13\)) # (!\dtp|Ctime|cont\(3) & ((!\dtp|Ctime|cont[2]~13\) # (!\dtp|LoadMux1|D[7]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(3),
	datab => \dtp|LoadMux1|D[7]~0_combout\,
	datad => VCC,
	cin => \dtp|Ctime|cont[2]~13\,
	combout => \dtp|Ctime|cont[3]~14_combout\,
	cout => \dtp|Ctime|cont[3]~15\);

-- Location: LCCOMB_X34_Y20_N12
\dtp|Ctime|cont[4]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[4]~16_combout\ = ((\dtp|Ctime|cont\(4) $ (\dtp|LoadMux1|D[7]~0_combout\ $ (!\dtp|Ctime|cont[3]~15\)))) # (GND)
-- \dtp|Ctime|cont[4]~17\ = CARRY((\dtp|Ctime|cont\(4) & ((\dtp|LoadMux1|D[7]~0_combout\) # (!\dtp|Ctime|cont[3]~15\))) # (!\dtp|Ctime|cont\(4) & (\dtp|LoadMux1|D[7]~0_combout\ & !\dtp|Ctime|cont[3]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(4),
	datab => \dtp|LoadMux1|D[7]~0_combout\,
	datad => VCC,
	cin => \dtp|Ctime|cont[3]~15\,
	combout => \dtp|Ctime|cont[4]~16_combout\,
	cout => \dtp|Ctime|cont[4]~17\);

-- Location: LCFF_X34_Y20_N13
\dtp|Ctime|cont[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[4]~16_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(4));

-- Location: LCFF_X34_Y20_N11
\dtp|Ctime|cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[3]~14_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(3));

-- Location: LCCOMB_X32_Y20_N24
\dtp|dec7bcd|output~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~21_combout\ = (!\dtp|Ctime|cont\(2) & (!\dtp|Ctime|cont\(4) & !\dtp|Ctime|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output~21_combout\);

-- Location: LCCOMB_X34_Y20_N14
\dtp|Ctime|cont[5]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[5]~18_combout\ = ((\dtp|Ctime|cont\(5) $ (\dtp|LoadMux1|D[7]~0_combout\ $ (\dtp|Ctime|cont[4]~17\)))) # (GND)
-- \dtp|Ctime|cont[5]~19\ = CARRY((\dtp|Ctime|cont\(5) & ((!\dtp|Ctime|cont[4]~17\) # (!\dtp|LoadMux1|D[7]~0_combout\))) # (!\dtp|Ctime|cont\(5) & (!\dtp|LoadMux1|D[7]~0_combout\ & !\dtp|Ctime|cont[4]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|LoadMux1|D[7]~0_combout\,
	datad => VCC,
	cin => \dtp|Ctime|cont[4]~17\,
	combout => \dtp|Ctime|cont[5]~18_combout\,
	cout => \dtp|Ctime|cont[5]~19\);

-- Location: LCCOMB_X34_Y20_N16
\dtp|Ctime|cont[6]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[6]~20_combout\ = (\dtp|Ctime|cont\(6) & ((\dtp|LoadMux1|D[7]~0_combout\ & (!\dtp|Ctime|cont[5]~19\)) # (!\dtp|LoadMux1|D[7]~0_combout\ & (\dtp|Ctime|cont[5]~19\ & VCC)))) # (!\dtp|Ctime|cont\(6) & ((\dtp|LoadMux1|D[7]~0_combout\ & 
-- ((\dtp|Ctime|cont[5]~19\) # (GND))) # (!\dtp|LoadMux1|D[7]~0_combout\ & (!\dtp|Ctime|cont[5]~19\))))
-- \dtp|Ctime|cont[6]~21\ = CARRY((\dtp|Ctime|cont\(6) & (\dtp|LoadMux1|D[7]~0_combout\ & !\dtp|Ctime|cont[5]~19\)) # (!\dtp|Ctime|cont\(6) & ((\dtp|LoadMux1|D[7]~0_combout\) # (!\dtp|Ctime|cont[5]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(6),
	datab => \dtp|LoadMux1|D[7]~0_combout\,
	datad => VCC,
	cin => \dtp|Ctime|cont[5]~19\,
	combout => \dtp|Ctime|cont[6]~20_combout\,
	cout => \dtp|Ctime|cont[6]~21\);

-- Location: LCCOMB_X34_Y20_N18
\dtp|Ctime|cont[7]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|cont[7]~22_combout\ = \dtp|Ctime|cont\(7) $ (\dtp|Ctime|cont[6]~21\ $ (\dtp|LoadMux1|D[7]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(7),
	datad => \dtp|LoadMux1|D[7]~0_combout\,
	cin => \dtp|Ctime|cont[6]~21\,
	combout => \dtp|Ctime|cont[7]~22_combout\);

-- Location: LCFF_X34_Y20_N19
\dtp|Ctime|cont[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[7]~22_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(7));

-- Location: LCFF_X34_Y20_N17
\dtp|Ctime|cont[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[6]~20_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(6));

-- Location: LCCOMB_X32_Y20_N12
\dtp|Ctime|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|Ctime|LessThan0~0_combout\ = ((\dtp|Ctime|cont\(7)) # ((!\dtp|Ctime|cont\(0)) # (!\dtp|Ctime|cont\(6)))) # (!\dtp|Ctime|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|Ctime|cont\(7),
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(0),
	combout => \dtp|Ctime|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y20_N2
\ctr|COMB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|COMB~0_combout\ = (!\dtp|dectermo|Equal14~0_combout\ & (((\dtp|Ctime|LessThan0~0_combout\) # (!\dtp|dec7bcd|output~21_combout\)) # (!\dtp|Ctime|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dectermo|Equal14~0_combout\,
	datac => \dtp|dec7bcd|output~21_combout\,
	datad => \dtp|Ctime|LessThan0~0_combout\,
	combout => \ctr|COMB~0_combout\);

-- Location: LCCOMB_X35_Y17_N14
\ctr|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector4~0_combout\ = (!\bsc|BTN1_state.SaidaAtiva~regout\ & \ctr|EAtual.Result~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bsc|BTN1_state.SaidaAtiva~regout\,
	datac => \ctr|EAtual.Result~regout\,
	combout => \ctr|Selector4~0_combout\);

-- Location: LCCOMB_X35_Y17_N20
\ctr|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctr|Selector4~1_combout\ = (\ctr|Selector4~0_combout\) # ((!\ctr|COMB~0_combout\ & ((\ctr|EAtual.Sellect~regout\) # (\ctr|EAtual.Play~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Sellect~regout\,
	datab => \ctr|COMB~0_combout\,
	datac => \ctr|Selector4~0_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \ctr|Selector4~1_combout\);

-- Location: LCFF_X35_Y17_N21
\ctr|EAtual.Result\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \ctr|Selector4~1_combout\,
	aclr => \bsc|BTN0_state.SaidaAtiva~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctr|EAtual.Result~regout\);

-- Location: LCCOMB_X37_Y24_N30
\dtp|divfreq|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~4_combout\ = (\dtp|divfreq|LessThan0~1_combout\ & (!\dtp|divfreq|cont\(6) & ((\dtp|divfreq|LessThan0~3_combout\) # (\dtp|divfreq|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|LessThan0~1_combout\,
	datab => \dtp|divfreq|cont\(6),
	datac => \dtp|divfreq|LessThan0~3_combout\,
	datad => \dtp|divfreq|LessThan0~2_combout\,
	combout => \dtp|divfreq|LessThan0~4_combout\);

-- Location: LCCOMB_X37_Y24_N26
\dtp|divfreq|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~6_combout\ = ((!\dtp|divfreq|cont\(15) & ((\dtp|divfreq|LessThan0~5_combout\) # (\dtp|divfreq|LessThan0~4_combout\)))) # (!\dtp|divfreq|cont\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|LessThan0~5_combout\,
	datab => \dtp|divfreq|cont\(15),
	datac => \dtp|divfreq|cont\(16),
	datad => \dtp|divfreq|LessThan0~4_combout\,
	combout => \dtp|divfreq|LessThan0~6_combout\);

-- Location: LCFF_X36_Y23_N17
\dtp|divfreq|cont[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[22]~73_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(22));

-- Location: LCFF_X36_Y23_N11
\dtp|divfreq|cont[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|cont[19]~67_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	sclr => \dtp|divfreq|cont~86_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|cont\(19));

-- Location: LCCOMB_X36_Y23_N28
\dtp|divfreq|cont~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|cont~28_combout\ = (\dtp|divfreq|cont\(20) & (\dtp|divfreq|cont\(21) & (\dtp|divfreq|cont\(22) & \dtp|divfreq|cont\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(20),
	datab => \dtp|divfreq|cont\(21),
	datac => \dtp|divfreq|cont\(22),
	datad => \dtp|divfreq|cont\(19),
	combout => \dtp|divfreq|cont~28_combout\);

-- Location: LCCOMB_X37_Y24_N2
\dtp|divfreq|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~7_combout\ = (((\dtp|divfreq|LessThan0~6_combout\ & !\dtp|divfreq|cont\(17))) # (!\dtp|divfreq|cont~28_combout\)) # (!\dtp|divfreq|cont\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|cont\(18),
	datab => \dtp|divfreq|LessThan0~6_combout\,
	datac => \dtp|divfreq|cont\(17),
	datad => \dtp|divfreq|cont~28_combout\,
	combout => \dtp|divfreq|LessThan0~7_combout\);

-- Location: LCCOMB_X37_Y24_N10
\dtp|divfreq|LessThan0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|divfreq|LessThan0~8_combout\ = ((\dtp|divfreq|cont\(24) & ((\dtp|divfreq|cont\(23)) # (!\dtp|divfreq|LessThan0~7_combout\)))) # (!\dtp|divfreq|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|divfreq|LessThan0~0_combout\,
	datab => \dtp|divfreq|cont\(24),
	datac => \dtp|divfreq|cont\(23),
	datad => \dtp|divfreq|LessThan0~7_combout\,
	combout => \dtp|divfreq|LessThan0~8_combout\);

-- Location: LCFF_X37_Y24_N11
\dtp|divfreq|sim_2hz\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|divfreq|LessThan0~8_combout\,
	aclr => \dtp|rst_divfreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|divfreq|sim_2hz~regout\);

-- Location: LCCOMB_X36_Y6_N20
\dtp|mx_led|D[0]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[0]~38_combout\ = (\dtp|divfreq|sim_2hz~regout\) # (!\ctr|EAtual.Result~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[0]~38_combout\);

-- Location: LCCOMB_X36_Y7_N22
\dtp|mx_led|D[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[1]~49_combout\ = (\ctr|EAtual.Result~regout\ & ((\dtp|divfreq|sim_2hz~regout\))) # (!\ctr|EAtual.Result~regout\ & (!\dtp|dectermo|Equal14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dectermo|Equal14~0_combout\,
	datab => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[1]~49_combout\);

-- Location: LCCOMB_X35_Y6_N4
\dtp|mx_led|D[2]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[2]~40_combout\ = (\dtp|cntround|cont\(2) & \dtp|cntround|cont\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|cntround|cont\(2),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|mx_led|D[2]~40_combout\);

-- Location: LCCOMB_X36_Y6_N24
\dtp|mx_led|D[2]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[2]~50_combout\ = (\ctr|EAtual.Result~regout\ & (\dtp|divfreq|sim_2hz~regout\)) # (!\ctr|EAtual.Result~regout\ & (((!\dtp|cntround|cont\(3)) # (!\dtp|mx_led|D[2]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datab => \dtp|divfreq|sim_2hz~regout\,
	datac => \dtp|mx_led|D[2]~40_combout\,
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|mx_led|D[2]~50_combout\);

-- Location: LCCOMB_X36_Y7_N2
\dtp|dectermo|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|S~0_combout\ = (\dtp|cntround|cont\(2) & (\dtp|cntround|cont\(3) & (\dtp|cntround|cont\(0) $ (\dtp|cntround|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datab => \dtp|cntround|cont\(3),
	datac => \dtp|cntround|cont\(0),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|dectermo|S~0_combout\);

-- Location: LCCOMB_X36_Y7_N12
\dtp|mx_led|D[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[3]~51_combout\ = (\ctr|EAtual.Result~regout\ & (((\dtp|divfreq|sim_2hz~regout\)))) # (!\ctr|EAtual.Result~regout\ & (!\dtp|dectermo|Equal14~0_combout\ & (!\dtp|dectermo|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dectermo|Equal14~0_combout\,
	datab => \dtp|dectermo|S~0_combout\,
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[3]~51_combout\);

-- Location: LCCOMB_X36_Y7_N6
\dtp|mx_led|D[4]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[4]~60_combout\ = (!\ctr|EAtual.Result~regout\ & (((!\dtp|cntround|cont\(1)) # (!\dtp|cntround|cont\(3))) # (!\dtp|cntround|cont\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datab => \dtp|cntround|cont\(3),
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|mx_led|D[4]~60_combout\);

-- Location: LCCOMB_X36_Y7_N0
\dtp|mx_led|D[4]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[4]~41_combout\ = ((\dtp|cntround|cont\(1)) # (!\dtp|cntround|cont\(3))) # (!\dtp|cntround|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|mx_led|D[4]~41_combout\);

-- Location: LCCOMB_X36_Y7_N18
\dtp|mx_led|D[4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[4]~52_combout\ = (\dtp|mx_led|D[4]~60_combout\ & ((\dtp|mx_led|D[4]~41_combout\) # ((\ctr|EAtual.Result~regout\ & \dtp|divfreq|sim_2hz~regout\)))) # (!\dtp|mx_led|D[4]~60_combout\ & (((\ctr|EAtual.Result~regout\ & 
-- \dtp|divfreq|sim_2hz~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx_led|D[4]~60_combout\,
	datab => \dtp|mx_led|D[4]~41_combout\,
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[4]~52_combout\);

-- Location: LCCOMB_X36_Y7_N26
\dtp|mx_led|D[8]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[8]~42_combout\ = (\dtp|cntround|cont\(2) & ((!\dtp|cntround|cont\(1)))) # (!\dtp|cntround|cont\(2) & (\dtp|cntround|cont\(0) & \dtp|cntround|cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datac => \dtp|cntround|cont\(0),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|mx_led|D[8]~42_combout\);

-- Location: LCCOMB_X36_Y7_N16
\dtp|mx_led|D[8]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[8]~43_combout\ = (\dtp|mx_led|D[4]~60_combout\ & ((!\dtp|cntround|cont\(3)) # (!\dtp|mx_led|D[8]~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|mx_led|D[8]~42_combout\,
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|mx_led|D[4]~60_combout\,
	combout => \dtp|mx_led|D[8]~43_combout\);

-- Location: LCCOMB_X36_Y6_N18
\dtp|mx_led|D[5]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[5]~53_combout\ = (\dtp|mx_led|D[8]~43_combout\) # ((\ctr|EAtual.Result~regout\ & \dtp|divfreq|sim_2hz~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datac => \dtp|mx_led|D[8]~43_combout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[5]~53_combout\);

-- Location: LCCOMB_X36_Y6_N0
\dtp|dectermo|Equal14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|Equal14~1_combout\ = (!\dtp|cntround|cont\(2) & (\dtp|cntround|cont\(1) & (!\dtp|cntround|cont\(0) & \dtp|cntround|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datab => \dtp|cntround|cont\(1),
	datac => \dtp|cntround|cont\(0),
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|dectermo|Equal14~1_combout\);

-- Location: LCCOMB_X36_Y6_N8
\dtp|mx_led|D[6]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[6]~54_combout\ = (\ctr|EAtual.Result~regout\ & ((\dtp|divfreq|sim_2hz~regout\) # ((!\dtp|dectermo|Equal14~1_combout\ & \dtp|mx_led|D[8]~43_combout\)))) # (!\ctr|EAtual.Result~regout\ & (!\dtp|dectermo|Equal14~1_combout\ & 
-- (\dtp|mx_led|D[8]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datab => \dtp|dectermo|Equal14~1_combout\,
	datac => \dtp|mx_led|D[8]~43_combout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[6]~54_combout\);

-- Location: LCCOMB_X35_Y6_N14
\dtp|dectermo|Equal14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|Equal14~2_combout\ = (\dtp|cntround|cont\(3) & (\dtp|cntround|cont\(0) & (!\dtp|cntround|cont\(2) & !\dtp|cntround|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(3),
	datab => \dtp|cntround|cont\(0),
	datac => \dtp|cntround|cont\(2),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|dectermo|Equal14~2_combout\);

-- Location: LCCOMB_X36_Y6_N2
\dtp|mx_led|D[1]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[1]~39_combout\ = (\ctr|EAtual.Result~regout\ & \dtp|divfreq|sim_2hz~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[1]~39_combout\);

-- Location: LCCOMB_X36_Y6_N14
\dtp|mx_led|D[7]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[7]~44_combout\ = (\dtp|mx_led|D[1]~39_combout\) # ((!\dtp|dectermo|Equal14~2_combout\ & (!\dtp|dectermo|Equal14~1_combout\ & \dtp|mx_led|D[8]~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dectermo|Equal14~2_combout\,
	datab => \dtp|dectermo|Equal14~1_combout\,
	datac => \dtp|mx_led|D[8]~43_combout\,
	datad => \dtp|mx_led|D[1]~39_combout\,
	combout => \dtp|mx_led|D[7]~44_combout\);

-- Location: LCCOMB_X36_Y6_N30
\dtp|mx_led|D[8]~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[8]~61_combout\ = (\ctr|EAtual.Result~regout\ & (\dtp|divfreq|sim_2hz~regout\)) # (!\ctr|EAtual.Result~regout\ & ((!\dtp|cntround|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|divfreq|sim_2hz~regout\,
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|mx_led|D[8]~61_combout\);

-- Location: LCCOMB_X35_Y6_N20
\dtp|dectermo|S[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|S[9]~1_combout\ = (!\dtp|cntround|cont\(3) & (((!\dtp|cntround|cont\(1)) # (!\dtp|cntround|cont\(2))) # (!\dtp|cntround|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(3),
	datab => \dtp|cntround|cont\(0),
	datac => \dtp|cntround|cont\(2),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|dectermo|S[9]~1_combout\);

-- Location: LCCOMB_X36_Y6_N6
\dtp|mx_led|D[9]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[9]~55_combout\ = (\ctr|EAtual.Result~regout\ & ((\dtp|divfreq|sim_2hz~regout\))) # (!\ctr|EAtual.Result~regout\ & (\dtp|dectermo|S[9]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datac => \dtp|dectermo|S[9]~1_combout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[9]~55_combout\);

-- Location: LCCOMB_X36_Y6_N28
\dtp|mx_led|D[10]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[10]~56_combout\ = (\ctr|EAtual.Result~regout\ & (\dtp|divfreq|sim_2hz~regout\)) # (!\ctr|EAtual.Result~regout\ & (((!\dtp|mx_led|D[2]~40_combout\ & !\dtp|cntround|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datab => \dtp|divfreq|sim_2hz~regout\,
	datac => \dtp|mx_led|D[2]~40_combout\,
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|mx_led|D[10]~56_combout\);

-- Location: LCCOMB_X35_Y7_N16
\dtp|mx_led|D[11]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[11]~45_combout\ = ((!\dtp|cntround|cont\(1) & ((\dtp|cntround|cont\(3)) # (!\dtp|cntround|cont\(0))))) # (!\dtp|cntround|cont\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(0),
	datab => \dtp|cntround|cont\(2),
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|mx_led|D[11]~45_combout\);

-- Location: LCCOMB_X36_Y7_N8
\dtp|mx_led|D[11]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[11]~57_combout\ = (\ctr|EAtual.Result~regout\ & (((\dtp|divfreq|sim_2hz~regout\)))) # (!\ctr|EAtual.Result~regout\ & (\dtp|mx_led|D[11]~45_combout\ & (!\dtp|cntround|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Result~regout\,
	datab => \dtp|mx_led|D[11]~45_combout\,
	datac => \dtp|cntround|cont\(3),
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[11]~57_combout\);

-- Location: LCCOMB_X36_Y6_N4
\dtp|mx_led|D[12]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[12]~46_combout\ = (\ctr|EAtual.Result~regout\ & (((\dtp|divfreq|sim_2hz~regout\)))) # (!\ctr|EAtual.Result~regout\ & (!\dtp|cntround|cont\(2) & ((!\dtp|cntround|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datab => \dtp|divfreq|sim_2hz~regout\,
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|mx_led|D[12]~46_combout\);

-- Location: LCCOMB_X35_Y6_N10
\dtp|dectermo|Equal14~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|Equal14~3_combout\ = (!\dtp|cntround|cont\(3) & (\dtp|cntround|cont\(0) & (!\dtp|cntround|cont\(2) & \dtp|cntround|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(3),
	datab => \dtp|cntround|cont\(0),
	datac => \dtp|cntround|cont\(2),
	datad => \dtp|cntround|cont\(1),
	combout => \dtp|dectermo|Equal14~3_combout\);

-- Location: LCCOMB_X36_Y6_N10
\dtp|mx_led|D[12]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[12]~47_combout\ = (!\dtp|cntround|cont\(2) & (!\ctr|EAtual.Result~regout\ & !\dtp|cntround|cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|mx_led|D[12]~47_combout\);

-- Location: LCCOMB_X36_Y6_N26
\dtp|mx_led|D[13]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[13]~58_combout\ = (\dtp|dectermo|Equal14~3_combout\ & (\dtp|divfreq|sim_2hz~regout\ & (\ctr|EAtual.Result~regout\))) # (!\dtp|dectermo|Equal14~3_combout\ & ((\dtp|mx_led|D[12]~47_combout\) # ((\dtp|divfreq|sim_2hz~regout\ & 
-- \ctr|EAtual.Result~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dectermo|Equal14~3_combout\,
	datab => \dtp|divfreq|sim_2hz~regout\,
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|mx_led|D[12]~47_combout\,
	combout => \dtp|mx_led|D[13]~58_combout\);

-- Location: LCCOMB_X36_Y6_N12
\dtp|mx_led|D[14]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[14]~59_combout\ = (\dtp|mx_led|D[12]~47_combout\ & (((\ctr|EAtual.Result~regout\ & \dtp|divfreq|sim_2hz~regout\)) # (!\dtp|cntround|cont\(1)))) # (!\dtp|mx_led|D[12]~47_combout\ & (((\ctr|EAtual.Result~regout\ & 
-- \dtp|divfreq|sim_2hz~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx_led|D[12]~47_combout\,
	datab => \dtp|cntround|cont\(1),
	datac => \ctr|EAtual.Result~regout\,
	datad => \dtp|divfreq|sim_2hz~regout\,
	combout => \dtp|mx_led|D[14]~59_combout\);

-- Location: LCCOMB_X36_Y6_N16
\dtp|dectermo|Equal14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dectermo|Equal14~4_combout\ = (!\dtp|cntround|cont\(2) & (!\dtp|cntround|cont\(1) & (\dtp|cntround|cont\(0) & !\dtp|cntround|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|cntround|cont\(2),
	datab => \dtp|cntround|cont\(1),
	datac => \dtp|cntround|cont\(0),
	datad => \dtp|cntround|cont\(3),
	combout => \dtp|dectermo|Equal14~4_combout\);

-- Location: LCCOMB_X36_Y6_N22
\dtp|mx_led|D[15]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx_led|D[15]~48_combout\ = (\dtp|mx_led|D[1]~39_combout\) # ((\dtp|mx_led|D[12]~47_combout\ & (!\dtp|cntround|cont\(1) & !\dtp|dectermo|Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx_led|D[12]~47_combout\,
	datab => \dtp|cntround|cont\(1),
	datac => \dtp|dectermo|Equal14~4_combout\,
	datad => \dtp|mx_led|D[1]~39_combout\,
	combout => \dtp|mx_led|D[15]~48_combout\);

-- Location: LCCOMB_X30_Y20_N26
\dtp|dec7bcd|output[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~14_combout\ = (\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(7),
	combout => \dtp|dec7bcd|output[4]~14_combout\);

-- Location: LCCOMB_X30_Y20_N12
\dtp|dec7bcd|output[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~17_combout\ = (\dtp|dec7bcd|output[4]~15_combout\ & ((\dtp|Ctime|cont\(2)) # (\dtp|dec7bcd|output[4]~14_combout\ $ (\dtp|Ctime|cont\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~15_combout\,
	datab => \dtp|dec7bcd|output[4]~14_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[4]~17_combout\);

-- Location: LCCOMB_X30_Y20_N16
\dtp|dec7bcd|output[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~19_combout\ = (\dtp|dec7bcd|output[4]~16_combout\ & (!\dtp|Ctime|cont\(3) & (\dtp|dec7bcd|output[4]~14_combout\ $ (\dtp|dec7bcd|output[4]~17_combout\)))) # (!\dtp|dec7bcd|output[4]~16_combout\ & (((\dtp|Ctime|cont\(3) & 
-- \dtp|dec7bcd|output[4]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~16_combout\,
	datab => \dtp|dec7bcd|output[4]~14_combout\,
	datac => \dtp|Ctime|cont\(3),
	datad => \dtp|dec7bcd|output[4]~17_combout\,
	combout => \dtp|dec7bcd|output[4]~19_combout\);

-- Location: LCCOMB_X30_Y20_N30
\dtp|dec7bcd|output[4]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~18_combout\ = (\dtp|dec7bcd|output[4]~16_combout\ & (!\dtp|Ctime|cont\(3) & (\dtp|dec7bcd|output[4]~14_combout\ $ (!\dtp|dec7bcd|output[4]~17_combout\)))) # (!\dtp|dec7bcd|output[4]~16_combout\ & (\dtp|dec7bcd|output[4]~17_combout\ 
-- $ (((\dtp|dec7bcd|output[4]~14_combout\ & \dtp|Ctime|cont\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~16_combout\,
	datab => \dtp|dec7bcd|output[4]~14_combout\,
	datac => \dtp|Ctime|cont\(3),
	datad => \dtp|dec7bcd|output[4]~17_combout\,
	combout => \dtp|dec7bcd|output[4]~18_combout\);

-- Location: LCFF_X34_Y20_N7
\dtp|Ctime|cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[1]~10_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(1));

-- Location: LCCOMB_X31_Y20_N6
\dtp|dec7bcd|output[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[4]~20_combout\ = (\dtp|dec7bcd|output[4]~19_combout\ & (((!\dtp|dec7bcd|output[4]~48_combout\ & \dtp|dec7bcd|output[4]~18_combout\)) # (!\dtp|Ctime|cont\(1)))) # (!\dtp|dec7bcd|output[4]~19_combout\ & 
-- (((!\dtp|dec7bcd|output[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~48_combout\,
	datab => \dtp|dec7bcd|output[4]~19_combout\,
	datac => \dtp|dec7bcd|output[4]~18_combout\,
	datad => \dtp|Ctime|cont\(1),
	combout => \dtp|dec7bcd|output[4]~20_combout\);

-- Location: LCFF_X34_Y20_N15
\dtp|Ctime|cont[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	datain => \dtp|Ctime|cont[5]~18_combout\,
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	ena => \dtp|E5_or_E4clk1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|Ctime|cont\(5));

-- Location: LCCOMB_X32_Y20_N30
\dtp|dec7bcd|output~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~22_combout\ = (!\dtp|Ctime|cont\(7) & (!\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(7),
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output~22_combout\);

-- Location: LCCOMB_X31_Y20_N22
\dtp|dec7bcd|output~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~26_combout\ = (\dtp|dec7bcd|output~21_combout\ & ((\dtp|Ctime|cont\(1)) # (\dtp|dec7bcd|output~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dec7bcd|output~22_combout\,
	datad => \dtp|dec7bcd|output~21_combout\,
	combout => \dtp|dec7bcd|output~26_combout\);

-- Location: LCCOMB_X31_Y20_N0
\dtp|dec7bcd|output~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~23_combout\ = (!\dtp|Ctime|cont\(1) & (\dtp|dec7bcd|output~22_combout\ & \dtp|dec7bcd|output~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dec7bcd|output~22_combout\,
	datad => \dtp|dec7bcd|output~21_combout\,
	combout => \dtp|dec7bcd|output~23_combout\);

-- Location: LCCOMB_X31_Y20_N8
\dtp|dec7bcd|output~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~25_combout\ = (\dtp|Ctime|cont\(5) & ((\dtp|Ctime|cont\(6) & ((!\dtp|dec7bcd|output~23_combout\))) # (!\dtp|Ctime|cont\(6) & (!\dtp|Ctime|cont\(4))))) # (!\dtp|Ctime|cont\(5) & (!\dtp|Ctime|cont\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001110011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|Ctime|cont\(6),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|dec7bcd|output~23_combout\,
	combout => \dtp|dec7bcd|output~25_combout\);

-- Location: LCCOMB_X31_Y20_N30
\dtp|dec7bcd|output~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~24_combout\ = ((\dtp|Ctime|cont\(3) & (\dtp|Ctime|cont\(4) & \dtp|Ctime|cont\(2)))) # (!\dtp|dec7bcd|output~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(3),
	datab => \dtp|dec7bcd|output~23_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output~24_combout\);

-- Location: LCCOMB_X31_Y20_N16
\dtp|dec7bcd|output~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output~27_combout\ = (\dtp|Ctime|cont\(5) & (((\dtp|dec7bcd|output~25_combout\)))) # (!\dtp|Ctime|cont\(5) & ((\dtp|dec7bcd|output~25_combout\ & (!\dtp|dec7bcd|output~26_combout\)) # (!\dtp|dec7bcd|output~25_combout\ & 
-- ((\dtp|dec7bcd|output~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|dec7bcd|output~26_combout\,
	datac => \dtp|dec7bcd|output~25_combout\,
	datad => \dtp|dec7bcd|output~24_combout\,
	combout => \dtp|dec7bcd|output~27_combout\);

-- Location: LCCOMB_X32_Y20_N26
\dtp|dec7bcd|output[5]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~29_combout\ = (!\dtp|Ctime|cont\(7) & ((\dtp|Ctime|cont\(6)) # (!\dtp|dec7bcd|output~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|dec7bcd|output~27_combout\,
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(7),
	combout => \dtp|dec7bcd|output[5]~29_combout\);

-- Location: LCCOMB_X32_Y20_N28
\dtp|dec7bcd|output[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~30_combout\ = (\dtp|Ctime|cont\(4) & (((\dtp|Ctime|cont\(3))))) # (!\dtp|Ctime|cont\(4) & ((\dtp|Ctime|cont\(3) & ((!\dtp|dec7bcd|output[5]~29_combout\))) # (!\dtp|Ctime|cont\(3) & (\dtp|dec7bcd|output[5]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[5]~28_combout\,
	datab => \dtp|dec7bcd|output[5]~29_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[5]~30_combout\);

-- Location: LCCOMB_X32_Y20_N20
\dtp|dec7bcd|output[5]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~56_combout\ = (\dtp|Ctime|cont\(5) & ((\dtp|dec7bcd|output[5]~30_combout\) # ((\dtp|Ctime|cont\(2))))) # (!\dtp|Ctime|cont\(5) & (\dtp|dec7bcd|output[5]~30_combout\ & (\dtp|Ctime|cont\(2) & \dtp|dec7bcd|output~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|dec7bcd|output[5]~30_combout\,
	datac => \dtp|Ctime|cont\(2),
	datad => \dtp|dec7bcd|output~27_combout\,
	combout => \dtp|dec7bcd|output[5]~56_combout\);

-- Location: LCCOMB_X32_Y20_N22
\dtp|dec7bcd|output[5]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~57_combout\ = (\dtp|Ctime|cont\(6) & ((\dtp|dec7bcd|output[5]~56_combout\))) # (!\dtp|Ctime|cont\(6) & (\dtp|dec7bcd|output~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(6),
	datab => \dtp|dec7bcd|output~27_combout\,
	datac => \dtp|dec7bcd|output[5]~56_combout\,
	combout => \dtp|dec7bcd|output[5]~57_combout\);

-- Location: LCCOMB_X31_Y20_N18
\dtp|dec7bcd|output[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~31_combout\ = (\dtp|Ctime|cont\(4) & ((\dtp|Ctime|cont\(7)) # ((\dtp|dec7bcd|output[5]~57_combout\)))) # (!\dtp|Ctime|cont\(4) & (((\dtp|dec7bcd|output[5]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(7),
	datab => \dtp|dec7bcd|output[5]~30_combout\,
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|dec7bcd|output[5]~57_combout\,
	combout => \dtp|dec7bcd|output[5]~31_combout\);

-- Location: LCCOMB_X30_Y20_N4
\dtp|dec7bcd|output[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[7]~13_combout\ = (\dtp|Ctime|cont\(7)) # ((!\dtp|Ctime|cont\(6) & ((\dtp|Ctime|cont\(4)) # (!\dtp|Ctime|cont\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(6),
	datab => \dtp|Ctime|cont\(7),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[7]~13_combout\);

-- Location: LCCOMB_X32_Y20_N8
\dtp|dec7bcd|output[5]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[5]~28_combout\ = (\dtp|Ctime|cont\(7)) # ((\dtp|Ctime|cont\(6) & (!\dtp|Ctime|cont\(5))) # (!\dtp|Ctime|cont\(6) & ((\dtp|dec7bcd|output~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(5),
	datab => \dtp|dec7bcd|output~27_combout\,
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(7),
	combout => \dtp|dec7bcd|output[5]~28_combout\);

-- Location: LCCOMB_X31_Y20_N24
\dtp|dec7bcd|output[6]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[6]~34_combout\ = (\dtp|dec7bcd|output[6]~33_combout\ & ((\dtp|dec7bcd|output[5]~28_combout\) # (\dtp|Ctime|cont\(4) $ (!\dtp|Ctime|cont\(3))))) # (!\dtp|dec7bcd|output[6]~33_combout\ & (\dtp|dec7bcd|output[5]~28_combout\ & 
-- (\dtp|Ctime|cont\(4) $ (\dtp|Ctime|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[6]~33_combout\,
	datab => \dtp|Ctime|cont\(4),
	datac => \dtp|dec7bcd|output[5]~28_combout\,
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[6]~34_combout\);

-- Location: LCCOMB_X30_Y20_N2
\dtp|d7_hx7|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[0]~0_combout\ = (\dtp|dec7bcd|output[4]~20_combout\ & (\dtp|dec7bcd|output[7]~13_combout\ $ (((!\dtp|dec7bcd|output[5]~31_combout\ & !\dtp|dec7bcd|output[6]~34_combout\))))) # (!\dtp|dec7bcd|output[4]~20_combout\ & 
-- (!\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[0]~0_combout\);

-- Location: LCCOMB_X30_Y20_N8
\dtp|d7_hx7|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[1]~1_combout\ = (\dtp|dec7bcd|output[4]~20_combout\ & ((\dtp|dec7bcd|output[5]~31_combout\ & (\dtp|dec7bcd|output[7]~13_combout\)) # (!\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\))))) # 
-- (!\dtp|dec7bcd|output[4]~20_combout\ & (\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[1]~1_combout\);

-- Location: LCCOMB_X30_Y20_N14
\dtp|d7_hx7|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[2]~2_combout\ = (\dtp|dec7bcd|output[4]~20_combout\ & (((\dtp|dec7bcd|output[7]~13_combout\ & \dtp|dec7bcd|output[6]~34_combout\)))) # (!\dtp|dec7bcd|output[4]~20_combout\ & (\dtp|dec7bcd|output[5]~31_combout\ & 
-- (\dtp|dec7bcd|output[7]~13_combout\ $ (!\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[2]~2_combout\);

-- Location: LCCOMB_X30_Y20_N20
\dtp|d7_hx7|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[3]~3_combout\ = (\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[4]~20_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\))) # (!\dtp|dec7bcd|output[4]~20_combout\ & (\dtp|dec7bcd|output[7]~13_combout\ & 
-- !\dtp|dec7bcd|output[6]~34_combout\)))) # (!\dtp|dec7bcd|output[5]~31_combout\ & (!\dtp|dec7bcd|output[7]~13_combout\ & (\dtp|dec7bcd|output[4]~20_combout\ $ (\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[3]~3_combout\);

-- Location: LCCOMB_X30_Y20_N18
\dtp|d7_hx7|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[4]~4_combout\ = (\dtp|dec7bcd|output[4]~20_combout\ & ((\dtp|dec7bcd|output[5]~31_combout\ $ (!\dtp|dec7bcd|output[6]~34_combout\)) # (!\dtp|dec7bcd|output[7]~13_combout\))) # (!\dtp|dec7bcd|output[4]~20_combout\ & 
-- (!\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[4]~4_combout\);

-- Location: LCCOMB_X30_Y20_N0
\dtp|d7_hx7|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[5]~5_combout\ = (\dtp|dec7bcd|output[6]~34_combout\ & ((\dtp|dec7bcd|output[4]~20_combout\ & (\dtp|dec7bcd|output[5]~31_combout\)) # (!\dtp|dec7bcd|output[4]~20_combout\ & (!\dtp|dec7bcd|output[5]~31_combout\ & 
-- \dtp|dec7bcd|output[7]~13_combout\)))) # (!\dtp|dec7bcd|output[6]~34_combout\ & (!\dtp|dec7bcd|output[7]~13_combout\ & ((\dtp|dec7bcd|output[4]~20_combout\) # (\dtp|dec7bcd|output[5]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[5]~5_combout\);

-- Location: LCCOMB_X30_Y20_N6
\dtp|d7_hx7|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx7|output[6]~6_combout\ = (\dtp|dec7bcd|output[5]~31_combout\ & (\dtp|dec7bcd|output[4]~20_combout\ & ((\dtp|dec7bcd|output[6]~34_combout\)))) # (!\dtp|dec7bcd|output[5]~31_combout\ & ((\dtp|dec7bcd|output[7]~13_combout\ $ 
-- (!\dtp|dec7bcd|output[6]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[4]~20_combout\,
	datab => \dtp|dec7bcd|output[5]~31_combout\,
	datac => \dtp|dec7bcd|output[7]~13_combout\,
	datad => \dtp|dec7bcd|output[6]~34_combout\,
	combout => \dtp|d7_hx7|output[6]~6_combout\);

-- Location: LCCOMB_X34_Y20_N2
\dtp|dec7bcd|output[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~36_combout\ = ((\dtp|Ctime|cont\(4) & (!\dtp|Ctime|cont\(2) & \dtp|Ctime|cont\(3))) # (!\dtp|Ctime|cont\(4) & (\dtp|Ctime|cont\(2) & !\dtp|Ctime|cont\(3)))) # (!\dtp|Ctime|cont\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(4),
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[3]~36_combout\);

-- Location: LCCOMB_X34_Y20_N20
\dtp|dec7bcd|output[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~35_combout\ = (\dtp|Ctime|cont\(4) & (!\dtp|Ctime|cont\(2) & (\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(3)))) # (!\dtp|Ctime|cont\(4) & (\dtp|Ctime|cont\(2) & (!\dtp|Ctime|cont\(6) & \dtp|Ctime|cont\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(4),
	datab => \dtp|Ctime|cont\(2),
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[3]~35_combout\);

-- Location: LCCOMB_X34_Y20_N24
\dtp|dec7bcd|output[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~37_combout\ = (!\dtp|Ctime|cont\(1) & ((\dtp|Ctime|cont\(5) & ((\dtp|dec7bcd|output[3]~35_combout\))) # (!\dtp|Ctime|cont\(5) & (\dtp|dec7bcd|output[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dec7bcd|output[3]~36_combout\,
	datac => \dtp|dec7bcd|output[3]~35_combout\,
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[3]~37_combout\);

-- Location: LCCOMB_X33_Y20_N24
\dtp|dec7bcd|output[3]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[3]~41_combout\ = (\dtp|dec7bcd|output[3]~37_combout\) # ((\dtp|Ctime|cont\(7)) # ((\dtp|dec7bcd|output[3]~40_combout\ & \dtp|Ctime|cont\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~40_combout\,
	datab => \dtp|dec7bcd|output[3]~37_combout\,
	datac => \dtp|Ctime|cont\(1),
	datad => \dtp|Ctime|cont\(7),
	combout => \dtp|dec7bcd|output[3]~41_combout\);

-- Location: LCCOMB_X31_Y20_N2
\dtp|dec7bcd|output[0]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[0]~42_combout\ = (!\dtp|Ctime|cont\(6) & !\dtp|Ctime|cont\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(5),
	combout => \dtp|dec7bcd|output[0]~42_combout\);

-- Location: LCCOMB_X31_Y20_N28
\dtp|dec7bcd|output[0]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[0]~43_combout\ = ((\dtp|Ctime|cont\(7)) # ((!\dtp|dec7bcd|output~21_combout\ & \dtp|dec7bcd|output[0]~42_combout\))) # (!\dtp|Ctime|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(0),
	datab => \dtp|dec7bcd|output~21_combout\,
	datac => \dtp|Ctime|cont\(7),
	datad => \dtp|dec7bcd|output[0]~42_combout\,
	combout => \dtp|dec7bcd|output[0]~43_combout\);

-- Location: LCCOMB_X30_Y20_N28
\dtp|dec7bcd|output[1]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~44_combout\ = (\dtp|Ctime|cont\(7)) # ((\dtp|dec7bcd|Equal99~0_combout\ & (!\dtp|Ctime|cont\(4) & \dtp|Ctime|cont\(2))) # (!\dtp|dec7bcd|Equal99~0_combout\ & (\dtp|Ctime|cont\(4) $ (!\dtp|Ctime|cont\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|Equal99~0_combout\,
	datab => \dtp|Ctime|cont\(7),
	datac => \dtp|Ctime|cont\(4),
	datad => \dtp|Ctime|cont\(2),
	combout => \dtp|dec7bcd|output[1]~44_combout\);

-- Location: LCCOMB_X30_Y20_N22
\dtp|dec7bcd|output[2]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[2]~47_combout\ = (\dtp|dec7bcd|output[2]~51_combout\ & (((\dtp|Ctime|cont\(6))) # (!\dtp|dec7bcd|output~23_combout\))) # (!\dtp|dec7bcd|output[2]~51_combout\ & (((!\dtp|Ctime|cont\(6) & \dtp|dec7bcd|output[1]~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[2]~51_combout\,
	datab => \dtp|dec7bcd|output~23_combout\,
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|dec7bcd|output[1]~44_combout\,
	combout => \dtp|dec7bcd|output[2]~47_combout\);

-- Location: LCCOMB_X34_Y20_N28
\dtp|dec7bcd|output[1]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~52_combout\ = (\dtp|Ctime|cont\(2) & (((!\dtp|Ctime|cont\(3)) # (!\dtp|Ctime|cont\(1))))) # (!\dtp|Ctime|cont\(2) & (\dtp|Ctime|cont\(4) $ (\dtp|Ctime|cont\(1) $ (\dtp|Ctime|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(4),
	datab => \dtp|Ctime|cont\(1),
	datac => \dtp|Ctime|cont\(2),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[1]~52_combout\);

-- Location: LCCOMB_X34_Y20_N30
\dtp|dec7bcd|output[1]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~53_combout\ = (\dtp|dec7bcd|output[1]~52_combout\ & ((\dtp|Ctime|cont\(1)) # ((\dtp|Ctime|cont\(3)) # (!\dtp|Ctime|cont\(6))))) # (!\dtp|dec7bcd|output[1]~52_combout\ & (!\dtp|Ctime|cont\(6) & ((\dtp|Ctime|cont\(1)) # 
-- (\dtp|Ctime|cont\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|Ctime|cont\(1),
	datab => \dtp|dec7bcd|output[1]~52_combout\,
	datac => \dtp|Ctime|cont\(6),
	datad => \dtp|Ctime|cont\(3),
	combout => \dtp|dec7bcd|output[1]~53_combout\);

-- Location: LCCOMB_X34_Y20_N22
\dtp|dec7bcd|output[1]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|dec7bcd|output[1]~49_combout\ = (\dtp|Ctime|cont\(7)) # ((\dtp|Ctime|cont\(5) & (\dtp|dec7bcd|output[1]~8_combout\)) # (!\dtp|Ctime|cont\(5) & ((\dtp|dec7bcd|output[1]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[1]~8_combout\,
	datab => \dtp|dec7bcd|output[1]~53_combout\,
	datac => \dtp|Ctime|cont\(5),
	datad => \dtp|Ctime|cont\(7),
	combout => \dtp|dec7bcd|output[1]~49_combout\);

-- Location: LCCOMB_X1_Y23_N16
\dtp|d7_hx6|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[0]~0_combout\ = (\dtp|dec7bcd|output[0]~43_combout\ & (\dtp|dec7bcd|output[3]~41_combout\ $ (((!\dtp|dec7bcd|output[2]~47_combout\ & !\dtp|dec7bcd|output[1]~49_combout\))))) # (!\dtp|dec7bcd|output[0]~43_combout\ & 
-- (((\dtp|dec7bcd|output[2]~47_combout\ & !\dtp|dec7bcd|output[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[0]~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\dtp|d7_hx6|output[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[1]~1_combout\ = (\dtp|dec7bcd|output[0]~43_combout\ & ((\dtp|dec7bcd|output[1]~49_combout\ & (\dtp|dec7bcd|output[3]~41_combout\)) # (!\dtp|dec7bcd|output[1]~49_combout\ & ((\dtp|dec7bcd|output[2]~47_combout\))))) # 
-- (!\dtp|dec7bcd|output[0]~43_combout\ & (((\dtp|dec7bcd|output[2]~47_combout\ & \dtp|dec7bcd|output[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[1]~1_combout\);

-- Location: LCCOMB_X1_Y23_N12
\dtp|d7_hx6|output[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[2]~2_combout\ = (\dtp|dec7bcd|output[0]~43_combout\ & (\dtp|dec7bcd|output[3]~41_combout\ & (\dtp|dec7bcd|output[2]~47_combout\))) # (!\dtp|dec7bcd|output[0]~43_combout\ & (\dtp|dec7bcd|output[1]~49_combout\ & 
-- (\dtp|dec7bcd|output[3]~41_combout\ $ (!\dtp|dec7bcd|output[2]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[2]~2_combout\);

-- Location: LCCOMB_X1_Y23_N14
\dtp|d7_hx6|output[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[3]~3_combout\ = (\dtp|dec7bcd|output[1]~49_combout\ & ((\dtp|dec7bcd|output[0]~43_combout\ & ((\dtp|dec7bcd|output[2]~47_combout\))) # (!\dtp|dec7bcd|output[0]~43_combout\ & (\dtp|dec7bcd|output[3]~41_combout\ & 
-- !\dtp|dec7bcd|output[2]~47_combout\)))) # (!\dtp|dec7bcd|output[1]~49_combout\ & (!\dtp|dec7bcd|output[3]~41_combout\ & (\dtp|dec7bcd|output[0]~43_combout\ $ (\dtp|dec7bcd|output[2]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[3]~3_combout\);

-- Location: LCCOMB_X1_Y23_N20
\dtp|d7_hx6|output[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[4]~4_combout\ = (\dtp|dec7bcd|output[0]~43_combout\ & ((\dtp|dec7bcd|output[2]~47_combout\ $ (!\dtp|dec7bcd|output[1]~49_combout\)) # (!\dtp|dec7bcd|output[3]~41_combout\))) # (!\dtp|dec7bcd|output[0]~43_combout\ & 
-- (((\dtp|dec7bcd|output[2]~47_combout\ & !\dtp|dec7bcd|output[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[4]~4_combout\);

-- Location: LCCOMB_X1_Y23_N30
\dtp|d7_hx6|output[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[5]~5_combout\ = (\dtp|dec7bcd|output[2]~47_combout\ & ((\dtp|dec7bcd|output[0]~43_combout\ & ((\dtp|dec7bcd|output[1]~49_combout\))) # (!\dtp|dec7bcd|output[0]~43_combout\ & (\dtp|dec7bcd|output[3]~41_combout\ & 
-- !\dtp|dec7bcd|output[1]~49_combout\)))) # (!\dtp|dec7bcd|output[2]~47_combout\ & (!\dtp|dec7bcd|output[3]~41_combout\ & ((\dtp|dec7bcd|output[0]~43_combout\) # (\dtp|dec7bcd|output[1]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[5]~5_combout\);

-- Location: LCCOMB_X1_Y23_N28
\dtp|d7_hx6|output[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx6|output[6]~6_combout\ = (\dtp|dec7bcd|output[1]~49_combout\ & (((\dtp|dec7bcd|output[0]~43_combout\ & \dtp|dec7bcd|output[2]~47_combout\)))) # (!\dtp|dec7bcd|output[1]~49_combout\ & (\dtp|dec7bcd|output[3]~41_combout\ $ 
-- (((!\dtp|dec7bcd|output[2]~47_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|dec7bcd|output[3]~41_combout\,
	datab => \dtp|dec7bcd|output[0]~43_combout\,
	datac => \dtp|dec7bcd|output[2]~47_combout\,
	datad => \dtp|dec7bcd|output[1]~49_combout\,
	combout => \dtp|d7_hx6|output[6]~6_combout\);

-- Location: LCCOMB_X36_Y14_N6
\dtp|decBCDsoma|output[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[7]~26_combout\ = (\dtp|somadorSeq|Add0~12_combout\ & ((\dtp|somadorSeq|Add0~10_combout\) # (\dtp|somadorSeq|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~10_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|decBCDsoma|output[7]~26_combout\);

-- Location: LCCOMB_X36_Y12_N16
\dtp|mx3hx1|D[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[0]~12_combout\ = (\dtp|decBCDsoma|output[5]~39_combout\ & (\dtp|decBCDsoma|output[7]~26_combout\ & \dtp|decBCDsoma|output[6]~28_combout\)) # (!\dtp|decBCDsoma|output[5]~39_combout\ & (!\dtp|decBCDsoma|output[7]~26_combout\ & 
-- !\dtp|decBCDsoma|output[6]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datac => \dtp|decBCDsoma|output[7]~26_combout\,
	datad => \dtp|decBCDsoma|output[6]~28_combout\,
	combout => \dtp|mx3hx1|D[0]~12_combout\);

-- Location: LCCOMB_X35_Y12_N20
\dtp|mx3hx1|D[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[0]~10_combout\ = (\SW~combout\(5) & (\SW~combout\(7) & ((\SW~combout\(4))))) # (!\SW~combout\(5) & (\SW~combout\(6) $ (((!\SW~combout\(7) & \SW~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|mx3hx1|D[0]~10_combout\);

-- Location: LCCOMB_X35_Y12_N4
\dtp|mx3hx1|D[0]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[0]~29_combout\ = (\ctr|EAtual.Play~regout\ & ((\dtp|mx3hx1|D[0]~10_combout\))) # (!\ctr|EAtual.Play~regout\ & (!\ctr|EAtual.Sequence~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr|EAtual.Sequence~regout\,
	datac => \dtp|mx3hx1|D[0]~10_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[0]~29_combout\);

-- Location: LCCOMB_X36_Y12_N28
\dtp|mx2hx1|D[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx2hx1|D[0]~1_combout\ = (!\ctr|EAtual.Play~regout\ & \dtp|decBCDsoma|output[6]~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datad => \dtp|decBCDsoma|output[6]~28_combout\,
	combout => \dtp|mx2hx1|D[0]~1_combout\);

-- Location: LCCOMB_X36_Y12_N10
\dtp|mx3hx1|D[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[0]~11_combout\ = (\dtp|mx3hx1|D[0]~29_combout\) # ((\dtp|mx2hx1|D[0]~0_combout\ & (!\dtp|decBCDsoma|output[4]~38_combout\ & \dtp|mx2hx1|D[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx2hx1|D[0]~0_combout\,
	datab => \dtp|mx3hx1|D[0]~29_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|mx2hx1|D[0]~1_combout\,
	combout => \dtp|mx3hx1|D[0]~11_combout\);

-- Location: LCCOMB_X36_Y12_N2
\dtp|mx3hx1|D[0]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[0]~13_combout\ = (\dtp|mx3hx1|D[0]~11_combout\) # ((!\ctr|EAtual.Play~regout\ & (\dtp|decBCDsoma|output[4]~38_combout\ & \dtp|mx3hx1|D[0]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \dtp|decBCDsoma|output[4]~38_combout\,
	datac => \dtp|mx3hx1|D[0]~12_combout\,
	datad => \dtp|mx3hx1|D[0]~11_combout\,
	combout => \dtp|mx3hx1|D[0]~13_combout\);

-- Location: LCCOMB_X36_Y12_N4
\dtp|mx3hx1|D[1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[1]~30_combout\ = (\ctr|EAtual.Play~regout\) # ((\ctr|EAtual.Sequence~regout\ & ((!\dtp|decBCDsoma|output[7]~26_combout\) # (!\dtp|decBCDsoma|output[6]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Sequence~regout\,
	datab => \dtp|decBCDsoma|output[6]~28_combout\,
	datac => \dtp|decBCDsoma|output[7]~26_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[1]~30_combout\);

-- Location: LCCOMB_X36_Y12_N0
\dtp|mx3hx1|D[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[1]~14_combout\ = ((\dtp|mx2hx1|D[0]~1_combout\ & (\dtp|decBCDsoma|output[5]~39_combout\ $ (\dtp|decBCDsoma|output[4]~38_combout\)))) # (!\dtp|mx3hx1|D[1]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datab => \dtp|mx2hx1|D[0]~1_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|mx3hx1|D[1]~30_combout\,
	combout => \dtp|mx3hx1|D[1]~14_combout\);

-- Location: LCCOMB_X35_Y12_N18
\dtp|mx3hx1|D[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[1]~15_combout\ = (\SW~combout\(5) & ((\SW~combout\(4) & (\SW~combout\(7))) # (!\SW~combout\(4) & ((\SW~combout\(6)))))) # (!\SW~combout\(5) & (((\SW~combout\(6) & \SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|mx3hx1|D[1]~15_combout\);

-- Location: LCCOMB_X36_Y12_N6
\dtp|mx3hx1|D[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[1]~16_combout\ = (\dtp|mx3hx1|D[1]~14_combout\) # ((\ctr|EAtual.Play~regout\ & \dtp|mx3hx1|D[1]~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \dtp|mx3hx1|D[1]~14_combout\,
	datad => \dtp|mx3hx1|D[1]~15_combout\,
	combout => \dtp|mx3hx1|D[1]~16_combout\);

-- Location: LCCOMB_X35_Y14_N20
\dtp|decBCDsoma|output[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[5]~24_combout\ = (\dtp|somadorSeq|Add0~6_combout\ & (\dtp|somadorSeq|Add0~8_combout\ & ((\dtp|somadorSeq|Add0~4_combout\) # (!\dtp|somadorSeq|Add0~10_combout\)))) # (!\dtp|somadorSeq|Add0~6_combout\ & 
-- ((\dtp|somadorSeq|Add0~8_combout\ & (\dtp|somadorSeq|Add0~4_combout\ & !\dtp|somadorSeq|Add0~10_combout\)) # (!\dtp|somadorSeq|Add0~8_combout\ & ((\dtp|somadorSeq|Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~6_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datac => \dtp|somadorSeq|Add0~8_combout\,
	datad => \dtp|somadorSeq|Add0~10_combout\,
	combout => \dtp|decBCDsoma|output[5]~24_combout\);

-- Location: LCCOMB_X36_Y14_N20
\dtp|decBCDsoma|output[5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[5]~39_combout\ = (\dtp|somadorSeq|Add0~12_combout\ & ((\dtp|decBCDsoma|output[6]~25_combout\))) # (!\dtp|somadorSeq|Add0~12_combout\ & (\dtp|decBCDsoma|output[5]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|decBCDsoma|output[5]~24_combout\,
	datac => \dtp|decBCDsoma|output[6]~25_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|decBCDsoma|output[5]~39_combout\);

-- Location: LCCOMB_X36_Y12_N8
\dtp|mx2hx1|D[6]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx2hx1|D[6]~2_combout\ = (!\ctr|EAtual.Play~regout\ & (!\dtp|decBCDsoma|output[7]~26_combout\ & !\dtp|decBCDsoma|output[6]~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datac => \dtp|decBCDsoma|output[7]~26_combout\,
	datad => \dtp|decBCDsoma|output[6]~28_combout\,
	combout => \dtp|mx2hx1|D[6]~2_combout\);

-- Location: LCCOMB_X35_Y12_N0
\dtp|mx3hx1|D[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[2]~17_combout\ = (\SW~combout\(4) & (\SW~combout\(7) & (\SW~combout\(6)))) # (!\SW~combout\(4) & (\SW~combout\(5) & (\SW~combout\(7) $ (!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|mx3hx1|D[2]~17_combout\);

-- Location: LCCOMB_X35_Y12_N22
\dtp|mx3hx1|D[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[2]~18_combout\ = ((\ctr|EAtual.Play~regout\ & \dtp|mx3hx1|D[2]~17_combout\)) # (!\dtp|mx3hx1|D[1]~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \dtp|mx3hx1|D[2]~17_combout\,
	datad => \dtp|mx3hx1|D[1]~30_combout\,
	combout => \dtp|mx3hx1|D[2]~18_combout\);

-- Location: LCCOMB_X36_Y12_N22
\dtp|mx3hx1|D[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[2]~19_combout\ = (\dtp|mx3hx1|D[2]~18_combout\) # ((\dtp|decBCDsoma|output[5]~39_combout\ & (!\dtp|decBCDsoma|output[4]~38_combout\ & \dtp|mx2hx1|D[6]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datab => \dtp|decBCDsoma|output[4]~38_combout\,
	datac => \dtp|mx2hx1|D[6]~2_combout\,
	datad => \dtp|mx3hx1|D[2]~18_combout\,
	combout => \dtp|mx3hx1|D[2]~19_combout\);

-- Location: LCCOMB_X35_Y12_N24
\dtp|d7_hx1_3|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx1_3|output[3]~0_combout\ = (\SW~combout\(5) & ((\SW~combout\(6) & ((\SW~combout\(4)))) # (!\SW~combout\(6) & (\SW~combout\(7) & !\SW~combout\(4))))) # (!\SW~combout\(5) & (!\SW~combout\(7) & (\SW~combout\(6) $ (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|d7_hx1_3|output[3]~0_combout\);

-- Location: LCCOMB_X35_Y12_N10
\dtp|mx3hx1|D[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[3]~20_combout\ = (\dtp|d7_hx1_3|output[3]~0_combout\ & \ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|d7_hx1_3|output[3]~0_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[3]~20_combout\);

-- Location: LCCOMB_X35_Y12_N16
\dtp|mx3hx1|D[3]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[3]~21_combout\ = (!\ctr|EAtual.Sequence~regout\ & (!\ctr|EAtual.Setup~regout\ & !\ctr|EAtual.Play~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ctr|EAtual.Sequence~regout\,
	datac => \ctr|EAtual.Setup~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[3]~21_combout\);

-- Location: LCCOMB_X36_Y12_N20
\dtp|d7_hx1_2|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx1_2|output[3]~0_combout\ = (\dtp|decBCDsoma|output[5]~39_combout\ & ((\dtp|decBCDsoma|output[6]~28_combout\ & (\dtp|decBCDsoma|output[4]~38_combout\)) # (!\dtp|decBCDsoma|output[6]~28_combout\ & (!\dtp|decBCDsoma|output[4]~38_combout\ & 
-- \dtp|decBCDsoma|output[7]~26_combout\)))) # (!\dtp|decBCDsoma|output[5]~39_combout\ & (!\dtp|decBCDsoma|output[7]~26_combout\ & (\dtp|decBCDsoma|output[6]~28_combout\ $ (\dtp|decBCDsoma|output[4]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datab => \dtp|decBCDsoma|output[6]~28_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|decBCDsoma|output[7]~26_combout\,
	combout => \dtp|d7_hx1_2|output[3]~0_combout\);

-- Location: LCCOMB_X32_Y16_N22
\dtp|mx3hx1|D[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[3]~22_combout\ = (\ctr|EAtual.Sequence~regout\ & !\ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[3]~22_combout\);

-- Location: LCCOMB_X36_Y12_N18
\dtp|mx3hx1|D[3]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[3]~23_combout\ = (\dtp|mx3hx1|D[3]~20_combout\) # ((\dtp|mx3hx1|D[3]~21_combout\) # ((\dtp|d7_hx1_2|output[3]~0_combout\ & \dtp|mx3hx1|D[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx1|D[3]~20_combout\,
	datab => \dtp|mx3hx1|D[3]~21_combout\,
	datac => \dtp|d7_hx1_2|output[3]~0_combout\,
	datad => \dtp|mx3hx1|D[3]~22_combout\,
	combout => \dtp|mx3hx1|D[3]~23_combout\);

-- Location: LCCOMB_X36_Y14_N24
\dtp|mx3hx1|D[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[4]~32_combout\ = (\dtp|decBCDsoma|output[6]~28_combout\ & ((\dtp|somadorSeq|Add0~12_combout\ & (!\dtp|decBCDsoma|output[6]~25_combout\)) # (!\dtp|somadorSeq|Add0~12_combout\ & ((!\dtp|decBCDsoma|output[5]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~12_combout\,
	datab => \dtp|decBCDsoma|output[6]~28_combout\,
	datac => \dtp|decBCDsoma|output[6]~25_combout\,
	datad => \dtp|decBCDsoma|output[5]~24_combout\,
	combout => \dtp|mx3hx1|D[4]~32_combout\);

-- Location: LCCOMB_X35_Y12_N30
\dtp|d7_hx1_3|output[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx1_3|output[4]~1_combout\ = (\SW~combout\(4) & ((\SW~combout\(6) $ (!\SW~combout\(5))) # (!\SW~combout\(7)))) # (!\SW~combout\(4) & (((\SW~combout\(6) & !\SW~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|d7_hx1_3|output[4]~1_combout\);

-- Location: LCCOMB_X35_Y12_N6
\dtp|mx3hx1|D[4]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[4]~31_combout\ = (\ctr|EAtual.Play~regout\ & (((\dtp|d7_hx1_3|output[4]~1_combout\)))) # (!\ctr|EAtual.Play~regout\ & (!\ctr|EAtual.Sequence~regout\ & (!\ctr|EAtual.Setup~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \ctr|EAtual.Sequence~regout\,
	datac => \ctr|EAtual.Setup~regout\,
	datad => \dtp|d7_hx1_3|output[4]~1_combout\,
	combout => \dtp|mx3hx1|D[4]~31_combout\);

-- Location: LCCOMB_X36_Y12_N24
\dtp|mx3hx1|D[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[4]~24_combout\ = (\dtp|mx3hx1|D[4]~31_combout\) # ((\dtp|mx3hx1|D[3]~22_combout\ & ((\dtp|mx3hx1|D[4]~32_combout\) # (\dtp|decBCDsoma|output[4]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx1|D[4]~32_combout\,
	datab => \dtp|mx3hx1|D[3]~22_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|mx3hx1|D[4]~31_combout\,
	combout => \dtp|mx3hx1|D[4]~24_combout\);

-- Location: LCCOMB_X35_Y12_N8
\dtp|d7_hx1_3|output[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx1_3|output[5]~2_combout\ = (\SW~combout\(6) & ((\SW~combout\(5) & ((\SW~combout\(4)))) # (!\SW~combout\(5) & (\SW~combout\(7) & !\SW~combout\(4))))) # (!\SW~combout\(6) & (!\SW~combout\(7) & ((\SW~combout\(5)) # (\SW~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|d7_hx1_3|output[5]~2_combout\);

-- Location: LCCOMB_X35_Y12_N26
\dtp|mx3hx1|D[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[5]~25_combout\ = (\dtp|d7_hx1_3|output[5]~2_combout\ & \ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|d7_hx1_3|output[5]~2_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[5]~25_combout\);

-- Location: LCCOMB_X36_Y12_N14
\dtp|d7_hx1_2|output[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx1_2|output[5]~1_combout\ = (\dtp|decBCDsoma|output[6]~28_combout\ & ((\dtp|decBCDsoma|output[5]~39_combout\ & (\dtp|decBCDsoma|output[4]~38_combout\)) # (!\dtp|decBCDsoma|output[5]~39_combout\ & (!\dtp|decBCDsoma|output[4]~38_combout\ & 
-- \dtp|decBCDsoma|output[7]~26_combout\)))) # (!\dtp|decBCDsoma|output[6]~28_combout\ & (!\dtp|decBCDsoma|output[7]~26_combout\ & ((\dtp|decBCDsoma|output[5]~39_combout\) # (\dtp|decBCDsoma|output[4]~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datab => \dtp|decBCDsoma|output[6]~28_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|decBCDsoma|output[7]~26_combout\,
	combout => \dtp|d7_hx1_2|output[5]~1_combout\);

-- Location: LCCOMB_X36_Y12_N12
\dtp|mx3hx1|D[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[5]~26_combout\ = (\dtp|mx3hx1|D[5]~25_combout\) # ((\dtp|mx3hx1|D[3]~21_combout\) # ((\dtp|mx3hx1|D[3]~22_combout\ & \dtp|d7_hx1_2|output[5]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx1|D[5]~25_combout\,
	datab => \dtp|mx3hx1|D[3]~22_combout\,
	datac => \dtp|d7_hx1_2|output[5]~1_combout\,
	datad => \dtp|mx3hx1|D[3]~21_combout\,
	combout => \dtp|mx3hx1|D[5]~26_combout\);

-- Location: LCCOMB_X35_Y12_N12
\dtp|mx3hx1|D[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[6]~28_combout\ = (\SW~combout\(5) & (((\SW~combout\(6) & \SW~combout\(4))))) # (!\SW~combout\(5) & (\SW~combout\(7) $ ((!\SW~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(7),
	datab => \SW~combout\(6),
	datac => \SW~combout\(5),
	datad => \SW~combout\(4),
	combout => \dtp|mx3hx1|D[6]~28_combout\);

-- Location: LCCOMB_X36_Y12_N30
\dtp|mx3hx1|D[6]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[6]~27_combout\ = (\dtp|decBCDsoma|output[5]~39_combout\ & (\dtp|mx2hx1|D[0]~1_combout\ & (\dtp|decBCDsoma|output[4]~38_combout\))) # (!\dtp|decBCDsoma|output[5]~39_combout\ & (((\dtp|mx2hx1|D[6]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[5]~39_combout\,
	datab => \dtp|mx2hx1|D[0]~1_combout\,
	datac => \dtp|decBCDsoma|output[4]~38_combout\,
	datad => \dtp|mx2hx1|D[6]~2_combout\,
	combout => \dtp|mx3hx1|D[6]~27_combout\);

-- Location: LCCOMB_X36_Y12_N26
\dtp|mx3hx1|D[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx1|D[6]~33_combout\ = (\dtp|mx3hx1|D[6]~27_combout\) # ((\ctr|EAtual.Play~regout\ & (\dtp|mx3hx1|D[6]~28_combout\)) # (!\ctr|EAtual.Play~regout\ & ((!\ctr|EAtual.Sequence~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx1|D[6]~28_combout\,
	datab => \dtp|mx3hx1|D[6]~27_combout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx1|D[6]~33_combout\);

-- Location: LCCOMB_X34_Y12_N4
\dtp|muxsoma2|D[3]~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~330_combout\ = \dtp|REG8|Q\(0) $ (((\dtp|CSeq|cont\(0) & \dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[3]~330_combout\);

-- Location: LCCOMB_X34_Y15_N22
\dtp|muxsoma2|D[3]~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~406_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & (\dtp|CSeq|cont\(0) & \dtp|REG8|Q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[3]~406_combout\);

-- Location: LCCOMB_X34_Y12_N14
\dtp|muxsoma2|D[3]~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~331_combout\ = (\dtp|muxsoma2|D[3]~406_combout\ & ((\dtp|somadorSeq|Add0~0_combout\) # ((!\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|muxsoma2|D[3]~406_combout\ & (((\dtp|muxsoma2|D[3]~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~0_combout\,
	datab => \dtp|muxsoma2|D[3]~330_combout\,
	datac => \dtp|muxsoma2|D[3]~406_combout\,
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[3]~331_combout\);

-- Location: LCCOMB_X34_Y12_N30
\dtp|muxsoma2|D[3]~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~329_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|somadorSeq|Add0~0_combout\) # ((\dtp|muxsoma2|D[3]~328_combout\ & !\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~328_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~328_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|decBCDsoma|Equal1~2_combout\,
	datad => \dtp|somadorSeq|Add0~0_combout\,
	combout => \dtp|muxsoma2|D[3]~329_combout\);

-- Location: LCCOMB_X34_Y12_N24
\dtp|decBCDsoma|output[0]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[0]~81_combout\ = (\dtp|REG8|Q\(3) & ((\dtp|REG8|Q\(1)) # ((\dtp|muxsoma2|D[3]~329_combout\)))) # (!\dtp|REG8|Q\(3) & (!\dtp|REG8|Q\(1) & (\dtp|muxsoma2|D[3]~331_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|muxsoma2|D[3]~331_combout\,
	datad => \dtp|muxsoma2|D[3]~329_combout\,
	combout => \dtp|decBCDsoma|output[0]~81_combout\);

-- Location: LCCOMB_X34_Y12_N2
\dtp|muxsoma2|D[3]~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~332_combout\ = (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(0) $ (((\dtp|CSeq|cont\(0) & \dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[3]~332_combout\);

-- Location: LCCOMB_X32_Y13_N16
\dtp|muxsoma2|D[2]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~73_combout\ = ((!\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(4))) # (!\dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~73_combout\);

-- Location: LCCOMB_X34_Y12_N20
\dtp|muxsoma2|D[2]~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~333_combout\ = (\dtp|REG8|Q\(2)) # ((\dtp|REG8|Q\(4) & !\dtp|CSeq|cont\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~333_combout\);

-- Location: LCCOMB_X34_Y12_N18
\dtp|muxsoma2|D[2]~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~334_combout\ = (\dtp|muxsoma2|D[2]~167_combout\ & (\dtp|REG8|Q\(0) $ (((\dtp|somadorSeq|Add0~0_combout\) # (!\dtp|decBCDsoma|Equal1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~0_combout\,
	datab => \dtp|muxsoma2|D[2]~167_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~334_combout\);

-- Location: LCCOMB_X34_Y12_N12
\dtp|muxsoma2|D[2]~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~335_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~333_combout\)))) # (!\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(0) $ (((\dtp|muxsoma2|D[2]~333_combout\ & \dtp|muxsoma2|D[2]~334_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~333_combout\,
	datad => \dtp|muxsoma2|D[2]~334_combout\,
	combout => \dtp|muxsoma2|D[2]~335_combout\);

-- Location: LCCOMB_X34_Y12_N22
\dtp|muxsoma2|D[2]~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~336_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~335_combout\ & (!\dtp|REG8|Q\(7))) # (!\dtp|muxsoma2|D[2]~335_combout\ & ((\dtp|muxsoma2|D[2]~73_combout\))))) # (!\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|muxsoma2|D[2]~73_combout\,
	datad => \dtp|muxsoma2|D[2]~335_combout\,
	combout => \dtp|muxsoma2|D[2]~336_combout\);

-- Location: LCCOMB_X34_Y12_N28
\dtp|muxsoma2|D[2]~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~337_combout\ = (\dtp|muxsoma2|D[2]~336_combout\ & (\dtp|REG8|Q\(0))) # (!\dtp|muxsoma2|D[2]~336_combout\ & (((!\dtp|somadorSeq|Add0~0_combout\ & \dtp|decBCDsoma|Equal1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|somadorSeq|Add0~0_combout\,
	datac => \dtp|decBCDsoma|Equal1~2_combout\,
	datad => \dtp|muxsoma2|D[2]~336_combout\,
	combout => \dtp|muxsoma2|D[2]~337_combout\);

-- Location: LCCOMB_X34_Y12_N26
\dtp|muxsoma2|D[2]~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~338_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~337_combout\ $ (((\dtp|REG8|Q\(4)) # (!\dtp|muxsoma2|D[2]~336_combout\))))) # (!\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~336_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~337_combout\,
	combout => \dtp|muxsoma2|D[2]~338_combout\);

-- Location: LCCOMB_X34_Y12_N0
\dtp|muxsoma2|D[3]~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~339_combout\ = (\dtp|muxsoma2|D[3]~332_combout\) # ((\dtp|REG8|Q\(6) & \dtp|muxsoma2|D[2]~338_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[3]~332_combout\,
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[2]~338_combout\,
	combout => \dtp|muxsoma2|D[3]~339_combout\);

-- Location: LCCOMB_X34_Y12_N6
\dtp|decBCDsoma|output[0]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[0]~82_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|decBCDsoma|output[0]~81_combout\ & ((\dtp|muxsoma2|D[3]~339_combout\))) # (!\dtp|decBCDsoma|output[0]~81_combout\ & (\dtp|muxsoma2|D[3]~326_combout\)))) # (!\dtp|REG8|Q\(1) & 
-- (((\dtp|decBCDsoma|output[0]~81_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~326_combout\,
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|decBCDsoma|output[0]~81_combout\,
	datad => \dtp|muxsoma2|D[3]~339_combout\,
	combout => \dtp|decBCDsoma|output[0]~82_combout\);

-- Location: LCCOMB_X34_Y12_N8
\dtp|decBCDsoma|output[0]~83\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[0]~83_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[0]~82_combout\))) # (!\dtp|CSeq|cont\(1) & (\dtp|muxsoma2|D[2]~340_combout\)))) # (!\dtp|CSeq|cont\(2) & (\dtp|muxsoma2|D[2]~340_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~340_combout\,
	datab => \dtp|CSeq|cont\(2),
	datac => \dtp|CSeq|cont\(1),
	datad => \dtp|decBCDsoma|output[0]~82_combout\,
	combout => \dtp|decBCDsoma|output[0]~83_combout\);

-- Location: LCCOMB_X30_Y12_N26
\dtp|decBCDsoma|output[1]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~70_combout\ = (\dtp|muxsoma2|D[2]~107_combout\ & ((\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(7)))) # (!\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(7))))) # (!\dtp|muxsoma2|D[2]~107_combout\ & ((\dtp|REG8|Q\(6) & 
-- (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001001001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~107_combout\,
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|decBCDsoma|output[1]~70_combout\);

-- Location: LCCOMB_X30_Y12_N8
\dtp|decBCDsoma|output[1]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~71_combout\ = (\dtp|REG8|Q\(3) & (((!\dtp|CSeq|cont\(0) & \dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(3) & (((\dtp|decBCDsoma|output[1]~70_combout\ & \dtp|REG8|Q\(2))) # (!\dtp|CSeq|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|decBCDsoma|output[1]~70_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|decBCDsoma|output[1]~71_combout\);

-- Location: LCCOMB_X31_Y12_N22
\dtp|decBCDsoma|output[1]~107\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~107_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~266_combout\)) # (!\dtp|REG8|Q\(4) & ((!\dtp|muxsoma2|D[2]~65_combout\))))) # (!\dtp|REG8|Q\(0) & (((!\dtp|muxsoma2|D[2]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~266_combout\,
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~65_combout\,
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|decBCDsoma|output[1]~107_combout\);

-- Location: LCCOMB_X30_Y12_N14
\dtp|decBCDsoma|output[1]~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~74_combout\ = (\dtp|decBCDsoma|output[1]~73_combout\) # ((\dtp|decBCDsoma|output[1]~107_combout\ & (\dtp|REG8|Q\(2) $ (!\dtp|REG8|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[1]~73_combout\,
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|decBCDsoma|output[1]~107_combout\,
	combout => \dtp|decBCDsoma|output[1]~74_combout\);

-- Location: LCCOMB_X31_Y12_N2
\dtp|muxsoma2|D[2]~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~272_combout\ = (\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(7) $ ((!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(6))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~272_combout\);

-- Location: LCCOMB_X31_Y12_N20
\dtp|muxsoma2|D[2]~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~275_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(0) & (!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(0) $ (\dtp|REG8|Q\(7) $ (\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~275_combout\);

-- Location: LCCOMB_X31_Y12_N16
\dtp|muxsoma2|D[2]~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~273_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(6) & !\dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~273_combout\);

-- Location: LCCOMB_X31_Y12_N12
\dtp|muxsoma2|D[2]~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~266_combout\ = (\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(6) & \dtp|REG8|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~266_combout\);

-- Location: LCCOMB_X31_Y12_N30
\dtp|muxsoma2|D[2]~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~274_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~266_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~273_combout\,
	datad => \dtp|muxsoma2|D[2]~266_combout\,
	combout => \dtp|muxsoma2|D[2]~274_combout\);

-- Location: LCCOMB_X31_Y12_N10
\dtp|muxsoma2|D[2]~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~276_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~274_combout\ & ((\dtp|muxsoma2|D[2]~275_combout\))) # (!\dtp|muxsoma2|D[2]~274_combout\ & (\dtp|muxsoma2|D[2]~272_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~272_combout\,
	datac => \dtp|muxsoma2|D[2]~275_combout\,
	datad => \dtp|muxsoma2|D[2]~274_combout\,
	combout => \dtp|muxsoma2|D[2]~276_combout\);

-- Location: LCCOMB_X30_Y12_N6
\dtp|decBCDsoma|output[1]~106\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~106_combout\ = (\dtp|muxsoma2|D[2]~276_combout\ & (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(3) $ (!\dtp|REG8|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|muxsoma2|D[2]~276_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(1),
	combout => \dtp|decBCDsoma|output[1]~106_combout\);

-- Location: LCCOMB_X30_Y12_N16
\dtp|decBCDsoma|output[1]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~75_combout\ = (\dtp|decBCDsoma|output[1]~106_combout\) # ((\dtp|decBCDsoma|output[2]~40_combout\ & ((\dtp|decBCDsoma|output[1]~71_combout\) # (\dtp|decBCDsoma|output[1]~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~40_combout\,
	datab => \dtp|decBCDsoma|output[1]~71_combout\,
	datac => \dtp|decBCDsoma|output[1]~74_combout\,
	datad => \dtp|decBCDsoma|output[1]~106_combout\,
	combout => \dtp|decBCDsoma|output[1]~75_combout\);

-- Location: LCCOMB_X30_Y12_N2
\dtp|decBCDsoma|output[1]~76\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~76_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|decBCDsoma|output[1]~69_combout\) # ((\dtp|CSeq|cont\(1))))) # (!\dtp|CSeq|cont\(2) & (((\dtp|decBCDsoma|output[1]~75_combout\ & !\dtp|CSeq|cont\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[1]~69_combout\,
	datab => \dtp|CSeq|cont\(2),
	datac => \dtp|decBCDsoma|output[1]~75_combout\,
	datad => \dtp|CSeq|cont\(1),
	combout => \dtp|decBCDsoma|output[1]~76_combout\);

-- Location: LCCOMB_X30_Y11_N8
\dtp|muxsoma2|D[2]~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~270_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) $ (((\dtp|REG8|Q\(4) & !\dtp|REG8|Q\(6)))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(6)) # (!\dtp|REG8|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~270_combout\);

-- Location: LCCOMB_X29_Y11_N0
\dtp|muxsoma2|D[2]~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~286_combout\ = (!\dtp|REG8|Q\(2) & \dtp|muxsoma2|D[2]~270_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~270_combout\,
	combout => \dtp|muxsoma2|D[2]~286_combout\);

-- Location: LCCOMB_X32_Y15_N16
\dtp|muxsoma2|D[2]~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~288_combout\ = (\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~288_combout\);

-- Location: LCCOMB_X33_Y12_N20
\dtp|muxsoma2|D[2]~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~289_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~287_combout\)) # (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~288_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~287_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~288_combout\,
	combout => \dtp|muxsoma2|D[2]~289_combout\);

-- Location: LCCOMB_X33_Y12_N4
\dtp|muxsoma2|D[2]~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~284_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[2]~283_combout\)))) # (!\dtp|REG8|Q\(7) & (\dtp|muxsoma2|D[2]~283_combout\ $ ((!\dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~283_combout\,
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~284_combout\);

-- Location: LCCOMB_X32_Y12_N6
\dtp|muxsoma2|D[2]~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~282_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~280_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~281_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~280_combout\,
	datad => \dtp|muxsoma2|D[2]~281_combout\,
	combout => \dtp|muxsoma2|D[2]~282_combout\);

-- Location: LCCOMB_X32_Y12_N24
\dtp|muxsoma2|D[2]~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~279_combout\ = (\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~277_combout\)) # (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~278_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~277_combout\,
	datad => \dtp|muxsoma2|D[2]~278_combout\,
	combout => \dtp|muxsoma2|D[2]~279_combout\);

-- Location: LCCOMB_X33_Y12_N26
\dtp|muxsoma2|D[2]~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~285_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~282_combout\ & (\dtp|muxsoma2|D[2]~284_combout\)) # (!\dtp|muxsoma2|D[2]~282_combout\ & ((\dtp|muxsoma2|D[2]~279_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~284_combout\,
	datac => \dtp|muxsoma2|D[2]~282_combout\,
	datad => \dtp|muxsoma2|D[2]~279_combout\,
	combout => \dtp|muxsoma2|D[2]~285_combout\);

-- Location: LCCOMB_X33_Y12_N18
\dtp|muxsoma2|D[2]~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~290_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~285_combout\)))) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~286_combout\) # ((\dtp|muxsoma2|D[2]~289_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~286_combout\,
	datac => \dtp|muxsoma2|D[2]~289_combout\,
	datad => \dtp|muxsoma2|D[2]~285_combout\,
	combout => \dtp|muxsoma2|D[2]~290_combout\);

-- Location: LCCOMB_X33_Y12_N2
\dtp|decBCDsoma|output[1]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~77_combout\ = (\dtp|REG8|Q\(6) & ((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|decBCDsoma|output[1]~77_combout\);

-- Location: LCCOMB_X33_Y12_N30
\dtp|muxsoma2|D[2]~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~311_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|decBCDsoma|output[1]~77_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~277_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~277_combout\,
	datad => \dtp|decBCDsoma|output[1]~77_combout\,
	combout => \dtp|muxsoma2|D[2]~311_combout\);

-- Location: LCCOMB_X34_Y12_N10
\dtp|muxsoma2|D[2]~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~413_combout\ = (\dtp|muxsoma2|D[2]~412_combout\ & (((!\dtp|decBCDsoma|Equal1~2_combout\) # (!\dtp|REG8|Q\(6))) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~412_combout\,
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~413_combout\);

-- Location: LCCOMB_X32_Y13_N20
\dtp|muxsoma2|D[2]~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~312_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~312_combout\);

-- Location: LCCOMB_X32_Y13_N2
\dtp|muxsoma2|D[2]~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~292_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|REG8|Q\(7) & !\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(5)) # ((!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~292_combout\);

-- Location: LCCOMB_X32_Y13_N6
\dtp|muxsoma2|D[2]~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~313_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~292_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~312_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~312_combout\,
	datad => \dtp|muxsoma2|D[2]~292_combout\,
	combout => \dtp|muxsoma2|D[2]~313_combout\);

-- Location: LCCOMB_X33_Y12_N16
\dtp|muxsoma2|D[2]~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~314_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~311_combout\ & ((\dtp|muxsoma2|D[2]~313_combout\))) # (!\dtp|muxsoma2|D[2]~311_combout\ & (\dtp|muxsoma2|D[2]~413_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (\dtp|muxsoma2|D[2]~311_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~311_combout\,
	datac => \dtp|muxsoma2|D[2]~413_combout\,
	datad => \dtp|muxsoma2|D[2]~313_combout\,
	combout => \dtp|muxsoma2|D[2]~314_combout\);

-- Location: LCCOMB_X34_Y15_N24
\dtp|muxsoma2|D[2]~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~316_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|muxsoma2|D[2]~297_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~297_combout\,
	datad => \dtp|muxsoma2|D[2]~273_combout\,
	combout => \dtp|muxsoma2|D[2]~316_combout\);

-- Location: LCCOMB_X34_Y15_N28
\dtp|muxsoma2|D[2]~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~318_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~316_combout\ & ((\dtp|muxsoma2|D[2]~317_combout\))) # (!\dtp|muxsoma2|D[2]~316_combout\ & (!\dtp|muxsoma2|D[2]~315_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~315_combout\,
	datac => \dtp|muxsoma2|D[2]~316_combout\,
	datad => \dtp|muxsoma2|D[2]~317_combout\,
	combout => \dtp|muxsoma2|D[2]~318_combout\);

-- Location: LCCOMB_X33_Y12_N14
\dtp|muxsoma2|D[2]~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~319_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~314_combout\)) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~318_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~314_combout\,
	datad => \dtp|muxsoma2|D[2]~318_combout\,
	combout => \dtp|muxsoma2|D[2]~319_combout\);

-- Location: LCCOMB_X33_Y11_N4
\dtp|muxsoma2|D[2]~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~303_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(2))))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(7) $ (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101001100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~303_combout\);

-- Location: LCCOMB_X33_Y11_N6
\dtp|muxsoma2|D[2]~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~304_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~112_combout\ & ((\dtp|muxsoma2|D[2]~303_combout\))) # (!\dtp|muxsoma2|D[2]~112_combout\ & (\dtp|muxsoma2|D[2]~273_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~273_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~303_combout\,
	datad => \dtp|muxsoma2|D[2]~112_combout\,
	combout => \dtp|muxsoma2|D[2]~304_combout\);

-- Location: LCCOMB_X32_Y12_N4
\dtp|muxsoma2|D[2]~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~307_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~306_combout\))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma2|D[2]~277_combout\,
	datad => \dtp|muxsoma2|D[2]~306_combout\,
	combout => \dtp|muxsoma2|D[2]~307_combout\);

-- Location: LCCOMB_X32_Y12_N8
\dtp|muxsoma2|D[2]~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~305_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~278_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~280_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~280_combout\,
	datad => \dtp|muxsoma2|D[2]~278_combout\,
	combout => \dtp|muxsoma2|D[2]~305_combout\);

-- Location: LCCOMB_X32_Y12_N18
\dtp|muxsoma2|D[2]~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~308_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[2]~292_combout\))) # (!\dtp|REG8|Q\(0) & (\dtp|muxsoma2|D[2]~277_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[2]~277_combout\,
	datad => \dtp|muxsoma2|D[2]~292_combout\,
	combout => \dtp|muxsoma2|D[2]~308_combout\);

-- Location: LCCOMB_X32_Y12_N0
\dtp|muxsoma2|D[2]~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~309_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~307_combout\ & ((\dtp|muxsoma2|D[2]~308_combout\))) # (!\dtp|muxsoma2|D[2]~307_combout\ & (\dtp|muxsoma2|D[2]~305_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (\dtp|muxsoma2|D[2]~307_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~307_combout\,
	datac => \dtp|muxsoma2|D[2]~305_combout\,
	datad => \dtp|muxsoma2|D[2]~308_combout\,
	combout => \dtp|muxsoma2|D[2]~309_combout\);

-- Location: LCCOMB_X32_Y12_N30
\dtp|muxsoma2|D[2]~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~310_combout\ = (\dtp|muxsoma2|D[2]~304_combout\) # ((\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[2]~309_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~304_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~309_combout\,
	combout => \dtp|muxsoma2|D[2]~310_combout\);

-- Location: LCCOMB_X33_Y12_N8
\dtp|muxsoma2|D[2]~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~294_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|REG8|Q\(7) & !\dtp|decBCDsoma|Equal1~2_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|REG8|Q\(0) $ ((!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|decBCDsoma|Equal1~2_combout\,
	combout => \dtp|muxsoma2|D[2]~294_combout\);

-- Location: LCCOMB_X33_Y12_N22
\dtp|muxsoma2|D[2]~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~295_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(5) & ((\dtp|decBCDsoma|output[1]~77_combout\))) # (!\dtp|REG8|Q\(5) & (\dtp|muxsoma2|D[2]~294_combout\)))) # (!\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(5) & (\dtp|muxsoma2|D[2]~294_combout\)) # 
-- (!\dtp|REG8|Q\(5) & ((\dtp|decBCDsoma|output[1]~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|muxsoma2|D[2]~294_combout\,
	datad => \dtp|decBCDsoma|output[1]~77_combout\,
	combout => \dtp|muxsoma2|D[2]~295_combout\);

-- Location: LCCOMB_X35_Y12_N28
\dtp|muxsoma2|D[2]~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~405_combout\ = (\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(7)) # ((\dtp|REG8|Q\(6)) # (!\dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|muxsoma2|D[2]~405_combout\);

-- Location: LCCOMB_X34_Y12_N16
\dtp|muxsoma2|D[2]~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~291_combout\ = (\dtp|REG8|Q\(6) & ((\dtp|REG8|Q\(7) & ((!\dtp|decBCDsoma|Equal1~2_combout\))) # (!\dtp|REG8|Q\(7) & (!\dtp|muxsoma2|D[2]~405_combout\)))) # (!\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[2]~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|muxsoma2|D[2]~405_combout\,
	datac => \dtp|decBCDsoma|Equal1~2_combout\,
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|muxsoma2|D[2]~291_combout\);

-- Location: LCCOMB_X33_Y12_N28
\dtp|muxsoma2|D[2]~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~293_combout\ = (\dtp|REG8|Q\(2) & (((\dtp|REG8|Q\(4)) # (\dtp|muxsoma2|D[2]~292_combout\)))) # (!\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~278_combout\ & (!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~278_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~292_combout\,
	combout => \dtp|muxsoma2|D[2]~293_combout\);

-- Location: LCCOMB_X33_Y12_N24
\dtp|muxsoma2|D[2]~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~296_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~293_combout\ & (\dtp|muxsoma2|D[2]~295_combout\)) # (!\dtp|muxsoma2|D[2]~293_combout\ & ((\dtp|muxsoma2|D[2]~291_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~295_combout\,
	datac => \dtp|muxsoma2|D[2]~291_combout\,
	datad => \dtp|muxsoma2|D[2]~293_combout\,
	combout => \dtp|muxsoma2|D[2]~296_combout\);

-- Location: LCCOMB_X34_Y15_N12
\dtp|muxsoma2|D[2]~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~299_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|muxsoma2|D[2]~287_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~298_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~298_combout\,
	datad => \dtp|muxsoma2|D[2]~287_combout\,
	combout => \dtp|muxsoma2|D[2]~299_combout\);

-- Location: LCCOMB_X34_Y15_N4
\dtp|muxsoma2|D[2]~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~301_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~299_combout\ & (\dtp|muxsoma2|D[2]~300_combout\)) # (!\dtp|muxsoma2|D[2]~299_combout\ & ((\dtp|muxsoma2|D[2]~297_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~300_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~297_combout\,
	datad => \dtp|muxsoma2|D[2]~299_combout\,
	combout => \dtp|muxsoma2|D[2]~301_combout\);

-- Location: LCCOMB_X33_Y12_N10
\dtp|muxsoma2|D[2]~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~302_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[2]~296_combout\)) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~301_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[2]~296_combout\,
	datad => \dtp|muxsoma2|D[2]~301_combout\,
	combout => \dtp|muxsoma2|D[2]~302_combout\);

-- Location: LCCOMB_X33_Y12_N0
\dtp|decBCDsoma|output[1]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~78_combout\ = (\dtp|REG8|Q\(1) & (\dtp|REG8|Q\(3))) # (!\dtp|REG8|Q\(1) & ((\dtp|REG8|Q\(3) & ((\dtp|muxsoma2|D[2]~302_combout\))) # (!\dtp|REG8|Q\(3) & (\dtp|muxsoma2|D[2]~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|REG8|Q\(3),
	datac => \dtp|muxsoma2|D[2]~310_combout\,
	datad => \dtp|muxsoma2|D[2]~302_combout\,
	combout => \dtp|decBCDsoma|output[1]~78_combout\);

-- Location: LCCOMB_X33_Y12_N12
\dtp|decBCDsoma|output[1]~79\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~79_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|decBCDsoma|output[1]~78_combout\ & ((\dtp|muxsoma2|D[2]~319_combout\))) # (!\dtp|decBCDsoma|output[1]~78_combout\ & (\dtp|muxsoma2|D[2]~290_combout\)))) # (!\dtp|REG8|Q\(1) & 
-- (((\dtp|decBCDsoma|output[1]~78_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|muxsoma2|D[2]~290_combout\,
	datac => \dtp|muxsoma2|D[2]~319_combout\,
	datad => \dtp|decBCDsoma|output[1]~78_combout\,
	combout => \dtp|decBCDsoma|output[1]~79_combout\);

-- Location: LCCOMB_X33_Y12_N6
\dtp|decBCDsoma|output[1]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[1]~80_combout\ = (\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[1]~76_combout\ & ((\dtp|decBCDsoma|output[1]~79_combout\))) # (!\dtp|decBCDsoma|output[1]~76_combout\ & (\dtp|decBCDsoma|output[1]~63_combout\)))) # 
-- (!\dtp|CSeq|cont\(1) & (((\dtp|decBCDsoma|output[1]~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[1]~63_combout\,
	datab => \dtp|CSeq|cont\(1),
	datac => \dtp|decBCDsoma|output[1]~76_combout\,
	datad => \dtp|decBCDsoma|output[1]~79_combout\,
	combout => \dtp|decBCDsoma|output[1]~80_combout\);

-- Location: LCCOMB_X33_Y16_N14
\dtp|d7_hx0_3|output[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_3|output[0]~0_combout\ = (\dtp|decBCDsoma|output[0]~83_combout\ & (\dtp|decBCDsoma|output[3]~60_combout\ $ (((!\dtp|decBCDsoma|output[1]~80_combout\ & !\dtp|decBCDsoma|output[2]~100_combout\))))) # (!\dtp|decBCDsoma|output[0]~83_combout\ & 
-- (((!\dtp|decBCDsoma|output[1]~80_combout\ & \dtp|decBCDsoma|output[2]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|d7_hx0_3|output[0]~0_combout\);

-- Location: LCCOMB_X34_Y16_N0
\dtp|mx3hx0|D[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[0]~9_combout\ = (\SW~combout\(1) & (((\SW~combout\(3) & \SW~combout\(0))))) # (!\SW~combout\(1) & (\SW~combout\(2) $ (((!\SW~combout\(3) & \SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|mx3hx0|D[0]~9_combout\);

-- Location: LCCOMB_X33_Y16_N20
\dtp|mx3hx0|D[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[0]~10_combout\ = (\dtp|mx3hx0|D[0]~8_combout\) # ((\dtp|mx3hx0|D[0]~9_combout\ & \ctr|EAtual.Play~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[0]~8_combout\,
	datac => \dtp|mx3hx0|D[0]~9_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[0]~10_combout\);

-- Location: LCCOMB_X32_Y16_N20
\dtp|mx3hx0|D[0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[0]~28_combout\ = (\dtp|mx3hx0|D[0]~10_combout\) # ((!\ctr|EAtual.Play~regout\ & (\dtp|d7_hx0_3|output[0]~0_combout\ & \ctr|EAtual.Sequence~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \dtp|d7_hx0_3|output[0]~0_combout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \dtp|mx3hx0|D[0]~10_combout\,
	combout => \dtp|mx3hx0|D[0]~28_combout\);

-- Location: LCCOMB_X33_Y16_N28
\dtp|mx3hx0|D[1]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[1]~32_combout\ = (\dtp|decBCDsoma|output[3]~60_combout\ & (\dtp|decBCDsoma|output[0]~83_combout\ & (\dtp|decBCDsoma|output[1]~80_combout\ & !\dtp|decBCDsoma|output[2]~100_combout\))) # (!\dtp|decBCDsoma|output[3]~60_combout\ & 
-- (\dtp|decBCDsoma|output[2]~100_combout\ & (\dtp|decBCDsoma|output[0]~83_combout\ $ (\dtp|decBCDsoma|output[1]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|mx3hx0|D[1]~32_combout\);

-- Location: LCCOMB_X33_Y16_N6
\dtp|mx3hx0|D[1]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[1]~33_combout\ = (\ctr|EAtual.Play~regout\ & (\dtp|mx3hx0|D[1]~12_combout\)) # (!\ctr|EAtual.Play~regout\ & (((\dtp|mx3hx0|D[1]~32_combout\ & \ctr|EAtual.Sequence~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[1]~12_combout\,
	datab => \dtp|mx3hx0|D[1]~32_combout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[1]~33_combout\);

-- Location: LCCOMB_X32_Y16_N8
\dtp|E4_or_E3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|E4_or_E3~combout\ = (\ctr|EAtual.Sequence~regout\) # (\ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|E4_or_E3~combout\);

-- Location: LCCOMB_X33_Y16_N30
\dtp|mx3hx0|D[1]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[1]~11_combout\ = (\dtp|d7_hx0_3|Equal15~0_combout\ & (\dtp|mx3hx1|D[3]~22_combout\ & ((\dtp|decBCDsoma|output[1]~80_combout\) # (\dtp|decBCDsoma|output[0]~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|d7_hx0_3|Equal15~0_combout\,
	datab => \dtp|decBCDsoma|output[1]~80_combout\,
	datac => \dtp|decBCDsoma|output[0]~83_combout\,
	datad => \dtp|mx3hx1|D[3]~22_combout\,
	combout => \dtp|mx3hx0|D[1]~11_combout\);

-- Location: LCCOMB_X32_Y16_N10
\dtp|mx3hx0|D[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[1]~13_combout\ = (\dtp|mx3hx0|D[1]~33_combout\) # ((\dtp|mx3hx0|D[1]~11_combout\) # ((!\dtp|E4_or_E3~combout\ & !\ctr|EAtual.Setup~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[1]~33_combout\,
	datab => \dtp|E4_or_E3~combout\,
	datac => \ctr|EAtual.Setup~regout\,
	datad => \dtp|mx3hx0|D[1]~11_combout\,
	combout => \dtp|mx3hx0|D[1]~13_combout\);

-- Location: LCCOMB_X29_Y12_N8
\dtp|decBCDsoma|output[3]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~45_combout\ = (\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(2) & \dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|decBCDsoma|output[3]~45_combout\);

-- Location: LCCOMB_X29_Y12_N30
\dtp|decBCDsoma|output[3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~44_combout\ = (\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(5)))) # (!\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(4) $ (\dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|decBCDsoma|output[3]~44_combout\);

-- Location: LCCOMB_X29_Y12_N22
\dtp|decBCDsoma|output[3]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~46_combout\ = (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(6) & ((\dtp|decBCDsoma|output[3]~44_combout\))) # (!\dtp|REG8|Q\(6) & (\dtp|decBCDsoma|output[3]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|decBCDsoma|output[3]~45_combout\,
	datad => \dtp|decBCDsoma|output[3]~44_combout\,
	combout => \dtp|decBCDsoma|output[3]~46_combout\);

-- Location: LCCOMB_X29_Y12_N20
\dtp|decBCDsoma|output[3]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~43_combout\ = (\dtp|REG8|Q\(4) & (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(2) & !\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(2),
	datad => \dtp|REG8|Q\(0),
	combout => \dtp|decBCDsoma|output[3]~43_combout\);

-- Location: LCCOMB_X29_Y12_N4
\dtp|decBCDsoma|output[3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~47_combout\ = (\dtp|decBCDsoma|output[2]~40_combout\ & (\dtp|decBCDsoma|output[3]~42_combout\)) # (!\dtp|decBCDsoma|output[2]~40_combout\ & (((\dtp|decBCDsoma|output[3]~46_combout\) # (\dtp|decBCDsoma|output[3]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~42_combout\,
	datab => \dtp|decBCDsoma|output[3]~46_combout\,
	datac => \dtp|decBCDsoma|output[3]~43_combout\,
	datad => \dtp|decBCDsoma|output[2]~40_combout\,
	combout => \dtp|decBCDsoma|output[3]~47_combout\);

-- Location: LCCOMB_X30_Y12_N4
\dtp|decBCDsoma|output[3]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~52_combout\ = (!\dtp|REG8|Q\(6) & (!\dtp|decBCDsoma|output[2]~40_combout\ & (\dtp|REG8|Q\(2) $ (\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(6),
	datac => \dtp|decBCDsoma|output[2]~40_combout\,
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|decBCDsoma|output[3]~52_combout\);

-- Location: LCCOMB_X31_Y12_N28
\dtp|muxsoma2|D[2]~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~200_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) $ (((\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4)))))) # (!\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7)) # ((!\dtp|REG8|Q\(4)) # (!\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[2]~200_combout\);

-- Location: LCCOMB_X30_Y12_N10
\dtp|decBCDsoma|output[3]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~49_combout\ = (!\dtp|muxsoma2|D[2]~200_combout\ & (!\dtp|REG8|Q\(3) & \dtp|REG8|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|muxsoma2|D[2]~200_combout\,
	datac => \dtp|REG8|Q\(3),
	datad => \dtp|REG8|Q\(1),
	combout => \dtp|decBCDsoma|output[3]~49_combout\);

-- Location: LCCOMB_X30_Y12_N24
\dtp|decBCDsoma|output[3]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~50_combout\ = (\dtp|decBCDsoma|output[3]~49_combout\) # ((!\dtp|decBCDsoma|output[2]~40_combout\ & (\dtp|muxsoma2|D[2]~76_combout\ & \dtp|muxsoma2|D[2]~107_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[2]~40_combout\,
	datab => \dtp|muxsoma2|D[2]~76_combout\,
	datac => \dtp|muxsoma2|D[2]~107_combout\,
	datad => \dtp|decBCDsoma|output[3]~49_combout\,
	combout => \dtp|decBCDsoma|output[3]~50_combout\);

-- Location: LCCOMB_X30_Y12_N18
\dtp|decBCDsoma|output[3]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~51_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(6) & (\dtp|decBCDsoma|output[3]~48_combout\)) # (!\dtp|REG8|Q\(6) & ((\dtp|decBCDsoma|output[3]~50_combout\))))) # (!\dtp|REG8|Q\(2) & (((\dtp|decBCDsoma|output[3]~50_combout\ & 
-- \dtp|REG8|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~48_combout\,
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|decBCDsoma|output[3]~50_combout\,
	datad => \dtp|REG8|Q\(6),
	combout => \dtp|decBCDsoma|output[3]~51_combout\);

-- Location: LCCOMB_X30_Y12_N30
\dtp|decBCDsoma|output[3]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~53_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|decBCDsoma|output[3]~51_combout\) # ((\dtp|muxsoma2|D[2]~105_combout\ & \dtp|decBCDsoma|output[3]~52_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~105_combout\,
	datab => \dtp|decBCDsoma|output[3]~52_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|decBCDsoma|output[3]~51_combout\,
	combout => \dtp|decBCDsoma|output[3]~53_combout\);

-- Location: LCCOMB_X30_Y15_N20
\dtp|decBCDsoma|output[3]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~54_combout\ = (\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) & ((!\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(7) $ (((!\dtp|REG8|Q\(0)) # (!\dtp|REG8|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|decBCDsoma|output[3]~54_combout\);

-- Location: LCCOMB_X30_Y15_N30
\dtp|decBCDsoma|output[3]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~55_combout\ = (!\dtp|REG8|Q\(2) & (((!\dtp|REG8|Q\(6) & \dtp|decBCDsoma|output[3]~54_combout\)) # (!\dtp|CSeq|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|decBCDsoma|output[3]~54_combout\,
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|decBCDsoma|output[3]~55_combout\);

-- Location: LCCOMB_X31_Y12_N26
\dtp|decBCDsoma|output[3]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~56_combout\ = (\dtp|decBCDsoma|output[3]~55_combout\) # ((\dtp|muxsoma2|D[3]~130_combout\ & (\dtp|CSeq|cont\(0) & !\dtp|muxsoma2|D[2]~200_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~130_combout\,
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|decBCDsoma|output[3]~55_combout\,
	datad => \dtp|muxsoma2|D[2]~200_combout\,
	combout => \dtp|decBCDsoma|output[3]~56_combout\);

-- Location: LCCOMB_X30_Y12_N28
\dtp|decBCDsoma|output[3]~104\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~104_combout\ = (\dtp|decBCDsoma|output[3]~53_combout\) # ((\dtp|REG8|Q\(3) & (\dtp|decBCDsoma|output[3]~56_combout\ & !\dtp|REG8|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|decBCDsoma|output[3]~53_combout\,
	datac => \dtp|decBCDsoma|output[3]~56_combout\,
	datad => \dtp|REG8|Q\(1),
	combout => \dtp|decBCDsoma|output[3]~104_combout\);

-- Location: LCCOMB_X30_Y12_N20
\dtp|decBCDsoma|output[3]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~57_combout\ = (\dtp|CSeq|cont\(2) & ((\dtp|CSeq|cont\(1)) # ((\dtp|decBCDsoma|output[3]~47_combout\)))) # (!\dtp|CSeq|cont\(2) & (!\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[3]~104_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(2),
	datab => \dtp|CSeq|cont\(1),
	datac => \dtp|decBCDsoma|output[3]~47_combout\,
	datad => \dtp|decBCDsoma|output[3]~104_combout\,
	combout => \dtp|decBCDsoma|output[3]~57_combout\);

-- Location: LCCOMB_X32_Y13_N4
\dtp|decBCDsoma|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal2~4_combout\ = ((\dtp|somadorSeq|Add0~4_combout\) # ((\dtp|somadorSeq|Add0~2_combout\) # (\dtp|somadorSeq|Add0~6_combout\))) # (!\dtp|somadorSeq|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~0_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datac => \dtp|somadorSeq|Add0~2_combout\,
	datad => \dtp|somadorSeq|Add0~6_combout\,
	combout => \dtp|decBCDsoma|Equal2~4_combout\);

-- Location: LCCOMB_X32_Y13_N18
\dtp|decBCDsoma|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal2~3_combout\ = ((\dtp|somadorSeq|Add0~8_combout\) # ((\dtp|decBCDsoma|Equal2~4_combout\) # (!\dtp|somadorSeq|Add0~12_combout\))) # (!\dtp|somadorSeq|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~10_combout\,
	datab => \dtp|somadorSeq|Add0~8_combout\,
	datac => \dtp|decBCDsoma|Equal2~4_combout\,
	datad => \dtp|somadorSeq|Add0~12_combout\,
	combout => \dtp|decBCDsoma|Equal2~3_combout\);

-- Location: LCCOMB_X32_Y13_N28
\dtp|muxsoma2|D[3]~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~211_combout\ = (\dtp|REG8|Q\(7) & (((!\dtp|decBCDsoma|Equal2~3_combout\) # (!\dtp|REG8|Q\(0))) # (!\dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[3]~211_combout\);

-- Location: LCCOMB_X32_Y13_N22
\dtp|muxsoma2|D[3]~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~212_combout\ = (\dtp|REG8|Q\(5) & (!\dtp|muxsoma2|D[3]~211_combout\ & (\dtp|REG8|Q\(2) $ (!\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[3]~211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|muxsoma2|D[3]~211_combout\,
	combout => \dtp|muxsoma2|D[3]~212_combout\);

-- Location: LCCOMB_X30_Y15_N26
\dtp|muxsoma2|D[2]~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~209_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(5) & !\dtp|REG8|Q\(7))) # (!\dtp|REG8|Q\(0) & (!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~209_combout\);

-- Location: LCCOMB_X30_Y15_N18
\dtp|muxsoma2|D[2]~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~207_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(4) & !\dtp|REG8|Q\(5))) # (!\dtp|REG8|Q\(7) & ((\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~207_combout\);

-- Location: LCCOMB_X30_Y15_N28
\dtp|muxsoma2|D[2]~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~208_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|REG8|Q\(2))))) # (!\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(4) & (!\dtp|muxsoma2|D[2]~207_combout\ & !\dtp|REG8|Q\(2))) # (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~207_combout\ & \dtp|REG8|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~207_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[2]~208_combout\);

-- Location: LCCOMB_X30_Y15_N4
\dtp|muxsoma2|D[2]~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~210_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~208_combout\ & ((\dtp|muxsoma2|D[2]~209_combout\))) # (!\dtp|muxsoma2|D[2]~208_combout\ & (\dtp|muxsoma2|D[2]~206_combout\)))) # (!\dtp|CSeq|cont\(0) & 
-- (((\dtp|muxsoma2|D[2]~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~206_combout\,
	datab => \dtp|muxsoma2|D[2]~209_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~208_combout\,
	combout => \dtp|muxsoma2|D[2]~210_combout\);

-- Location: LCCOMB_X33_Y14_N2
\dtp|decBCDsoma|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|Equal1~0_combout\ = (!\dtp|somadorSeq|Add0~6_combout\ & (!\dtp|somadorSeq|Add0~4_combout\ & (\dtp|somadorSeq|Add0~10_combout\ & !\dtp|somadorSeq|Add0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~6_combout\,
	datab => \dtp|somadorSeq|Add0~4_combout\,
	datac => \dtp|somadorSeq|Add0~10_combout\,
	datad => \dtp|somadorSeq|Add0~8_combout\,
	combout => \dtp|decBCDsoma|Equal1~0_combout\);

-- Location: LCCOMB_X34_Y13_N12
\dtp|muxsoma2|D[2]~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~203_combout\ = (\dtp|muxsoma2|D[2]~167_combout\ & (((!\dtp|decBCDsoma|Equal1~0_combout\) # (!\dtp|somadorSeq|Add0~12_combout\)) # (!\dtp|decBCDsoma|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~167_combout\,
	datab => \dtp|decBCDsoma|Equal2~2_combout\,
	datac => \dtp|somadorSeq|Add0~12_combout\,
	datad => \dtp|decBCDsoma|Equal1~0_combout\,
	combout => \dtp|muxsoma2|D[2]~203_combout\);

-- Location: LCCOMB_X32_Y13_N14
\dtp|muxsoma2|D[2]~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~202_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|decBCDsoma|Equal2~3_combout\) # (!\dtp|REG8|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[2]~202_combout\);

-- Location: LCCOMB_X33_Y13_N20
\dtp|muxsoma2|D[2]~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~204_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|REG8|Q\(4)) # ((\dtp|muxsoma2|D[2]~202_combout\)))) # (!\dtp|REG8|Q\(2) & (!\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~203_combout\,
	datad => \dtp|muxsoma2|D[2]~202_combout\,
	combout => \dtp|muxsoma2|D[2]~204_combout\);

-- Location: LCCOMB_X34_Y13_N30
\dtp|muxsoma1|D[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma1|D[3]~4_combout\ = (\dtp|REG8|Q\(7) & (((!\dtp|decBCDsoma|Equal1~0_combout\) # (!\dtp|somadorSeq|Add0~12_combout\)) # (!\dtp|decBCDsoma|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|decBCDsoma|Equal2~2_combout\,
	datac => \dtp|somadorSeq|Add0~12_combout\,
	datad => \dtp|decBCDsoma|Equal1~0_combout\,
	combout => \dtp|muxsoma1|D[3]~4_combout\);

-- Location: LCCOMB_X33_Y13_N10
\dtp|muxsoma2|D[2]~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~205_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~204_combout\ & ((\dtp|muxsoma1|D[3]~4_combout\))) # (!\dtp|muxsoma2|D[2]~204_combout\ & (\dtp|muxsoma2|D[2]~201_combout\)))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~201_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~204_combout\,
	datad => \dtp|muxsoma1|D[3]~4_combout\,
	combout => \dtp|muxsoma2|D[2]~205_combout\);

-- Location: LCCOMB_X33_Y13_N12
\dtp|muxsoma2|D[3]~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~400_combout\ = (\dtp|REG8|Q\(6) & (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~205_combout\)))) # (!\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[2]~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~210_combout\,
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[2]~205_combout\,
	combout => \dtp|muxsoma2|D[3]~400_combout\);

-- Location: LCCOMB_X33_Y13_N4
\dtp|muxsoma2|D[3]~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~213_combout\ = (\dtp|muxsoma2|D[3]~400_combout\) # ((\dtp|REG8|Q\(6) & (!\dtp|CSeq|cont\(0) & \dtp|muxsoma2|D[3]~212_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|muxsoma2|D[3]~212_combout\,
	datad => \dtp|muxsoma2|D[3]~400_combout\,
	combout => \dtp|muxsoma2|D[3]~213_combout\);

-- Location: LCCOMB_X31_Y13_N16
\dtp|muxsoma2|D[3]~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~130_combout\ = (\dtp|REG8|Q\(6) & \dtp|REG8|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(6),
	datad => \dtp|REG8|Q\(2),
	combout => \dtp|muxsoma2|D[3]~130_combout\);

-- Location: LCCOMB_X34_Y13_N28
\dtp|muxsoma2|D[3]~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~401_combout\ = (\dtp|REG8|Q\(7) & (((\dtp|REG8|Q\(0)) # (\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & (\dtp|REG8|Q\(0) & \dtp|REG8|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|REG8|Q\(4),
	combout => \dtp|muxsoma2|D[3]~401_combout\);

-- Location: LCCOMB_X34_Y13_N8
\dtp|muxsoma2|D[3]~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~214_combout\ = (\dtp|somadorSeq|Add0~12_combout\ & (\dtp|decBCDsoma|Equal1~0_combout\ & ((\dtp|decBCDsoma|Equal2~2_combout\) # (!\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|decBCDsoma|Equal2~2_combout\,
	datac => \dtp|somadorSeq|Add0~12_combout\,
	datad => \dtp|decBCDsoma|Equal1~0_combout\,
	combout => \dtp|muxsoma2|D[3]~214_combout\);

-- Location: LCCOMB_X34_Y13_N22
\dtp|muxsoma2|D[3]~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~215_combout\ = (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[2]~67_combout\ & (\dtp|REG8|Q\(0)))) # (!\dtp|REG8|Q\(4) & (((!\dtp|REG8|Q\(0) & \dtp|muxsoma2|D[2]~203_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~67_combout\,
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~203_combout\,
	combout => \dtp|muxsoma2|D[3]~215_combout\);

-- Location: LCCOMB_X34_Y13_N16
\dtp|muxsoma2|D[3]~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~216_combout\ = (\dtp|muxsoma2|D[3]~401_combout\ & (((\dtp|muxsoma2|D[3]~215_combout\) # (!\dtp|muxsoma2|D[3]~214_combout\)))) # (!\dtp|muxsoma2|D[3]~401_combout\ & (!\dtp|REG8|Q\(0) & ((\dtp|muxsoma2|D[3]~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(0),
	datab => \dtp|muxsoma2|D[3]~401_combout\,
	datac => \dtp|muxsoma2|D[3]~214_combout\,
	datad => \dtp|muxsoma2|D[3]~215_combout\,
	combout => \dtp|muxsoma2|D[3]~216_combout\);

-- Location: LCCOMB_X32_Y13_N8
\dtp|muxsoma2|D[3]~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~217_combout\ = ((\dtp|REG8|Q\(0) & \dtp|decBCDsoma|Equal2~3_combout\)) # (!\dtp|REG8|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[3]~217_combout\);

-- Location: LCCOMB_X33_Y13_N22
\dtp|muxsoma2|D[3]~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~218_combout\ = (\dtp|REG8|Q\(4) & (((\dtp|muxsoma2|D[2]~203_combout\)))) # (!\dtp|REG8|Q\(4) & (\dtp|REG8|Q\(5) & ((\dtp|muxsoma2|D[3]~217_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[2]~203_combout\,
	datad => \dtp|muxsoma2|D[3]~217_combout\,
	combout => \dtp|muxsoma2|D[3]~218_combout\);

-- Location: LCCOMB_X33_Y13_N16
\dtp|muxsoma2|D[3]~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~219_combout\ = (\dtp|muxsoma2|D[3]~130_combout\ & ((\dtp|CSeq|cont\(0) & (\dtp|muxsoma2|D[3]~216_combout\)) # (!\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[3]~218_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[3]~130_combout\,
	datac => \dtp|muxsoma2|D[3]~216_combout\,
	datad => \dtp|muxsoma2|D[3]~218_combout\,
	combout => \dtp|muxsoma2|D[3]~219_combout\);

-- Location: LCCOMB_X30_Y15_N2
\dtp|muxsoma2|D[2]~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~220_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(0)) # ((\dtp|REG8|Q\(7)) # (!\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(4) & ((\dtp|REG8|Q\(5) $ (\dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~220_combout\);

-- Location: LCCOMB_X30_Y15_N0
\dtp|muxsoma2|D[2]~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~206_combout\ = (\dtp|REG8|Q\(4) & (!\dtp|REG8|Q\(0) & (\dtp|REG8|Q\(5) $ (!\dtp|REG8|Q\(7))))) # (!\dtp|REG8|Q\(4) & (((!\dtp|REG8|Q\(5) & \dtp|REG8|Q\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|REG8|Q\(7),
	combout => \dtp|muxsoma2|D[2]~206_combout\);

-- Location: LCCOMB_X30_Y15_N22
\dtp|muxsoma2|D[2]~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~222_combout\ = (\dtp|muxsoma2|D[2]~221_combout\ & (((\dtp|muxsoma2|D[2]~206_combout\) # (!\dtp|CSeq|cont\(0))))) # (!\dtp|muxsoma2|D[2]~221_combout\ & (!\dtp|muxsoma2|D[2]~220_combout\ & (\dtp|CSeq|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~221_combout\,
	datab => \dtp|muxsoma2|D[2]~220_combout\,
	datac => \dtp|CSeq|cont\(0),
	datad => \dtp|muxsoma2|D[2]~206_combout\,
	combout => \dtp|muxsoma2|D[2]~222_combout\);

-- Location: LCCOMB_X32_Y13_N30
\dtp|muxsoma2|D[3]~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~223_combout\ = (\dtp|muxsoma2|D[2]~73_combout\ & (\dtp|muxsoma2|D[2]~107_combout\ & (\dtp|REG8|Q\(5)))) # (!\dtp|muxsoma2|D[2]~73_combout\ & (((\dtp|decBCDsoma|Equal2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~73_combout\,
	datab => \dtp|muxsoma2|D[2]~107_combout\,
	datac => \dtp|REG8|Q\(5),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[3]~223_combout\);

-- Location: LCCOMB_X34_Y13_N0
\dtp|muxsoma2|D[2]~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~414_combout\ = (((\dtp|somadorSeq|Add0~2_combout\) # (!\dtp|decBCDsoma|Equal1~0_combout\)) # (!\dtp|somadorSeq|Add0~12_combout\)) # (!\dtp|somadorSeq|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|somadorSeq|Add0~0_combout\,
	datab => \dtp|somadorSeq|Add0~12_combout\,
	datac => \dtp|somadorSeq|Add0~2_combout\,
	datad => \dtp|decBCDsoma|Equal1~0_combout\,
	combout => \dtp|muxsoma2|D[2]~414_combout\);

-- Location: LCCOMB_X34_Y13_N2
\dtp|muxsoma2|D[2]~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~415_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((\dtp|muxsoma2|D[2]~414_combout\)))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & ((\dtp|muxsoma2|D[2]~414_combout\) # (!\dtp|somadorSeq|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|somadorSeq|Add0~2_combout\,
	datad => \dtp|muxsoma2|D[2]~414_combout\,
	combout => \dtp|muxsoma2|D[2]~415_combout\);

-- Location: LCCOMB_X33_Y13_N2
\dtp|muxsoma2|D[3]~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~224_combout\ = (\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[3]~223_combout\)))) # (!\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[3]~223_combout\,
	datad => \dtp|muxsoma2|D[2]~415_combout\,
	combout => \dtp|muxsoma2|D[3]~224_combout\);

-- Location: LCCOMB_X33_Y13_N0
\dtp|muxsoma2|D[3]~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~225_combout\ = (\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[3]~224_combout\)))) # (!\dtp|REG8|Q\(6) & (((\dtp|muxsoma2|D[2]~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~222_combout\,
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[3]~224_combout\,
	combout => \dtp|muxsoma2|D[3]~225_combout\);

-- Location: LCCOMB_X33_Y13_N14
\dtp|muxsoma2|D[3]~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~226_combout\ = (\dtp|muxsoma2|D[3]~219_combout\) # (\dtp|muxsoma2|D[3]~225_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|muxsoma2|D[3]~219_combout\,
	datad => \dtp|muxsoma2|D[3]~225_combout\,
	combout => \dtp|muxsoma2|D[3]~226_combout\);

-- Location: LCCOMB_X33_Y14_N20
\dtp|muxsoma2|D[2]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~60_combout\ = (\dtp|REG8|Q\(6) & \dtp|CSeq|cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datad => \dtp|CSeq|cont\(0),
	combout => \dtp|muxsoma2|D[2]~60_combout\);

-- Location: LCCOMB_X29_Y13_N4
\dtp|muxsoma2|D[3]~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~227_combout\ = (\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(2) $ (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(5))))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(2) & (\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~227_combout\);

-- Location: LCCOMB_X29_Y13_N18
\dtp|muxsoma2|D[3]~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~228_combout\ = (\dtp|REG8|Q\(2) & (((\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))))) # (!\dtp|REG8|Q\(2) & ((\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(7) $ (!\dtp|REG8|Q\(5)))) # (!\dtp|CSeq|cont\(0) & (!\dtp|REG8|Q\(7) & \dtp|REG8|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|CSeq|cont\(0),
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[3]~228_combout\);

-- Location: LCCOMB_X29_Y13_N20
\dtp|muxsoma2|D[3]~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~402_combout\ = (\dtp|REG8|Q\(4) & (\dtp|muxsoma2|D[3]~228_combout\ & ((\dtp|REG8|Q\(0)) # (!\dtp|muxsoma2|D[3]~227_combout\)))) # (!\dtp|REG8|Q\(4) & (((\dtp|muxsoma2|D[3]~227_combout\ & !\dtp|muxsoma2|D[3]~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|REG8|Q\(0),
	datac => \dtp|muxsoma2|D[3]~227_combout\,
	datad => \dtp|muxsoma2|D[3]~228_combout\,
	combout => \dtp|muxsoma2|D[3]~402_combout\);

-- Location: LCCOMB_X33_Y13_N8
\dtp|muxsoma2|D[3]~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~229_combout\ = (!\dtp|REG8|Q\(6) & \dtp|muxsoma2|D[3]~402_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|REG8|Q\(6),
	datad => \dtp|muxsoma2|D[3]~402_combout\,
	combout => \dtp|muxsoma2|D[3]~229_combout\);

-- Location: LCCOMB_X34_Y13_N18
\dtp|muxsoma2|D[2]~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~235_combout\ = (\dtp|REG8|Q\(7) & (\dtp|REG8|Q\(5) & ((\dtp|decBCDsoma|Equal2~3_combout\)))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(5) & (!\dtp|REG8|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(7),
	datab => \dtp|REG8|Q\(5),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[2]~235_combout\);

-- Location: LCCOMB_X34_Y13_N4
\dtp|muxsoma2|D[2]~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~234_combout\ = (\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~233_combout\) # ((\dtp|REG8|Q\(4))))) # (!\dtp|REG8|Q\(2) & (((!\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[2]~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~233_combout\,
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~415_combout\,
	combout => \dtp|muxsoma2|D[2]~234_combout\);

-- Location: LCCOMB_X32_Y13_N12
\dtp|muxsoma2|D[2]~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~232_combout\ = (\dtp|REG8|Q\(5) & ((\dtp|REG8|Q\(7) & ((\dtp|decBCDsoma|Equal2~3_combout\))) # (!\dtp|REG8|Q\(7) & (!\dtp|REG8|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(5),
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|decBCDsoma|Equal2~3_combout\,
	combout => \dtp|muxsoma2|D[2]~232_combout\);

-- Location: LCCOMB_X34_Y13_N20
\dtp|muxsoma2|D[2]~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~236_combout\ = (\dtp|REG8|Q\(4) & ((\dtp|muxsoma2|D[2]~234_combout\ & (\dtp|muxsoma2|D[2]~235_combout\)) # (!\dtp|muxsoma2|D[2]~234_combout\ & ((\dtp|muxsoma2|D[2]~232_combout\))))) # (!\dtp|REG8|Q\(4) & 
-- (((\dtp|muxsoma2|D[2]~234_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(4),
	datab => \dtp|muxsoma2|D[2]~235_combout\,
	datac => \dtp|muxsoma2|D[2]~234_combout\,
	datad => \dtp|muxsoma2|D[2]~232_combout\,
	combout => \dtp|muxsoma2|D[2]~236_combout\);

-- Location: LCCOMB_X33_Y13_N26
\dtp|muxsoma2|D[3]~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~237_combout\ = (\dtp|muxsoma2|D[3]~231_combout\) # ((\dtp|muxsoma2|D[3]~229_combout\) # ((\dtp|muxsoma2|D[2]~60_combout\ & \dtp|muxsoma2|D[2]~236_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[3]~231_combout\,
	datab => \dtp|muxsoma2|D[2]~60_combout\,
	datac => \dtp|muxsoma2|D[3]~229_combout\,
	datad => \dtp|muxsoma2|D[2]~236_combout\,
	combout => \dtp|muxsoma2|D[3]~237_combout\);

-- Location: LCCOMB_X33_Y13_N24
\dtp|decBCDsoma|output[3]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~58_combout\ = (\dtp|REG8|Q\(3) & ((\dtp|REG8|Q\(1)) # ((\dtp|muxsoma2|D[3]~226_combout\)))) # (!\dtp|REG8|Q\(3) & (!\dtp|REG8|Q\(1) & ((\dtp|muxsoma2|D[3]~237_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(3),
	datab => \dtp|REG8|Q\(1),
	datac => \dtp|muxsoma2|D[3]~226_combout\,
	datad => \dtp|muxsoma2|D[3]~237_combout\,
	combout => \dtp|decBCDsoma|output[3]~58_combout\);

-- Location: LCCOMB_X34_Y13_N26
\dtp|muxsoma2|D[3]~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~241_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma1|D[3]~4_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~415_combout\))))) # (!\dtp|CSeq|cont\(0) & (\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|REG8|Q\(2),
	datac => \dtp|muxsoma1|D[3]~4_combout\,
	datad => \dtp|muxsoma2|D[2]~415_combout\,
	combout => \dtp|muxsoma2|D[3]~241_combout\);

-- Location: LCCOMB_X35_Y13_N4
\dtp|muxsoma2|D[2]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~67_combout\ = (!\dtp|REG8|Q\(7) & !\dtp|REG8|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|REG8|Q\(7),
	datac => \dtp|REG8|Q\(5),
	combout => \dtp|muxsoma2|D[2]~67_combout\);

-- Location: LCCOMB_X35_Y13_N30
\dtp|muxsoma2|D[2]~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~238_combout\ = (!\dtp|REG8|Q\(0) & ((\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~67_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~76_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(2),
	datab => \dtp|muxsoma2|D[2]~67_combout\,
	datac => \dtp|REG8|Q\(0),
	datad => \dtp|muxsoma2|D[2]~76_combout\,
	combout => \dtp|muxsoma2|D[2]~238_combout\);

-- Location: LCCOMB_X34_Y13_N6
\dtp|muxsoma2|D[2]~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~233_combout\ = (\dtp|REG8|Q\(7) & ((\dtp|muxsoma2|D[2]~403_combout\) # ((!\dtp|decBCDsoma|Equal1~0_combout\) # (!\dtp|somadorSeq|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~403_combout\,
	datab => \dtp|somadorSeq|Add0~12_combout\,
	datac => \dtp|REG8|Q\(7),
	datad => \dtp|decBCDsoma|Equal1~0_combout\,
	combout => \dtp|muxsoma2|D[2]~233_combout\);

-- Location: LCCOMB_X34_Y13_N14
\dtp|muxsoma2|D[2]~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~239_combout\ = (\dtp|REG8|Q\(2) & (\dtp|muxsoma2|D[2]~203_combout\)) # (!\dtp|REG8|Q\(2) & ((\dtp|muxsoma2|D[2]~233_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|muxsoma2|D[2]~203_combout\,
	datab => \dtp|REG8|Q\(2),
	datad => \dtp|muxsoma2|D[2]~233_combout\,
	combout => \dtp|muxsoma2|D[2]~239_combout\);

-- Location: LCCOMB_X34_Y13_N24
\dtp|muxsoma2|D[2]~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[2]~240_combout\ = (\dtp|CSeq|cont\(0) & ((\dtp|muxsoma2|D[2]~238_combout\) # ((\dtp|muxsoma1|D[3]~4_combout\)))) # (!\dtp|CSeq|cont\(0) & (((\dtp|muxsoma2|D[2]~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|CSeq|cont\(0),
	datab => \dtp|muxsoma2|D[2]~238_combout\,
	datac => \dtp|muxsoma2|D[2]~239_combout\,
	datad => \dtp|muxsoma1|D[3]~4_combout\,
	combout => \dtp|muxsoma2|D[2]~240_combout\);

-- Location: LCCOMB_X33_Y13_N6
\dtp|muxsoma2|D[3]~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~404_combout\ = (\dtp|REG8|Q\(6) & (((\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[2]~240_combout\)))) # (!\dtp|REG8|Q\(6) & (\dtp|muxsoma2|D[3]~402_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|muxsoma2|D[3]~402_combout\,
	datac => \dtp|REG8|Q\(4),
	datad => \dtp|muxsoma2|D[2]~240_combout\,
	combout => \dtp|muxsoma2|D[3]~404_combout\);

-- Location: LCCOMB_X33_Y13_N18
\dtp|muxsoma2|D[3]~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|muxsoma2|D[3]~242_combout\ = (\dtp|muxsoma2|D[3]~404_combout\) # ((\dtp|REG8|Q\(6) & (!\dtp|REG8|Q\(4) & \dtp|muxsoma2|D[3]~241_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(6),
	datab => \dtp|REG8|Q\(4),
	datac => \dtp|muxsoma2|D[3]~241_combout\,
	datad => \dtp|muxsoma2|D[3]~404_combout\,
	combout => \dtp|muxsoma2|D[3]~242_combout\);

-- Location: LCCOMB_X33_Y13_N28
\dtp|decBCDsoma|output[3]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~59_combout\ = (\dtp|REG8|Q\(1) & ((\dtp|decBCDsoma|output[3]~58_combout\ & ((\dtp|muxsoma2|D[3]~242_combout\))) # (!\dtp|decBCDsoma|output[3]~58_combout\ & (\dtp|muxsoma2|D[3]~213_combout\)))) # (!\dtp|REG8|Q\(1) & 
-- (((\dtp|decBCDsoma|output[3]~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|REG8|Q\(1),
	datab => \dtp|muxsoma2|D[3]~213_combout\,
	datac => \dtp|decBCDsoma|output[3]~58_combout\,
	datad => \dtp|muxsoma2|D[3]~242_combout\,
	combout => \dtp|decBCDsoma|output[3]~59_combout\);

-- Location: LCCOMB_X33_Y13_N30
\dtp|decBCDsoma|output[3]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|decBCDsoma|output[3]~60_combout\ = (\dtp|CSeq|cont\(1) & ((\dtp|decBCDsoma|output[3]~57_combout\ & ((\dtp|decBCDsoma|output[3]~59_combout\))) # (!\dtp|decBCDsoma|output[3]~57_combout\ & (\dtp|decBCDsoma|output[3]~102_combout\)))) # 
-- (!\dtp|CSeq|cont\(1) & (((\dtp|decBCDsoma|output[3]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~102_combout\,
	datab => \dtp|CSeq|cont\(1),
	datac => \dtp|decBCDsoma|output[3]~57_combout\,
	datad => \dtp|decBCDsoma|output[3]~59_combout\,
	combout => \dtp|decBCDsoma|output[3]~60_combout\);

-- Location: LCFF_X34_Y16_N31
\dtp|SelREG2|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK_50~clkctrl_outclk\,
	sdata => \SW~combout\(1),
	aclr => \ctr|ALT_INV_EAtual.Innit~regout\,
	sload => VCC,
	ena => \ctr|EAtual.Setup~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \dtp|SelREG2|Q\(1));

-- Location: LCCOMB_X34_Y16_N30
\dtp|mx3hx0|D[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[2]~15_combout\ = ((\dtp|SelREG2|Q\(1) & !\dtp|SelREG2|Q\(0))) # (!\ctr|EAtual.Setup~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Setup~regout\,
	datac => \dtp|SelREG2|Q\(1),
	datad => \dtp|SelREG2|Q\(0),
	combout => \dtp|mx3hx0|D[2]~15_combout\);

-- Location: LCCOMB_X33_Y16_N18
\dtp|mx3hx0|D[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[2]~29_combout\ = (\ctr|EAtual.Play~regout\ & (\dtp|mx3hx0|D[2]~14_combout\)) # (!\ctr|EAtual.Play~regout\ & (((\dtp|mx3hx0|D[2]~15_combout\ & !\ctr|EAtual.Sequence~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[2]~14_combout\,
	datab => \dtp|mx3hx0|D[2]~15_combout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[2]~29_combout\);

-- Location: LCCOMB_X33_Y16_N4
\dtp|mx3hx0|D[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[2]~16_combout\ = (\dtp|mx3hx1|D[3]~22_combout\ & (\dtp|decBCDsoma|output[1]~80_combout\ & (!\dtp|decBCDsoma|output[0]~83_combout\ & !\dtp|decBCDsoma|output[2]~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx1|D[3]~22_combout\,
	datab => \dtp|decBCDsoma|output[1]~80_combout\,
	datac => \dtp|decBCDsoma|output[0]~83_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|mx3hx0|D[2]~16_combout\);

-- Location: LCCOMB_X33_Y16_N10
\dtp|mx3hx0|D[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[2]~17_combout\ = (\dtp|mx3hx0|D[2]~29_combout\) # ((\dtp|mx3hx0|D[1]~11_combout\) # ((!\dtp|decBCDsoma|output[3]~60_combout\ & \dtp|mx3hx0|D[2]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|mx3hx0|D[2]~29_combout\,
	datac => \dtp|mx3hx0|D[2]~16_combout\,
	datad => \dtp|mx3hx0|D[1]~11_combout\,
	combout => \dtp|mx3hx0|D[2]~17_combout\);

-- Location: LCCOMB_X32_Y16_N12
\dtp|mx3hx0|D[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[0]~8_combout\ = (!\dtp|E4_or_E3~combout\ & (((!\dtp|SelREG2|Q\(1) & \dtp|SelREG2|Q\(0))) # (!\ctr|EAtual.Setup~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Setup~regout\,
	datab => \dtp|SelREG2|Q\(1),
	datac => \dtp|E4_or_E3~combout\,
	datad => \dtp|SelREG2|Q\(0),
	combout => \dtp|mx3hx0|D[0]~8_combout\);

-- Location: LCCOMB_X34_Y16_N14
\dtp|d7_hx0_4|output[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_4|output[3]~0_combout\ = (\SW~combout\(1) & ((\SW~combout\(2) & ((\SW~combout\(0)))) # (!\SW~combout\(2) & (\SW~combout\(3) & !\SW~combout\(0))))) # (!\SW~combout\(1) & (!\SW~combout\(3) & (\SW~combout\(2) $ (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|d7_hx0_4|output[3]~0_combout\);

-- Location: LCCOMB_X33_Y16_N8
\dtp|mx3hx0|D[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[3]~18_combout\ = (\dtp|d7_hx0_4|output[3]~0_combout\ & \ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|d7_hx0_4|output[3]~0_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[3]~18_combout\);

-- Location: LCCOMB_X33_Y16_N2
\dtp|d7_hx0_3|output[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_3|output[3]~1_combout\ = (\dtp|decBCDsoma|output[1]~80_combout\ & ((\dtp|decBCDsoma|output[0]~83_combout\ & ((\dtp|decBCDsoma|output[2]~100_combout\))) # (!\dtp|decBCDsoma|output[0]~83_combout\ & (\dtp|decBCDsoma|output[3]~60_combout\ & 
-- !\dtp|decBCDsoma|output[2]~100_combout\)))) # (!\dtp|decBCDsoma|output[1]~80_combout\ & (!\dtp|decBCDsoma|output[3]~60_combout\ & (\dtp|decBCDsoma|output[0]~83_combout\ $ (\dtp|decBCDsoma|output[2]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|d7_hx0_3|output[3]~1_combout\);

-- Location: LCCOMB_X32_Y16_N4
\dtp|mx3hx0|D[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[3]~19_combout\ = (\dtp|mx3hx0|D[0]~8_combout\) # ((\dtp|mx3hx0|D[3]~18_combout\) # ((\dtp|mx3hx1|D[3]~22_combout\ & \dtp|d7_hx0_3|output[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[0]~8_combout\,
	datab => \dtp|mx3hx1|D[3]~22_combout\,
	datac => \dtp|mx3hx0|D[3]~18_combout\,
	datad => \dtp|d7_hx0_3|output[3]~1_combout\,
	combout => \dtp|mx3hx0|D[3]~19_combout\);

-- Location: LCCOMB_X32_Y16_N6
\dtp|mx3hx0|D[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[4]~20_combout\ = (!\ctr|EAtual.Play~regout\ & (!\ctr|EAtual.Sequence~regout\ & ((\dtp|SelREG2|Q\(0)) # (!\ctr|EAtual.Setup~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Play~regout\,
	datab => \ctr|EAtual.Setup~regout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \dtp|SelREG2|Q\(0),
	combout => \dtp|mx3hx0|D[4]~20_combout\);

-- Location: LCCOMB_X33_Y16_N26
\dtp|d7_hx0_3|output[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_3|output[4]~2_combout\ = (\dtp|decBCDsoma|output[0]~83_combout\ & ((\dtp|decBCDsoma|output[1]~80_combout\ $ (!\dtp|decBCDsoma|output[2]~100_combout\)) # (!\dtp|decBCDsoma|output[3]~60_combout\))) # (!\dtp|decBCDsoma|output[0]~83_combout\ & 
-- (((!\dtp|decBCDsoma|output[1]~80_combout\ & \dtp|decBCDsoma|output[2]~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|d7_hx0_3|output[4]~2_combout\);

-- Location: LCCOMB_X34_Y16_N16
\dtp|d7_hx0_4|output[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_4|output[4]~1_combout\ = (\SW~combout\(0) & ((\SW~combout\(2) $ (!\SW~combout\(1))) # (!\SW~combout\(3)))) # (!\SW~combout\(0) & (\SW~combout\(2) & ((!\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|d7_hx0_4|output[4]~1_combout\);

-- Location: LCCOMB_X33_Y16_N24
\dtp|mx3hx0|D[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[4]~21_combout\ = (\dtp|d7_hx0_4|output[4]~1_combout\ & \ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dtp|d7_hx0_4|output[4]~1_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[4]~21_combout\);

-- Location: LCCOMB_X32_Y16_N0
\dtp|mx3hx0|D[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[4]~22_combout\ = (\dtp|mx3hx0|D[4]~20_combout\) # ((\dtp|mx3hx0|D[4]~21_combout\) # ((\dtp|mx3hx1|D[3]~22_combout\ & \dtp|d7_hx0_3|output[4]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[4]~20_combout\,
	datab => \dtp|mx3hx1|D[3]~22_combout\,
	datac => \dtp|d7_hx0_3|output[4]~2_combout\,
	datad => \dtp|mx3hx0|D[4]~21_combout\,
	combout => \dtp|mx3hx0|D[4]~22_combout\);

-- Location: LCCOMB_X32_Y16_N2
\dtp|mx3hx0|D[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[5]~23_combout\ = (!\dtp|E4_or_E3~combout\ & (((\dtp|SelREG2|Q\(1)) # (\dtp|SelREG2|Q\(0))) # (!\ctr|EAtual.Setup~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctr|EAtual.Setup~regout\,
	datab => \dtp|SelREG2|Q\(1),
	datac => \dtp|E4_or_E3~combout\,
	datad => \dtp|SelREG2|Q\(0),
	combout => \dtp|mx3hx0|D[5]~23_combout\);

-- Location: LCCOMB_X34_Y16_N18
\dtp|d7_hx0_4|output[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_4|output[5]~2_combout\ = (\SW~combout\(2) & ((\SW~combout\(1) & ((\SW~combout\(0)))) # (!\SW~combout\(1) & (\SW~combout\(3) & !\SW~combout\(0))))) # (!\SW~combout\(2) & (!\SW~combout\(3) & ((\SW~combout\(1)) # (\SW~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|d7_hx0_4|output[5]~2_combout\);

-- Location: LCCOMB_X34_Y16_N12
\dtp|mx3hx0|D[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[5]~24_combout\ = (\dtp|d7_hx0_4|output[5]~2_combout\ & \ctr|EAtual.Play~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|d7_hx0_4|output[5]~2_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[5]~24_combout\);

-- Location: LCCOMB_X33_Y16_N0
\dtp|d7_hx0_3|output[5]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|d7_hx0_3|output[5]~3_combout\ = (\dtp|decBCDsoma|output[2]~100_combout\ & ((\dtp|decBCDsoma|output[0]~83_combout\ & ((\dtp|decBCDsoma|output[1]~80_combout\))) # (!\dtp|decBCDsoma|output[0]~83_combout\ & (\dtp|decBCDsoma|output[3]~60_combout\ & 
-- !\dtp|decBCDsoma|output[1]~80_combout\)))) # (!\dtp|decBCDsoma|output[2]~100_combout\ & (!\dtp|decBCDsoma|output[3]~60_combout\ & ((\dtp|decBCDsoma|output[0]~83_combout\) # (\dtp|decBCDsoma|output[1]~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|decBCDsoma|output[3]~60_combout\,
	datab => \dtp|decBCDsoma|output[0]~83_combout\,
	datac => \dtp|decBCDsoma|output[1]~80_combout\,
	datad => \dtp|decBCDsoma|output[2]~100_combout\,
	combout => \dtp|d7_hx0_3|output[5]~3_combout\);

-- Location: LCCOMB_X33_Y16_N22
\dtp|mx3hx0|D[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[5]~25_combout\ = (\dtp|mx3hx0|D[5]~23_combout\) # ((\dtp|mx3hx0|D[5]~24_combout\) # ((\dtp|mx3hx1|D[3]~22_combout\ & \dtp|d7_hx0_3|output[5]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[5]~23_combout\,
	datab => \dtp|mx3hx1|D[3]~22_combout\,
	datac => \dtp|mx3hx0|D[5]~24_combout\,
	datad => \dtp|d7_hx0_3|output[5]~3_combout\,
	combout => \dtp|mx3hx0|D[5]~25_combout\);

-- Location: LCCOMB_X32_Y16_N26
\dtp|mx3hx0|D[6]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[6]~30_combout\ = (\ctr|EAtual.Sequence~regout\ & (!\dtp|mx3hx0|D[6]~27_combout\)) # (!\ctr|EAtual.Sequence~regout\ & (((!\dtp|SelREG2|Q\(1)) # (!\ctr|EAtual.Setup~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dtp|mx3hx0|D[6]~27_combout\,
	datab => \ctr|EAtual.Setup~regout\,
	datac => \ctr|EAtual.Sequence~regout\,
	datad => \dtp|SelREG2|Q\(1),
	combout => \dtp|mx3hx0|D[6]~30_combout\);

-- Location: LCCOMB_X34_Y16_N6
\dtp|mx3hx0|D[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[6]~26_combout\ = (\SW~combout\(1) & (\SW~combout\(2) & ((\SW~combout\(0))))) # (!\SW~combout\(1) & (\SW~combout\(2) $ ((!\SW~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(2),
	datab => \SW~combout\(3),
	datac => \SW~combout\(1),
	datad => \SW~combout\(0),
	combout => \dtp|mx3hx0|D[6]~26_combout\);

-- Location: LCCOMB_X32_Y16_N24
\dtp|mx3hx0|D[6]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \dtp|mx3hx0|D[6]~31_combout\ = (\ctr|EAtual.Play~regout\ & ((\dtp|mx3hx0|D[6]~26_combout\))) # (!\ctr|EAtual.Play~regout\ & (\dtp|mx3hx0|D[6]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dtp|mx3hx0|D[6]~30_combout\,
	datac => \dtp|mx3hx0|D[6]~26_combout\,
	datad => \ctr|EAtual.Play~regout\,
	combout => \dtp|mx3hx0|D[6]~31_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(10));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(11));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(12));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(13));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(14));

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(15));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(16));

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(17));

-- Location: PIN_AE23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[0]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[1]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[2]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[4]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[5]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[6]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[7]~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[8]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_Y13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[9]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[10]~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(10));

-- Location: PIN_AC14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[11]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(11));

-- Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[12]~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(12));

-- Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[13]~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(13));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[14]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(14));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx_led|D[15]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(15));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(16));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LEDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(17));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(1));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(2));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(3));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(5));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX7[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx7|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX7(6));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(1));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(3));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(4));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(5));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX6[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|d7_hx6|output[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX6(6));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(1));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(2));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(3));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(4));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX5[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX5(6));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(0));

-- Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(1));

-- Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(2));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(3));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(4));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(5));

-- Location: PIN_T3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX4[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX4(6));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[0]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[1]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[2]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[4]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[5]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx1|D[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[3]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[4]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[5]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \dtp|mx3hx0|D[6]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));
END structure;


