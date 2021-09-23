; This definitely could be simplified and some commands aren't necessary (relative/absolute could be simplified)
; but this works.

G91            ; Set to relative positioning mode
M83            ; Set E relative
G1 E20 F200    ; Extrude 20mm at 200mm/m to prime hotend
G1 Z20         ; Move Z up 20 to give time to grab extruded filament
G1 Z-60        ; Return to original position on part
M82            ; Set E absolute
G90            ; Set absolute positioning mode
G92 E{{ pause_position.e }}  ; reset E to value before pause