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
-- CREATED		"Sun Oct 26 16:29:07 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Multimodca2 IS 
	PORT
	(
		b0 :  IN  STD_LOGIC;
		a0 :  IN  STD_LOGIC;
		Cin :  IN  STD_LOGIC;
		b1 :  IN  STD_LOGIC;
		a1 :  IN  STD_LOGIC;
		PRN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		CLRN :  IN  STD_LOGIC;
		ALTO :  IN  STD_LOGIC;
		Out0_signo :  OUT  STD_LOGIC;
		Out1_signo :  OUT  STD_LOGIC;
		Out3_signo :  OUT  STD_LOGIC;
		Out2_signo :  OUT  STD_LOGIC;
		Out1_mod :  OUT  STD_LOGIC;
		Out0_mod :  OUT  STD_LOGIC;
		Out2_mod :  OUT  STD_LOGIC;
		Out3_mod :  OUT  STD_LOGIC
	);
END Multimodca2;

ARCHITECTURE bdf_type OF Multimodca2 IS 

COMPONENT multi2sinsigno
	PORT(a0 : IN STD_LOGIC;
		 b0 : IN STD_LOGIC;
		 b1 : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 a1 : IN STD_LOGIC;
		 Out0 : OUT STD_LOGIC;
		 Out1 : OUT STD_LOGIC;
		 Out2 : OUT STD_LOGIC;
		 Out3 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT multi2consigno
	PORT(b0 : IN STD_LOGIC;
		 a0 : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 b1 : IN STD_LOGIC;
		 a1 : IN STD_LOGIC;
		 PRN : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 CLRN : IN STD_LOGIC;
		 ALTO : IN STD_LOGIC;
		 Out0 : OUT STD_LOGIC;
		 Out1 : OUT STD_LOGIC;
		 Out3 : OUT STD_LOGIC;
		 Out2 : OUT STD_LOGIC
	);
END COMPONENT;



BEGIN 



b2v_inst : multi2sinsigno
PORT MAP(a0 => a0,
		 b0 => b0,
		 b1 => b1,
		 Cin => Cin,
		 a1 => a1,
		 Out0 => Out0_mod,
		 Out1 => Out1_mod,
		 Out2 => Out2_mod,
		 Out3 => Out3_mod);


b2v_inst2 : multi2consigno
PORT MAP(b0 => b0,
		 a0 => a0,
		 Cin => Cin,
		 b1 => b1,
		 a1 => a1,
		 PRN => PRN,
		 CLK => CLK,
		 CLRN => CLRN,
		 ALTO => ALTO,
		 Out0 => Out0_signo,
		 Out1 => Out1_signo,
		 Out3 => Out3_signo,
		 Out2 => Out2_signo);


END bdf_type;