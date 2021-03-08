onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /ex7_tb/CLK
add wave -noupdate /ex7_tb/D
add wave -noupdate /ex7_tb/Q
add wave -noupdate /ex7_tb/Qn
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1626806 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {802 ns} {1642 ns}
