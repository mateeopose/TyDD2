library ieee;
use ieee.std_logic_1164.all;


entity TB_multi2sinsigno is
end TB_multi2sinsigno;

architecture comportamiento of TB_multi2sinsigno is
    component multi2sinsigno  --declaro como funciona el componente con sus entradas y salidas
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
    end component;

    signal a0,a1,b0,b1,Cin : std_logic := '0';
    signal Out0,Out1,Out2,Out3  : std_logic;
begin
    uut: multi2sinsigno
        port map (
		  --entradas
            a0    => a0,
            a1    => a1,
            b0  => b0,
				b1  => b1,
            Cin  => Cin,
			--salidas
            Out0 => Out0,
				Out1 => Out1,
				Out2 => Out2,
            Out3 => Out3
        );

    stim_proc: process
    begin
        a1 <= '0'; a0 <= '0'; b1 <= '0'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '0'; b0 <= '0'; Cin <= '1'; wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '0'; b0 <= '1'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '0'; b0 <= '1';Cin <= '1'; wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '1'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '1'; b0 <= '0'; Cin <= '1';wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '1'; b0 <= '1'; Cin <= '0';wait for 10 ns;
        a1 <= '0'; a0 <= '0'; b1 <= '1'; b0 <= '1'; Cin <= '1';wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '0'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '0'; b0 <= '0'; Cin <= '1'; wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '0'; b0 <= '1'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '0'; b0 <= '1';Cin <= '1'; wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '1'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '1'; b0 <= '0'; Cin <= '1';wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '1'; b0 <= '1'; Cin <= '0';wait for 10 ns;
        a1 <= '0'; a0 <= '1'; b1 <= '1'; b0 <= '1'; Cin <= '1';wait for 10 ns;
		  a1 <= '1'; a0 <= '0'; b1 <= '0'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '0'; b0 <= '0'; Cin <= '1'; wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '0'; b0 <= '1'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '0'; b0 <= '1';Cin <= '1'; wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '1'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '1'; b0 <= '0'; Cin <= '1';wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '1'; b0 <= '1'; Cin <= '0';wait for 10 ns;
        a1 <= '1'; a0 <= '0'; b1 <= '1'; b0 <= '1'; Cin <= '1';wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '0'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '0'; b0 <= '0'; Cin <= '1'; wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '0'; b0 <= '1'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '0'; b0 <= '1';Cin <= '1'; wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '1'; b0 <= '0'; Cin <= '0'; wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '1'; b0 <= '0'; Cin <= '1';wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '1'; b0 <= '1'; Cin <= '0';wait for 10 ns;
        a1 <= '1'; a0 <= '1'; b1 <= '1'; b0 <= '1'; Cin <= '1';wait for 10 ns;
        wait;
    end process;
end comportamiento;
 