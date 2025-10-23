library verilog;
use verilog.vl_types.all;
entity multi2sinsigno_vlg_sample_tst is
    port(
        a0              : in     vl_logic;
        a1              : in     vl_logic;
        b0              : in     vl_logic;
        b1              : in     vl_logic;
        Cin             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end multi2sinsigno_vlg_sample_tst;
