library verilog;
use verilog.vl_types.all;
entity circuitoi2c_vlg_sample_tst is
    port(
        clock           : in     vl_logic;
        pin_name1       : in     vl_logic;
        sda             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end circuitoi2c_vlg_sample_tst;
