library verilog;
use verilog.vl_types.all;
entity maqestados_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        reset           : in     vl_logic;
        x               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end maqestados_vlg_sample_tst;
