LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY comparador IS
    PORT (
        direccion : IN STD_LOGIC_vector(6 downto 0);
		  direccion2 : IN STD_LOGIC_vector(6 downto 0);

        soy : OUT STD_LOGIC
    );
END comparador;

ARCHITECTURE BEHAVIOR OF comparador IS
    signal : (soy6,soy5,soy4,soy3,soy2,soy1,soy0);
BEGIN
	soy6 <= direccion(6) xor direccion2(6);
	soy5 <= direccion(5) xor direccion2(5);
	soy4 <= direccion(4) xor direccion2(4);
	soy3 <= direccion(3) xor direccion2(3);
	soy2 <= direccion(2) xor direccion2(2);
	soy1 <= direccion(1) xor direccion2(1);
	soy0 <= direccion(0) xor direccion2(0);
END BEHAVIOR;