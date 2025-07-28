set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/LIBS/lib/max     
set_db lef_library /home/install/FOUNDRY/digital/45nm/LIBS/lef/gsclib045.fixed.lef

set_db library  slow.lib
    
read_hdl {./traffilight.v}

elaborate

read_sdc ./trafficlight_sdc.sdc

syn_generic
syn_map
syn_opt

write_hdl > counter_netlist.v
write_sdc  > output_constraint.sdc
   
gui_show

report timing > counter_timing.rpt
report power > counter_power.rpt
report area > counter_cell.rpt
report gates > counter_gates.rpt
