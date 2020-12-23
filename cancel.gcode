G1 Z40                            ; Move hotend away from part by 40mm
M84                               ; Disable motors
{% snippet 'disable_hotends' %}   ; Disable hotend heater
{% snippet 'disable_bed' %}       ; Disable bed header
M106 S0                           ; Disable fan