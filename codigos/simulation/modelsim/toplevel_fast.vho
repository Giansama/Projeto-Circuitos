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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/20/2015 11:02:18"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	cronometro IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	sec : OUT STD.STANDARD.integer range 0 TO 15;
	min : OUT STD.STANDARD.integer range 0 TO 15
	);
END cronometro;

-- Design Ports Information
-- sec[0]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sec[1]	=>  Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sec[2]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sec[3]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[0]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[1]	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[2]	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- min[3]	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rst	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_sec : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_min : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1|fim~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i0|clkout_aux~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i0|count0|fim~regout\ : std_logic;
SIGNAL \i0|count0|Equal0~0_combout\ : std_logic;
SIGNAL \i0|count0|temp~0_combout\ : std_logic;
SIGNAL \i0|count0|temp~1_combout\ : std_logic;
SIGNAL \i0|count0|temp[2]~2_combout\ : std_logic;
SIGNAL \i0|count0|temp[0]~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \i0|clkout_aux~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \i0|clkout_aux~regout\ : std_logic;
SIGNAL \i0|clkout_aux~clkctrl_outclk\ : std_logic;
SIGNAL \i1|temp[1]~1_combout\ : std_logic;
SIGNAL \i1|temp[2]~2_combout\ : std_logic;
SIGNAL \i1|temp[3]~3_combout\ : std_logic;
SIGNAL \i1|temp~0_combout\ : std_logic;
SIGNAL \i1|Equal0~0_combout\ : std_logic;
SIGNAL \i1|fim~regout\ : std_logic;
SIGNAL \i1|fim~clkctrl_outclk\ : std_logic;
SIGNAL \i2|temp[1]~1_combout\ : std_logic;
SIGNAL \i2|temp[2]~2_combout\ : std_logic;
SIGNAL \i2|temp[3]~3_combout\ : std_logic;
SIGNAL \i2|temp~0_combout\ : std_logic;
SIGNAL \i0|count0|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i1|temp\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2|temp\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_rst <= rst;
ww_clk <= clk;
sec <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_sec));
min <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_min));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\i1|fim~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i1|fim~regout\);

\i0|clkout_aux~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \i0|clkout_aux~regout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);

-- Location: LCFF_X34_Y1_N9
\i0|count0|fim\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i0|count0|Equal0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|count0|fim~regout\);

-- Location: LCFF_X34_Y1_N13
\i0|count0|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i0|count0|temp~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|count0|temp\(3));

-- Location: LCFF_X34_Y1_N15
\i0|count0|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i0|count0|temp~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|count0|temp\(1));

-- Location: LCFF_X34_Y1_N17
\i0|count0|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i0|count0|temp[2]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|count0|temp\(2));

-- Location: LCFF_X34_Y1_N19
\i0|count0|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i0|count0|temp[0]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|count0|temp\(0));

-- Location: LCCOMB_X34_Y1_N8
\i0|count0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|count0|Equal0~0_combout\ = (\i0|count0|temp\(3) & (\i0|count0|temp\(1) & (!\i0|count0|temp\(2) & !\i0|count0|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|count0|temp\(3),
	datab => \i0|count0|temp\(1),
	datac => \i0|count0|temp\(2),
	datad => \i0|count0|temp\(0),
	combout => \i0|count0|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y1_N12
\i0|count0|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|count0|temp~0_combout\ = (\i0|count0|temp\(2) & (\i0|count0|temp\(3) $ (((\i0|count0|temp\(1) & \i0|count0|temp\(0)))))) # (!\i0|count0|temp\(2) & (\i0|count0|temp\(3) & ((\i0|count0|temp\(0)) # (!\i0|count0|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|count0|temp\(2),
	datab => \i0|count0|temp\(1),
	datac => \i0|count0|temp\(3),
	datad => \i0|count0|temp\(0),
	combout => \i0|count0|temp~0_combout\);

-- Location: LCCOMB_X34_Y1_N14
\i0|count0|temp~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|count0|temp~1_combout\ = (\i0|count0|temp\(0) & (((!\i0|count0|temp\(1))))) # (!\i0|count0|temp\(0) & (\i0|count0|temp\(1) & ((\i0|count0|temp\(2)) # (!\i0|count0|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i0|count0|temp\(2),
	datab => \i0|count0|temp\(0),
	datac => \i0|count0|temp\(1),
	datad => \i0|count0|temp\(3),
	combout => \i0|count0|temp~1_combout\);

-- Location: LCCOMB_X34_Y1_N16
\i0|count0|temp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|count0|temp[2]~2_combout\ = \i0|count0|temp\(2) $ (((\i0|count0|temp\(1) & \i0|count0|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i0|count0|temp\(1),
	datac => \i0|count0|temp\(2),
	datad => \i0|count0|temp\(0),
	combout => \i0|count0|temp[2]~2_combout\);

-- Location: LCCOMB_X34_Y1_N18
\i0|count0|temp[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|count0|temp[0]~3_combout\ = !\i0|count0|temp\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i0|count0|temp\(0),
	combout => \i0|count0|temp[0]~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X34_Y1_N26
\i0|clkout_aux~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i0|clkout_aux~0_combout\ = !\i0|clkout_aux~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i0|clkout_aux~regout\,
	combout => \i0|clkout_aux~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G2
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X34_Y1_N27
\i0|clkout_aux\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|count0|fim~regout\,
	datain => \i0|clkout_aux~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i0|clkout_aux~regout\);

-- Location: CLKCTRL_G14
\i0|clkout_aux~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i0|clkout_aux~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i0|clkout_aux~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y1_N30
\i1|temp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|temp[1]~1_combout\ = \i1|temp\(1) $ (\i1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|temp\(1),
	datad => \i1|temp\(0),
	combout => \i1|temp[1]~1_combout\);

-- Location: LCFF_X32_Y1_N31
\i1|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|clkout_aux~clkctrl_outclk\,
	datain => \i1|temp[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|temp\(1));

-- Location: LCCOMB_X32_Y1_N22
\i1|temp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|temp[2]~2_combout\ = \i1|temp\(2) $ (((\i1|temp\(1) & \i1|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|temp\(1),
	datac => \i1|temp\(2),
	datad => \i1|temp\(0),
	combout => \i1|temp[2]~2_combout\);

-- Location: LCFF_X32_Y1_N23
\i1|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|clkout_aux~clkctrl_outclk\,
	datain => \i1|temp[2]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|temp\(2));

-- Location: LCCOMB_X32_Y1_N4
\i1|temp[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|temp[3]~3_combout\ = \i1|temp\(3) $ (((\i1|temp\(0) & (\i1|temp\(1) & \i1|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|temp\(0),
	datab => \i1|temp\(1),
	datac => \i1|temp\(3),
	datad => \i1|temp\(2),
	combout => \i1|temp[3]~3_combout\);

-- Location: LCFF_X32_Y1_N5
\i1|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|clkout_aux~clkctrl_outclk\,
	datain => \i1|temp[3]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|temp\(3));

-- Location: LCCOMB_X32_Y1_N26
\i1|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|temp~0_combout\ = ((\i1|temp\(1) & (\i1|temp\(3) & \i1|temp\(2)))) # (!\i1|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|temp\(1),
	datab => \i1|temp\(3),
	datac => \i1|temp\(0),
	datad => \i1|temp\(2),
	combout => \i1|temp~0_combout\);

-- Location: LCFF_X32_Y1_N27
\i1|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|clkout_aux~clkctrl_outclk\,
	datain => \i1|temp~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|temp\(0));

-- Location: LCCOMB_X32_Y1_N28
\i1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|Equal0~0_combout\ = (\i1|temp\(1) & (\i1|temp\(0) & (\i1|temp\(3) & \i1|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|temp\(1),
	datab => \i1|temp\(0),
	datac => \i1|temp\(3),
	datad => \i1|temp\(2),
	combout => \i1|Equal0~0_combout\);

-- Location: LCFF_X32_Y1_N29
\i1|fim\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i0|clkout_aux~clkctrl_outclk\,
	datain => \i1|Equal0~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|fim~regout\);

-- Location: CLKCTRL_G15
\i1|fim~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i1|fim~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i1|fim~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y31_N30
\i2|temp[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|temp[1]~1_combout\ = \i2|temp\(1) $ (\i2|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2|temp\(1),
	datad => \i2|temp\(0),
	combout => \i2|temp[1]~1_combout\);

-- Location: LCFF_X1_Y31_N31
\i2|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i1|fim~clkctrl_outclk\,
	datain => \i2|temp[1]~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|temp\(1));

-- Location: LCCOMB_X1_Y31_N28
\i2|temp[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|temp[2]~2_combout\ = \i2|temp\(2) $ (((\i2|temp\(0) & \i2|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|temp\(0),
	datab => \i2|temp\(1),
	datac => \i2|temp\(2),
	combout => \i2|temp[2]~2_combout\);

-- Location: LCFF_X1_Y31_N29
\i2|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i1|fim~clkctrl_outclk\,
	datain => \i2|temp[2]~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|temp\(2));

-- Location: LCCOMB_X1_Y31_N18
\i2|temp[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|temp[3]~3_combout\ = \i2|temp\(3) $ (((\i2|temp\(0) & (\i2|temp\(1) & \i2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|temp\(0),
	datab => \i2|temp\(1),
	datac => \i2|temp\(3),
	datad => \i2|temp\(2),
	combout => \i2|temp[3]~3_combout\);

-- Location: LCFF_X1_Y31_N19
\i2|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i1|fim~clkctrl_outclk\,
	datain => \i2|temp[3]~3_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|temp\(3));

-- Location: LCCOMB_X1_Y31_N12
\i2|temp~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|temp~0_combout\ = ((\i2|temp\(1) & (\i2|temp\(3) & \i2|temp\(2)))) # (!\i2|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|temp\(1),
	datab => \i2|temp\(3),
	datac => \i2|temp\(0),
	datad => \i2|temp\(2),
	combout => \i2|temp~0_combout\);

-- Location: LCFF_X1_Y31_N13
\i2|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \i1|fim~clkctrl_outclk\,
	datain => \i2|temp~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|temp\(0));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sec[0]~I\ : cycloneii_io
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
	datain => \i1|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sec(0));

-- Location: PIN_AE13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sec[1]~I\ : cycloneii_io
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
	datain => \i1|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sec(1));

-- Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sec[2]~I\ : cycloneii_io
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
	datain => \i1|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sec(2));

-- Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sec[3]~I\ : cycloneii_io
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
	datain => \i1|temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sec(3));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[0]~I\ : cycloneii_io
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
	datain => \i2|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(0));

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[1]~I\ : cycloneii_io
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
	datain => \i2|temp\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(1));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[2]~I\ : cycloneii_io
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
	datain => \i2|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(2));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\min[3]~I\ : cycloneii_io
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
	datain => \i2|temp\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_min(3));
END structure;


