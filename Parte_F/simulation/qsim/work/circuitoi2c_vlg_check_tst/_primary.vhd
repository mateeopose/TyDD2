library verilog;
use verilog.vl_types.all;
entity circuitoi2c_vlg_check_tst is
    port(
        ackout          : in     vl_logic;
        finndato        : in     vl_logic;
        finndir         : in     vl_logic;
        habdat          : in     vl_logic;
        habdir          : in     vl_logic;
        sdaaa           : in     vl_logic;
        soooy           : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end circuitoi2c_vlg_check_tst;
