M862.3 P "[printer_model]" ; printer model check
M862.1 P[nozzle_diameter] ; nozzle diameter check
M115 U3.14.0 ; tell printer latest fw version
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S140 ; set extruder temp low to make sure no oozing
M140 S[first_layer_bed_temperature] ; set bed temp
M190 S[first_layer_bed_temperature] ; wait for bed temp
M109 S140 ; wait for extruder temp
G28 W ; home all without mesh bed level
G80 X{first_layer_print_min[0]} Y{first_layer_print_min[1]} W{(first_layer_print_max[0]) - (first_layer_print_min[0])} H{(first_layer_print_max[1]) - (first_layer_print_min[1])} ; mesh bed levelling
{if filament_settings_id[initial_tool]=~/.*Prusament PA11.*/}
G1 Z0.3 F720
G1 Y-3 F1000 ; go outside print area
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G92 E0
G1 X60 E9 F1000 ; intro line
G1 X100 E9 F1000 ; intro line
{else}
G1 Z0.2 F720
G1 Y-3 F1000 ; go outside print area
M104 S[first_layer_temperature] ; set extruder temp
M109 S[first_layer_temperature] ; wait for extruder temp
G92 E0
G1 X60 E9 F1000 ; intro line
G1 X100 E12.5 F1000 ; intro line
{endif}
G92 E0
M221 S{if layer_height<0.075}100{else}95{endif}