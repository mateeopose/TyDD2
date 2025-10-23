library verilog;
use verilog.vl_types.all;
entity multi2sinsigno is
    port(
        Out0            : out    vl_logic;
        a0              : in     vl_logic;
        b0              : in     vl_logic;
        Out1            : out    vl_logic;
        b1              : in     vl_logic;
        a1              : in     vl_logic;
        Cin             : in     vl_logic;
        Out3            : out    vl_logic;
        Out2            : out    vl_logic
    );
end multi2sinsigno;
