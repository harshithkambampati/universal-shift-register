# Clock — 100 MHz
create_clock -name clk -period 10.0 [get_ports clk]

# Clock uncertainty (model PLL jitter + skew)
set_clock_uncertainty 0.5 [get_clocks clk]

# Input delays — assume inputs arrive 2 ns after rising edge
set_input_delay -clock clk -max 2.0 [get_ports {mode[*] D[*] S_in}]
set_input_delay -clock clk -min 0.5 [get_ports {mode[*] D[*] S_in}]

# If you added rst:
set_input_delay -clock clk -max 2.0 [get_ports rst]
set_input_delay -clock clk -min 0.5 [get_ports rst]

# Output delays — Q is a registered output, give 2 ns to downstream logic
set_output_delay -clock clk -max 2.0 [get_ports {Q[*]}]
set_output_delay -clock clk -min 0.5 [get_ports {Q[*]}]

# Driving cell and load (standard assumptions for an IP block)
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin Y [all_inputs]
set_load 0.01 [all_outputs]

# False paths on static signals (if any) — none here
