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

-- DATE "10/23/2025 16:25:20"

-- 
-- Device: Altera EP3C120F780C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	multi2sinsigno IS
    PORT (
	Out0 : OUT std_logic;
	a0 : IN std_logic;
	b0 : IN std_logic;
	Out1 : OUT std_logic;
	b1 : IN std_logic;
	a1 : IN std_logic;
	Cin : IN std_logic;
	Out3 : OUT std_logic;
	Out2 : OUT std_logic
	);
END multi2sinsigno;

-- Design Ports Information
-- Out0	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out1	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out3	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Out2	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a0	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b0	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b1	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a1	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF multi2sinsigno IS
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
SIGNAL ww_a0 : std_logic;
SIGNAL ww_b0 : std_logic;
SIGNAL ww_Out1 : std_logic;
SIGNAL ww_b1 : std_logic;
SIGNAL ww_a1 : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_Out3 : std_logic;
SIGNAL ww_Out2 : std_logic;
SIGNAL \Out0~output_o\ : std_logic;
SIGNAL \Out1~output_o\ : std_logic;
SIGNAL \Out3~output_o\ : std_logic;
SIGNAL \Out2~output_o\ : std_logic;
SIGNAL \a0~input_o\ : std_logic;
SIGNAL \b0~input_o\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \a1~input_o\ : std_logic;
SIGNAL \inst4~combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \b1~input_o\ : std_logic;
SIGNAL \inst|Sum~combout\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst1|Cout~0_combout\ : std_logic;
SIGNAL \inst|Cout~0_combout\ : std_logic;
SIGNAL \inst1|Sum~2_combout\ : std_logic;

BEGIN

Out0 <= ww_Out0;
ww_a0 <= a0;
ww_b0 <= b0;
Out1 <= ww_Out1;
ww_b1 <= b1;
ww_a1 <= a1;
ww_Cin <= Cin;
Out3 <= ww_Out3;
Out2 <= ww_Out2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X83_Y0_N16
\Out0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => \Out0~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\Out1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Sum~combout\,
	devoe => ww_devoe,
	o => \Out1~output_o\);

-- Location: IOOBUF_X74_Y0_N23
\Out3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Cout~0_combout\,
	devoe => ww_devoe,
	o => \Out3~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\Out2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|Sum~2_combout\,
	devoe => ww_devoe,
	o => \Out2~output_o\);

-- Location: IOIBUF_X56_Y0_N22
\a0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a0,
	o => \a0~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\b0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b0,
	o => \b0~input_o\);

-- Location: LCCOMB_X75_Y1_N24
inst2 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2~combout\ = (\a0~input_o\ & \b0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a0~input_o\,
	datad => \b0~input_o\,
	combout => \inst2~combout\);

-- Location: IOIBUF_X87_Y0_N15
\a1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a1,
	o => \a1~input_o\);

-- Location: LCCOMB_X75_Y1_N12
inst4 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4~combout\ = (\a1~input_o\ & \b0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a1~input_o\,
	datad => \b0~input_o\,
	combout => \inst4~combout\);

-- Location: IOIBUF_X81_Y0_N22
\Cin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\b1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b1,
	o => \b1~input_o\);

-- Location: LCCOMB_X75_Y1_N28
\inst|Sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Sum~combout\ = \inst4~combout\ $ (\Cin~input_o\ $ (((\a0~input_o\ & \b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~combout\,
	datab => \a0~input_o\,
	datac => \Cin~input_o\,
	datad => \b1~input_o\,
	combout => \inst|Sum~combout\);

-- Location: LCCOMB_X75_Y1_N10
inst5 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5~combout\ = (\b1~input_o\ & \a0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \a0~input_o\,
	combout => \inst5~combout\);

-- Location: LCCOMB_X75_Y1_N6
inst3 : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\b1~input_o\ & \a1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b1~input_o\,
	datac => \a1~input_o\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X75_Y1_N16
\inst1|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Cout~0_combout\ = (\inst5~combout\ & ((\Cin~input_o\) # ((\inst4~combout\ & \inst3~combout\)))) # (!\inst5~combout\ & (\Cin~input_o\ & ((\inst4~combout\) # (\inst3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \inst4~combout\,
	datac => \Cin~input_o\,
	datad => \inst3~combout\,
	combout => \inst1|Cout~0_combout\);

-- Location: LCCOMB_X75_Y1_N2
\inst|Cout~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Cout~0_combout\ = (\inst5~combout\ & ((\Cin~input_o\) # ((\a1~input_o\ & \b0~input_o\)))) # (!\inst5~combout\ & (\a1~input_o\ & (\Cin~input_o\ & \b0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5~combout\,
	datab => \a1~input_o\,
	datac => \Cin~input_o\,
	datad => \b0~input_o\,
	combout => \inst|Cout~0_combout\);

-- Location: LCCOMB_X75_Y1_N22
\inst1|Sum~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Sum~2_combout\ = \Cin~input_o\ $ (\inst|Cout~0_combout\ $ (((\a1~input_o\ & \b1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Cin~input_o\,
	datab => \inst|Cout~0_combout\,
	datac => \a1~input_o\,
	datad => \b1~input_o\,
	combout => \inst1|Sum~2_combout\);

ww_Out0 <= \Out0~output_o\;

ww_Out1 <= \Out1~output_o\;

ww_Out3 <= \Out3~output_o\;

ww_Out2 <= \Out2~output_o\;
END structure;


