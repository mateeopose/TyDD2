library ieee;
use ieee.std_logic_1164.all;

entity TB_circuitoi2c is
end TB_circuitoi2c;

architecture behavior of TB_circuitoi2c is

    component circuitoi2c
        port (
            clock     : in  std_logic;
            sda       : in  std_logic;
            fin_dato  : in  std_logic;
            fin_dir   : in  std_logic;
            soy       : in  std_logic;
            habdir    : out std_logic;
            habdat    : out std_logic;
            ackout    : out std_logic
        );
    end component;

    signal clock     : std_logic := '0';
    signal sda       : std_logic := '1';
    signal fin_dato  : std_logic := '0';
    signal fin_dir   : std_logic := '0';
    signal soy       : std_logic := '0';
    signal habdir    : std_logic;
    signal habdat    : std_logic;
    signal ackout    : std_logic;

begin

    -- Instanciación del DUT
    uut: circuitoi2c
        port map (
            clock    => clock,
            sda      => sda,
            fin_dato => fin_dato,
            fin_dir  => fin_dir,
            soy      => soy,
            habdir   => habdir,
            habdat   => habdat,
            ackout   => ackout
        );

clock_gen: process
begin
    clock <= '0';
    wait for 10 ns;
    clock <= '1';
    wait for 10 ns;
end process;


    stim_proc: process
    begin
        sda <= '1';
        fin_dato <= '0';
        fin_dir <= '0';
        soy <= '0';
        wait until rising_edge(clock);

        sda <= '0';
        wait until rising_edge(clock);

        fin_dir <= '0';
        wait until rising_edge(clock);

        fin_dir <= '1';
        soy <= '0';
        wait until rising_edge(clock);

        fin_dir <= '1';
        soy <= '1';
        wait until rising_edge(clock);

        fin_dato <= '0';
        wait until rising_edge(clock);

        fin_dato <= '1';
        wait until rising_edge(clock);

        -- Final de simulación
        report "Fin de simulación - Testbench completado correctamente" severity note;
        wait;
    end process;

end behavior;
