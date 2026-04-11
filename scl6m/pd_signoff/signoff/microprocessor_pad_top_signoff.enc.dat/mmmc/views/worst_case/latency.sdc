set_clock_latency -source -early -min  0.4 [get_clocks {clk_pad}]
set_clock_latency -source -early -max  0.8 [get_clocks {clk_pad}]
set_clock_latency -source -late -min  0.5 [get_clocks {clk_pad}]
set_clock_latency -source -late -max  1 [get_clocks {clk_pad}]
set_clock_latency -source -early -min -rise  -1.42808 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -early -min -fall  -1.73873 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -early -max -rise  -1.02808 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -early -max -fall  -1.33873 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -late -min -rise  -1.32808 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -late -min -fall  -1.63873 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -late -max -rise  -0.828077 [get_ports {clk_pad}] -clock clk_pad 
set_clock_latency -source -late -max -fall  -1.13873 [get_ports {clk_pad}] -clock clk_pad 
