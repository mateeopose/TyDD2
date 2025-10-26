library verilog;
use verilog.vl_types.all;
entity Multimodca2 is
    port(
        Out0_signo      : out    vl_logic;
        b0              : in     vl_logic;
        a0              : in     vl_logic;
        Cin             : in     vl_logic;
        b1              : in     vl_logic;
        a1              : in     vl_logic;
        PRN             : in     vl_logic;
        CLK             : in     vl_logic;
        CLRN            : in     vl_logic;
        ALTO            : in     vl_logic;
        Out1_signo      : out    vl_logic;
        Out3_signo      : out    vl_logic;
        Out2_signo      : out    vl_logic;
        Out1_mod        : out    vl_logic;
        Out0_mod        : out    vl_logic;
        Out2_mod        : out    vl_logic;
        Out3_mod        : out    vl_logic
    );
end Multimodca2;
