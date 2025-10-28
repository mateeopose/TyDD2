library ieee;
use ieee.std_logic_1164.all;

entity TB_multi2consigno is
end TB_multi2consigno;

architecture comportamiento of TB_multi2consigno is

    -- Declaración del componente a probar
    component multi2consigno
        port(
            b0   : in  std_logic;
            a0   : in  std_logic;
            Cin  : in  std_logic;
            b1   : in  std_logic;
            a1   : in  std_logic;
            PRN  : in  std_logic;
            CLRN : in  std_logic;
            CLK  : in  std_logic;
            Out0 : out std_logic;
            Out1 : out std_logic;
            Out2 : out std_logic;
            Out3 : out std_logic
        );
    end component;

    -- Señales internas para conectar
    signal a0, a1, b0, b1 : std_logic := '0';
    signal Cin, PRN, CLRN, CLK : std_logic := '0';
    signal Out0, Out1, Out2, Out3 : std_logic;

begin
    -- Instancia del multiplicador con signo
    uut: multi2consigno
        port map(
            a0 => a0,
            a1 => a1,
            b0 => b0,
            b1 => b1,
            Cin => Cin,
            PRN => PRN,
            CLRN => CLRN,
            CLK => CLK,
            Out0 => Out0,
            Out1 => Out1,
            Out2 => Out2,
            Out3 => Out3
        );

    -- Generador de reloj
    clk_process: process
    begin
        CLK <= '0';
        wait for 10 ns;
        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Estímulos
    stim_proc: process
    begin
        -- Inicialización
        PRN <= '1';
        CLRN <= '1';
        Cin <= '0';
        wait for 20 ns;

        -- Lista de casos (a1 a0) x (b1 b0)
        -- Se prueban todas las combinaciones posibles (-2, -1, 0, 1)
        
        -- a = 00 (0)
        a1 <= '0'; a0 <= '0';
        b1 <= '0'; b0 <= '0'; wait for 40 ns; -- 0 * 0 = 0000
        b1 <= '0'; b0 <= '1'; wait for 40 ns; -- 0 * 1 = 0000
        b1 <= '1'; b0 <= '1'; wait for 40 ns; -- 0 * -1 = 0000
        b1 <= '1'; b0 <= '0'; wait for 40 ns; -- 0 * -2 = 0000

        -- a = 01 (1)
        a1 <= '0'; a0 <= '1';
        b1 <= '0'; b0 <= '0'; wait for 40 ns; -- 1 * 0 = 0000
        b1 <= '0'; b0 <= '1'; wait for 40 ns; -- 1 * 1 = 0001
        b1 <= '1'; b0 <= '1'; wait for 40 ns; -- 1 * -1 = 1111
        b1 <= '1'; b0 <= '0'; wait for 40 ns; -- 1 * -2 = 1110

        -- a = 11 (-1)
        a1 <= '1'; a0 <= '1';
        b1 <= '0'; b0 <= '1'; wait for 40 ns; -- -1 * 1 = 1111
        b1 <= '1'; b0 <= '1'; wait for 40 ns; -- -1 * -1 = 0001
        b1 <= '1'; b0 <= '0'; wait for 40 ns; -- -1 * -2 = 0010

        -- a = 10 (-2)
        a1 <= '1'; a0 <= '0';
        b1 <= '0'; b0 <= '1'; wait for 40 ns; -- -2 * 1 = 1110
        b1 <= '1'; b0 <= '1'; wait for 40 ns; -- -2 * -1 = 0010
        b1 <= '1'; b0 <= '0'; wait for 40 ns; -- -2 * -2 = 0100

        wait;
    end process;

end comportamiento;
