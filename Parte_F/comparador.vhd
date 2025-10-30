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
   
BEGIN
	soy <= '1' when direccion = direccion2 else '0';

END BEHAVIOR;