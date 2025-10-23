library ieee;
use ieee.std_logic_1164.all;

entity TB_Sumador_Completo is
end TB_Sumador_Completo;

architecture comportamiento of TB_Sumador_Completo is
    component Sumador_Completo
        port(
            A    : in  std_logic;
            B    : in  std_logic;
            Cin  : in  std_logic;
            Cout : out std_logic;
            Sum  : out std_logic
        );
    end component;

    signal A, B, Cin  : std_logic := '0';
    signal Sum, Cout  : std_logic;
begin
    uut: Sumador_Completo
        port map (
            A    => A,
            B    => B,
            Cin  => Cin,
            Cout => Cout,
            Sum  => Sum
        );

    stim_proc: process
    begin
        A <= '0'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; Cin <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; Cin <= '1'; wait for 10 ns;
        wait;
    end process;
end comportamiento;
