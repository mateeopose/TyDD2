library verilog;
use verilog.vl_types.all;
entity comparador is
    port(
        direccion       : in     vl_logic_vector(6 downto 0);
        direccion2      : in     vl_logic_vector(6 downto 0);
        soy             : out    vl_logic
    );
end comparador;
