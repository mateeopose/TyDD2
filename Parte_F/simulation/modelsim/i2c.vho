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

-- DATE "11/02/2025 10:43:32"

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

ENTITY 	circuitoi2c IS
    PORT (
	habdir : OUT std_logic;
	clock : IN std_logic;
	sda : IN std_logic;
	habdat : OUT std_logic;
	ackout : OUT std_logic;
	sdaaa : OUT std_logic;
	finndir : OUT std_logic;
	finndato : OUT std_logic;
	soooy : OUT std_logic
	);
END circuitoi2c;

-- Design Ports Information
-- habdir	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- habdat	=>  Location: PIN_AF27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ackout	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sdaaa	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finndir	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finndato	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- soooy	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sda	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuitoi2c IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_habdir : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_sda : std_logic;
SIGNAL ww_habdat : std_logic;
SIGNAL ww_ackout : std_logic;
SIGNAL ww_sdaaa : std_logic;
SIGNAL ww_finndir : std_logic;
SIGNAL ww_finndato : std_logic;
SIGNAL ww_soooy : std_logic;
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \habdir~output_o\ : std_logic;
SIGNAL \habdat~output_o\ : std_logic;
SIGNAL \ackout~output_o\ : std_logic;
SIGNAL \sdaaa~output_o\ : std_logic;
SIGNAL \finndir~output_o\ : std_logic;
SIGNAL \finndato~output_o\ : std_logic;
SIGNAL \soooy~output_o\ : std_logic;
SIGNAL \sda~input_o\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\ : std_logic;
SIGNAL \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\ : std_logic_vector(2 DOWNTO 0);

BEGIN

habdir <= ww_habdir;
ww_clock <= clock;
ww_sda <= sda;
habdat <= ww_habdat;
ackout <= ww_ackout;
sdaaa <= ww_sdaaa;
finndir <= ww_finndir;
finndato <= ww_finndato;
soooy <= ww_soooy;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: IOIBUF_X0_Y36_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G4
\clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOOBUF_X58_Y73_N9
\habdir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \habdir~output_o\);

-- Location: IOOBUF_X115_Y8_N23
\habdat~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \habdat~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\ackout~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ackout~output_o\);

-- Location: IOOBUF_X16_Y73_N23
\sdaaa~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sda~input_o\,
	devoe => ww_devoe,
	o => \sdaaa~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\finndir~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\,
	devoe => ww_devoe,
	o => \finndir~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\finndato~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\,
	devoe => ww_devoe,
	o => \finndato~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\soooy~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \soooy~output_o\);

-- Location: IOIBUF_X16_Y73_N1
\sda~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sda,
	o => \sda~input_o\);

-- Location: LCCOMB_X1_Y5_N18
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~1_combout\ = !\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~1_combout\);

-- Location: FF_X1_Y5_N19
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X1_Y5_N20
\inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & 
-- !\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))) # (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\);

-- Location: FF_X1_Y5_N21
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y5_N28
\inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))) # 
-- (!\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	combout => \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\);

-- Location: FF_X1_Y5_N29
\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst4|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X1_Y5_N12
\inst4|LPM_COUNTER_component|auto_generated|cout_actual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst4|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\ = (\inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst4|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst4|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\);

-- Location: LCCOMB_X2_Y5_N20
\inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & ((!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2) & (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datad => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\);

-- Location: FF_X2_Y5_N21
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2));

-- Location: LCCOMB_X2_Y5_N28
\inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\ = (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & ((!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1)) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datad => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	combout => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\);

-- Location: FF_X2_Y5_N29
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0));

-- Location: LCCOMB_X2_Y5_N10
\inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1))) # 
-- (!\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0) & (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & !\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(0),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datad => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\);

-- Location: FF_X2_Y5_N11
\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst5|LPM_COUNTER_component|auto_generated|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1));

-- Location: LCCOMB_X1_Y5_N30
\inst5|LPM_COUNTER_component|auto_generated|cout_actual~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst5|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\ = (\inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1) & \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(1),
	datac => \inst5|LPM_COUNTER_component|auto_generated|counter_reg_bit\(2),
	combout => \inst5|LPM_COUNTER_component|auto_generated|cout_actual~0_combout\);

ww_habdir <= \habdir~output_o\;

ww_habdat <= \habdat~output_o\;

ww_ackout <= \ackout~output_o\;

ww_sdaaa <= \sdaaa~output_o\;

ww_finndir <= \finndir~output_o\;

ww_finndato <= \finndato~output_o\;

ww_soooy <= \soooy~output_o\;
END structure;


