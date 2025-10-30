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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu Oct 30 18:50:02 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY circuitoi2c IS 
	PORT
	(
		clock :  IN  STD_LOGIC;
		sda :  IN  STD_LOGIC;
		fin_dato :  IN  STD_LOGIC;
		fin_dir :  IN  STD_LOGIC;
		soy :  IN  STD_LOGIC;
		habdir :  OUT  STD_LOGIC;
		habdat :  OUT  STD_LOGIC;
		ackout :  OUT  STD_LOGIC
	);
END circuitoi2c;

ARCHITECTURE bdf_type OF circuitoi2c IS 

COMPONENT i2c
	PORT(reset : IN STD_LOGIC;
		 clock : IN STD_LOGIC;
		 sda : IN STD_LOGIC;
		 fin_dir : IN STD_LOGIC;
		 soy : IN STD_LOGIC;
		 fin_dato : IN STD_LOGIC;
		 hab_dir : OUT STD_LOGIC;
		 hab_dat : OUT STD_LOGIC;
		 ackout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_shiftreg1
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
	);
END COMPONENT;

COMPONENT comparador
	PORT(direccion6 : IN STD_LOGIC;
		 direccion5 : IN STD_LOGIC;
		 direccion4 : IN STD_LOGIC;
		 direccion3 : IN STD_LOGIC;
		 direccion2 : IN STD_LOGIC;
		 direccion1 : IN STD_LOGIC;
		 direccion0 : IN STD_LOGIC;
		 direccion26 : IN STD_LOGIC;
		 direccion25 : IN STD_LOGIC;
		 direccion24 : IN STD_LOGIC;
		 direccion23 : IN STD_LOGIC;
		 direccion22 : IN STD_LOGIC;
		 direccion21 : IN STD_LOGIC;
		 direccion20 : IN STD_LOGIC;
		 soy : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT lpm_counter3
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_counter2
	PORT(clock : IN STD_LOGIC;
		 cout : OUT STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;

COMPONENT lpm_shiftreg2
	PORT(clock : IN STD_LOGIC;
		 shiftin : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;


BEGIN 
habdir <= SYNTHESIZED_WIRE_4;
habdat <= SYNTHESIZED_WIRE_6;
SYNTHESIZED_WIRE_0 <= '1';



b2v_inst : i2c
PORT MAP(reset => SYNTHESIZED_WIRE_0,
		 clock => clock,
		 sda => sda,
		 fin_dir => SYNTHESIZED_WIRE_1,
		 soy => SYNTHESIZED_WIRE_2,
		 fin_dato => SYNTHESIZED_WIRE_3,
		 hab_dir => SYNTHESIZED_WIRE_4,
		 hab_dat => SYNTHESIZED_WIRE_6,
		 ackout => ackout);


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_4 AND clock;


b2v_inst10 : lpm_shiftreg1
PORT MAP(clock => clock,
		 shiftin => SYNTHESIZED_WIRE_23,
		 q => SYNTHESIZED_WIRE_25);


SYNTHESIZED_WIRE_21 <= clock AND SYNTHESIZED_WIRE_6;


b2v_inst3 : comparador
PORT MAP(direccion6 => SYNTHESIZED_WIRE_24,
		 direccion5 => SYNTHESIZED_WIRE_24,
		 direccion4 => SYNTHESIZED_WIRE_24,
		 direccion3 => SYNTHESIZED_WIRE_24,
		 direccion2 => SYNTHESIZED_WIRE_24,
		 direccion1 => SYNTHESIZED_WIRE_24,
		 direccion0 => SYNTHESIZED_WIRE_24,
		 direccion26 => SYNTHESIZED_WIRE_25,
		 direccion25 => SYNTHESIZED_WIRE_25,
		 direccion24 => SYNTHESIZED_WIRE_25,
		 direccion23 => SYNTHESIZED_WIRE_25,
		 direccion22 => SYNTHESIZED_WIRE_25,
		 direccion21 => SYNTHESIZED_WIRE_25,
		 direccion20 => SYNTHESIZED_WIRE_25,
		 soy => SYNTHESIZED_WIRE_2);


b2v_inst4 : lpm_counter3
PORT MAP(clock => clock,
		 cout => SYNTHESIZED_WIRE_1);


b2v_inst5 : lpm_counter2
PORT MAP(clock => clock,
		 cout => SYNTHESIZED_WIRE_3);


b2v_inst6 : lpm_shiftreg2
PORT MAP(clock => clock,
		 shiftin => SYNTHESIZED_WIRE_21);



b2v_inst9 : lpm_shiftreg1
PORT MAP(clock => clock,
		 shiftin => SYNTHESIZED_WIRE_23,
		 q => SYNTHESIZED_WIRE_24);


END bdf_type;