set_db init_lib_search_path /home/install/FOUNDRY/digital/45nm/LIBS/lib/max     
set_db lef_library /home/install/FOUNDRY/digital/45nm/LIBS/lef/gsclib045.fixed.lef

set_db library  slow.lib
    
read_hdl {./mux8_1.v}

elaborate

read_sdc ./mux8_1_sdc.sdc

syn_generic
syn_map
syn_opt

write_hdl > mux8_1_netlist.v
write_sdc  > mux8_1_constraint.sdc
   
gui_show

report timing > mux8_1_timing.rpt
report power > mux8_1_power.rpt
report area > mux8_1_cell.rpt
report gates > mux8_1_gates.rpt
