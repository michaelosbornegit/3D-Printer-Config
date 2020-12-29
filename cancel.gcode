G91                               ; Set relative positioning
G1 Z20                            ; Move hotend away from part by 20mm
M84                               ; Disable motors
{% snippet 'disable_hotends' %}   ; Disable hotend heater
{% snippet 'disable_bed' %}       ; Disable bed header
M106 S0                           ; Disable fan
G90                               ; Set back to absolute positioning