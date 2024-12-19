G91         ; Switch to relative positioning
G1 Z20 F600 ; Move the nozzle up 20mm at a feedrate of 600 mm/min
G90         ; Switch back to absolute positioning

; disable motors
M84

;disable all heaters
{% snippet 'disable_hotends' %}
{% snippet 'disable_bed' %}
;disable fan
M106 S0