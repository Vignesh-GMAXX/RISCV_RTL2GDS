set_clock_latency -source -early -min  0.4 [get_clocks {clk_pad}]
set_clock_latency -source -early -max  0.8 [get_clocks {clk_pad}]
set_clock_latency -source -late -min  0.5 [get_clocks {clk_pad}]
set_clock_latency -source -late -max  1 [get_clocks {clk_pad}]
