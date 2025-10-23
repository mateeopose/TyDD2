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
-- CREATED		"Thu Oct 23 01:15:58 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY multi2sinsigno IS 
	PORT
	(
		b0 :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		Out0 :  OUT  STD_LOGIC;
		Out1 :  OUT  STD_LOGIC;
		Out3 :  OUT  STD_LOGIC;
		Out2 :  OUT  STD_LOGIC
	);
END multi2sinsigno;

ARCHITECTURE bdf_type OF multi2sinsigno IS 

COMPONENT sumador_completo
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Cout : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



b2v_inst : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => SYNTHESIZED_WIRE_1,
		 Cin => Cin,
		 Cout => SYNTHESIZED_WIRE_3,
		 Sum => Out1);


b2v_inst1 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_2,
		 B => SYNTHESIZED_WIRE_3,
		 Cin => Cin,
		 Cout => Out3,
		 Sum => Out2);


Out0 <= a0 AND b0;


SYNTHESIZED_WIRE_2 <= b1 AND a1;


SYNTHESIZED_WIRE_1 <= a1 AND b0;


SYNTHESIZED_WIRE_0 <= a0 AND b1;


END bdf_type;