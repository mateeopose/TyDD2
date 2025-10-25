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
-- CREATED		"Sat Oct 25 11:40:30 2025"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY multi2consigno IS 
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
		Out0 :  OUT  STD_LOGIC;
		Out1 :  OUT  STD_LOGIC;
		Out3 :  OUT  STD_LOGIC;
		Out2 :  OUT  STD_LOGIC
	);
END multi2consigno;

ARCHITECTURE bdf_type OF multi2consigno IS 

COMPONENT sumador_completo
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Cin : IN STD_LOGIC;
		 Cout : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	gdfx_temp0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	DFF_inst10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	DFF_inst11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 



PROCESS(gdfx_temp0,gdfx_temp0,PRN)
BEGIN
IF (gdfx_temp0 = '0') THEN
	DFF_inst <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(gdfx_temp0)) THEN
	DFF_inst <= a0;
END IF;
END PROCESS;


PROCESS(gdfx_temp0,gdfx_temp0,PRN)
BEGIN
IF (gdfx_temp0 = '0') THEN
	DFF_inst10 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst10 <= '1';
ELSIF (RISING_EDGE(gdfx_temp0)) THEN
	DFF_inst10 <= b1;
END IF;
END PROCESS;


PROCESS(gdfx_temp0,gdfx_temp0,PRN)
BEGIN
IF (gdfx_temp0 = '0') THEN
	DFF_inst11 <= '0';
ELSIF (PRN = '0') THEN
	DFF_inst11 <= '1';
ELSIF (RISING_EDGE(gdfx_temp0)) THEN
	DFF_inst11 <= a1;
END IF;
END PROCESS;


PROCESS(gdfx_temp0)
BEGIN
IF (RISING_EDGE(gdfx_temp0)) THEN
	Out0 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(gdfx_temp0)
BEGIN
IF (RISING_EDGE(gdfx_temp0)) THEN
	Out1 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(gdfx_temp0)
BEGIN
IF (RISING_EDGE(gdfx_temp0)) THEN
	Out2 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


PROCESS(gdfx_temp0)
BEGIN
IF (RISING_EDGE(gdfx_temp0)) THEN
	Out3 <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_17 <= NOT(a0);



SYNTHESIZED_WIRE_18 <= NOT(a1);



b2v_inst18 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_4,
		 B => SYNTHESIZED_WIRE_18,
		 Sum => SYNTHESIZED_WIRE_9);


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_6 AND b1;


b2v_inst2 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_19,
		 B => SYNTHESIZED_WIRE_8,
		 Cin => Cin,
		 Cout => SYNTHESIZED_WIRE_16,
		 Sum => SYNTHESIZED_WIRE_1);


SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_9 AND DFF_inst10;


SYNTHESIZED_WIRE_12 <= b1 AND SYNTHESIZED_WIRE_18;


b2v_inst22 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_19,
		 B => SYNTHESIZED_WIRE_12,
		 Cin => SYNTHESIZED_WIRE_13,
		 Sum => SYNTHESIZED_WIRE_3);


b2v_inst3 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_19,
		 B => SYNTHESIZED_WIRE_15,
		 Cin => SYNTHESIZED_WIRE_16,
		 Cout => SYNTHESIZED_WIRE_13,
		 Sum => SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_0 <= DFF_inst AND SYNTHESIZED_WIRE_20;


SYNTHESIZED_WIRE_19 <= DFF_inst11 AND SYNTHESIZED_WIRE_20;


b2v_inst8 : sumador_completo
PORT MAP(A => SYNTHESIZED_WIRE_17,
		 B => ALTO,
		 Cin => Cin,
		 Cout => SYNTHESIZED_WIRE_4,
		 Sum => SYNTHESIZED_WIRE_6);


PROCESS(gdfx_temp0,gdfx_temp0,PRN)
BEGIN
IF (gdfx_temp0 = '0') THEN
	SYNTHESIZED_WIRE_20 <= '0';
ELSIF (PRN = '0') THEN
	SYNTHESIZED_WIRE_20 <= '1';
ELSIF (RISING_EDGE(gdfx_temp0)) THEN
	SYNTHESIZED_WIRE_20 <= b0;
END IF;
END PROCESS;

gdfx_temp0 <= CLK;
gdfx_temp0 <= CLRN;

END bdf_type;