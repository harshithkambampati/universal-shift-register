###############################################################################
# Created by write_sdc
###############################################################################
current_design u_s_r
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk -period 10.0000 [get_ports {clk}]
set_clock_uncertainty 0.5000 clk
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {D[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {D[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {D[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {D[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {D[2]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {D[2]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {D[3]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {D[3]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {S_in}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {S_in}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {mode[0]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {mode[0]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {mode[1]}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {mode[1]}]
set_input_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {rst}]
set_input_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {rst}]
set_output_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {Q[0]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {Q[0]}]
set_output_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {Q[1]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {Q[1]}]
set_output_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {Q[2]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {Q[2]}]
set_output_delay 0.5000 -clock [get_clocks {clk}] -min -add_delay [get_ports {Q[3]}]
set_output_delay 2.0000 -clock [get_clocks {clk}] -max -add_delay [get_ports {Q[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0100 [get_ports {Q[3]}]
set_load -pin_load 0.0100 [get_ports {Q[2]}]
set_load -pin_load 0.0100 [get_ports {Q[1]}]
set_load -pin_load 0.0100 [get_ports {Q[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {S_in}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clk}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {rst}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mode[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {mode[0]}]
###############################################################################
# Design Rules
###############################################################################
