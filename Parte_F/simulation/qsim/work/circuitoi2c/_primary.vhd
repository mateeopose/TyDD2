library verilog;
use verilog.vl_types.all;
entity circuitoi2c is
    port(
        habdir          : out    vl_logic;
        pin_name1       : in     vl_logic;
        clock           : in     vl_logic;
        sda             : in     vl_logic;
        habdat          : out    vl_logic;
        ackout          : out    vl_logic;
        sdaaa           : out    vl_logic;
        finndir         : out    vl_logic;
        finndato        : out    vl_logic;
        soooy           : out    vl_logic
    );
end circuitoi2c;
