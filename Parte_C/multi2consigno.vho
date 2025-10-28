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

-- DATE "10/27/2025 21:55:31"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multi2consigno IS
    PORT (
	Out0 : OUT std_logic;
	CLRN : IN std_logic;
	CLK : IN std_logic;
	a0 : IN std_logic;
	PRN : IN std_logic;
	b0 : IN std_logic;
	Out1 : OUT std_logic;
	a1 : IN std_logic;
	Cin : IN std_logic;
	b1 : IN std_logic;
	Out3 : OUT std_logic;
	Out2 : OUT std_logic
	);
END multi2consigno;

-- Design Ports Information
-- Out0	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out1	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out3	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PRN	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLRN	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multi2consigno IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Out0 : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_a0 : std_logic;
SIGNAL ww_PRN : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_Out1 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_Out3 : std_logic;
SIGNAL ww_Out2 : std_logic;
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Out0~output_o\ : std_logic;
SIGNAL \Out1~output_o\ : std_logic;
SIGNAL \Out3~output_o\ : std_logic;
SIGNAL \Out2~output_o\ : std_logic;
SIGNAL \PRN~input_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \inst~1_combout\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \inst12~0_combout\ : std_logic;
SIGNAL \inst12~0clkctrl_outclk\ : std_logic;
SIGNAL \inst~_emulated_q\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \inst9~_emulated_q\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst12~3_combout\ : std_logic;
SIGNAL \inst12~_emulated_q\ : std_logic;
SIGNAL \inst12~1_combout\ : std_logic;
SIGNAL \inst12~2_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \inst11~1_combout\ : std_logic;
SIGNAL \inst11~_emulated_q\ : std_logic;
SIGNAL \inst11~0_combout\ : std_logic;
SIGNAL \inst6~combout\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~_emulated_q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst19~combout\ : std_logic;
SIGNAL \inst13~1_combout\ : std_logic;
SIGNAL \inst13~_emulated_q\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst15~2_combout\ : std_logic;
SIGNAL \inst15~1_combout\ : std_logic;
SIGNAL \inst15~_emulated_q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst2|Cout~0_combout\ : std_logic;
SIGNAL \inst14~1_combout\ : std_logic;
SIGNAL \inst14~_emulated_q\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst12~0clkctrl_outclk\ : std_logic;

BEGIN

Out0 <= ww_Out0;
ww_CLRN <= CLRN;
ww_CLK <= CLK;
ww_a0 <= a0;
ww_PRN <= PRN;
ww_b0 <= b0;
Out1 <= ww_Out1;
ww_a1 <= a1;
ww_Cin <= Cin;
ww_b1 <= b1;
Out3 <= ww_Out3;
Out2 <= ww_Out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

\inst12~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst12~0_combout\);
\ALT_INV_inst12~0clkctrl_outclk\ <= NOT \inst12~0clkctrl_outclk\;

-- Location: IOIBUF_X0_Y36_N1
\CLK~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G4
\CLK~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOOBUF_X54_Y73_N2
\Out0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~2_combout\,
	devoe => ww_devoe,
	o => \Out0~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\Out1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~0_combout\,
	devoe => ww_devoe,
	o => \Out1~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\Out3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~0_combout\,
	devoe => ww_devoe,
	o => \Out3~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\Out2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~0_combout\,
	devoe => ww_devoe,
	o => \Out2~output_o\);

-- Location: IOIBUF_X60_Y73_N22
\PRN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PRN,
	o => \PRN~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: LCCOMB_X59_Y72_N6
\inst~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~1_combout\ = \inst12~1_combout\ $ (\a0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datad => \a0~input_o\,
	combout => \inst~1_combout\);

-- Location: IOIBUF_X62_Y73_N15
\CLRN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

-- Location: LCCOMB_X59_Y72_N12
\inst12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~0_combout\ = (!\CLRN~input_o\) # (!\PRN~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PRN~input_o\,
	datac => \CLRN~input_o\,
	combout => \inst12~0_combout\);

-- Location: CLKCTRL_G11
\inst12~0clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst12~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst12~0clkctrl_outclk\);

-- Location: FF_X60_Y72_N7
\inst~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~_emulated_q\);

-- Location: LCCOMB_X60_Y72_N6
\inst~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \PRN~input_o\,
	datac => \inst~_emulated_q\,
	datad => \CLRN~input_o\,
	combout => \inst~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X60_Y72_N26
\inst9~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = \inst12~1_combout\ $ (\b0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datad => \b0~input_o\,
	combout => \inst9~1_combout\);

-- Location: FF_X60_Y72_N13
\inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~_emulated_q\);

-- Location: LCCOMB_X60_Y72_N12
\inst9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst9~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \PRN~input_o\,
	datac => \inst9~_emulated_q\,
	datad => \CLRN~input_o\,
	combout => \inst9~0_combout\);

-- Location: LCCOMB_X60_Y72_N20
\inst12~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~3_combout\ = \inst12~1_combout\ $ (((\inst~0_combout\ & \inst9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \inst~0_combout\,
	datac => \inst9~0_combout\,
	combout => \inst12~3_combout\);

-- Location: FF_X60_Y72_N21
\inst12~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst12~3_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~_emulated_q\);

-- Location: LCCOMB_X59_Y72_N10
\inst12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~1_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PRN~input_o\,
	datac => \CLRN~input_o\,
	datad => \inst12~1_combout\,
	combout => \inst12~1_combout\);

-- Location: LCCOMB_X59_Y72_N8
\inst12~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12~2_combout\ = (\CLRN~input_o\ & ((\inst12~_emulated_q\ $ (\inst12~1_combout\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~_emulated_q\,
	datab => \PRN~input_o\,
	datac => \CLRN~input_o\,
	datad => \inst12~1_combout\,
	combout => \inst12~2_combout\);

-- Location: IOIBUF_X60_Y73_N1
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X58_Y73_N22
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LCCOMB_X59_Y72_N16
\inst11~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~1_combout\ = \inst12~1_combout\ $ (\a1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datad => \a1~input_o\,
	combout => \inst11~1_combout\);

-- Location: FF_X60_Y72_N5
\inst11~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst11~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~_emulated_q\);

-- Location: LCCOMB_X60_Y72_N4
\inst11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst11~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst11~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \PRN~input_o\,
	datac => \inst11~_emulated_q\,
	datad => \CLRN~input_o\,
	combout => \inst11~0_combout\);

-- Location: LCCOMB_X60_Y72_N2
inst6 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6~combout\ = (\inst11~0_combout\ & \inst9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11~0_combout\,
	datad => \inst9~0_combout\,
	combout => \inst6~combout\);

-- Location: IOIBUF_X60_Y73_N8
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X60_Y72_N24
\inst10~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = \b1~input_o\ $ (\inst12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b1~input_o\,
	datad => \inst12~1_combout\,
	combout => \inst10~1_combout\);

-- Location: FF_X60_Y72_N15
\inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~_emulated_q\);

-- Location: LCCOMB_X60_Y72_N14
\inst10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst10~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \PRN~input_o\,
	datac => \inst10~_emulated_q\,
	datad => \CLRN~input_o\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X60_Y72_N8
inst19 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst19~combout\ = (\inst10~0_combout\ & (\Cin~input_o\ $ (\inst~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datac => \inst10~0_combout\,
	datad => \inst~0_combout\,
	combout => \inst19~combout\);

-- Location: LCCOMB_X60_Y72_N18
\inst13~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~1_combout\ = \inst12~1_combout\ $ (\Cin~input_o\ $ (\inst6~combout\ $ (\inst19~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \Cin~input_o\,
	datac => \inst6~combout\,
	datad => \inst19~combout\,
	combout => \inst13~1_combout\);

-- Location: FF_X60_Y72_N19
\inst13~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst13~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~_emulated_q\);

-- Location: LCCOMB_X59_Y72_N14
\inst13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst13~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \PRN~input_o\,
	datac => \CLRN~input_o\,
	datad => \inst13~_emulated_q\,
	combout => \inst13~0_combout\);

-- Location: LCCOMB_X60_Y72_N16
inst20 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (\inst10~0_combout\ & (\inst11~0_combout\ $ (((!\Cin~input_o\ & \inst~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \inst11~0_combout\,
	datac => \inst10~0_combout\,
	datad => \inst~0_combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X60_Y72_N10
\inst15~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~2_combout\ = (\Cin~input_o\ & ((\inst6~combout\) # ((!\inst20~combout\) # (!\inst19~combout\)))) # (!\Cin~input_o\ & (((\inst19~combout\) # (\inst20~combout\)) # (!\inst6~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \inst6~combout\,
	datac => \inst19~combout\,
	datad => \inst20~combout\,
	combout => \inst15~2_combout\);

-- Location: LCCOMB_X60_Y72_N28
\inst15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~1_combout\ = \inst12~1_combout\ $ (\inst15~2_combout\ $ (((\inst11~0_combout\) # (!\b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \b1~input_o\,
	datac => \inst11~0_combout\,
	datad => \inst15~2_combout\,
	combout => \inst15~1_combout\);

-- Location: FF_X60_Y72_N29
\inst15~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~_emulated_q\);

-- Location: LCCOMB_X59_Y72_N0
\inst15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = (\CLRN~input_o\ & ((\inst12~1_combout\ $ (\inst15~_emulated_q\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \inst15~_emulated_q\,
	datac => \CLRN~input_o\,
	datad => \PRN~input_o\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X60_Y72_N0
\inst2|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|Cout~0_combout\ = (\inst10~0_combout\ & ((\inst~0_combout\ & ((\inst6~combout\))) # (!\inst~0_combout\ & (\Cin~input_o\)))) # (!\inst10~0_combout\ & (\Cin~input_o\ & ((\inst6~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \inst~0_combout\,
	datac => \inst10~0_combout\,
	datad => \inst6~combout\,
	combout => \inst2|Cout~0_combout\);

-- Location: LCCOMB_X60_Y72_N22
\inst14~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~1_combout\ = \inst12~1_combout\ $ (\inst20~combout\ $ (\inst6~combout\ $ (\inst2|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~1_combout\,
	datab => \inst20~combout\,
	datac => \inst6~combout\,
	datad => \inst2|Cout~0_combout\,
	combout => \inst14~1_combout\);

-- Location: FF_X60_Y72_N23
\inst14~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14~1_combout\,
	clrn => \ALT_INV_inst12~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~_emulated_q\);

-- Location: LCCOMB_X59_Y72_N2
\inst14~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\CLRN~input_o\ & ((\inst14~_emulated_q\ $ (\inst12~1_combout\)) # (!\PRN~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~input_o\,
	datab => \PRN~input_o\,
	datac => \inst14~_emulated_q\,
	datad => \inst12~1_combout\,
	combout => \inst14~0_combout\);

ww_Out0 <= \Out0~output_o\;

ww_Out1 <= \Out1~output_o\;

ww_Out3 <= \Out3~output_o\;

ww_Out2 <= \Out2~output_o\;
END structure;


