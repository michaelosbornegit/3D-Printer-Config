{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+1, max_print_height)} F720 ; Move print head up{endif}
G1 X0 Y200 F3600 ; park
{if max_layer_z < max_print_height}G1 Z{z_offset+min(max_layer_z+49, max_print_height)} F720 ; Move print head further up{endif}
G4 ; wait
M221 S100 ; reset flow
M900 K0 ; reset LA
; ooze avoidance
M83 ; relative extrusion
M106 S255 ; part fan to full to blow it away
G1 E10 F10 ; extrude some
G4 20000 ; wait 20 seconds
{if print_settings_id=~/.*(DETAIL @MK3|QUALITY @MK3|@0.25 nozzle MK3).*/}M907 E538 ; reset extruder motor current{endif}
M104 S0 ; turn off temperature
M140 S0 ; turn off heatbed
M107 ; turn off fan
M84 ; disable motors
; max_layer_z = [max_layer_z]