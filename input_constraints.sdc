# Define a clock (assuming the design is synchronous; modify if not)
create_clock -name clk -period 10.0 [get_ports clk]

# Set input delays (time from external source to inputs)
# Assuming input delay of 1 ns relative to clock
set_input_delay 1.0 -clock clk [get_ports A[*]]
set_input_delay 1.0 -clock clk [get_ports B[*]]

# Set output delays (time required for outputs to be valid)
# Assuming output delay of 1 ns relative to clock
set_output_delay 1.0 -clock clk [get_ports P[*]]

# Optional: Set driving cell and load (replace with standard cell names from your .lib)
# set_driving_cell -lib_cell INVX1 [get_ports A[*]]
# set_driving_cell -lib_cell INVX1 [get_ports B[*]]
# set_load 0.05 [get_ports P[*]]
