library verilog;
use verilog.vl_types.all;
entity i2c_vlg_check_tst is
    port(
        ackout          : in     vl_logic;
        hab_dat         : in     vl_logic;
        hab_dir         : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end i2c_vlg_check_tst;
