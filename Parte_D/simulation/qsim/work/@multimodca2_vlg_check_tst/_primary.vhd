library verilog;
use verilog.vl_types.all;
entity Multimodca2_vlg_check_tst is
    port(
        Out0_mod        : in     vl_logic;
        Out0_signo      : in     vl_logic;
        Out1_mod        : in     vl_logic;
        Out1_signo      : in     vl_logic;
        Out2_mod        : in     vl_logic;
        Out2_signo      : in     vl_logic;
        Out3_mod        : in     vl_logic;
        Out3_signo      : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Multimodca2_vlg_check_tst;
