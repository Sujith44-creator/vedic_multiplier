read_libs --ADD YOUR PATH -- slow.lib
read_hdl vedic_2x2.v
elaborate
read_sdc vedic_2x2_input_constraints.sdc
set_db syn_generic_effort medium
syn_generic
set_db syn_map_effort medium
syn_map
set_db syn_opt_effort medium
syn_opt
report_timing > vedic_2x2_timing.rep
report_area > vedic_2x2_area.rep
report_power >vedic_2x2_power.rep
report_gate > vedic_2x2_gate.rep
write_hdl > vedic_2x2_netlist.v
write_sdc > vedic_2x2_constraints_output.sdc
gui_show
