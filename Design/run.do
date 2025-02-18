vlib work

vlog -lint p4.sv	+define+ASSERTIONS +acc	-sv
vlog -lint p4tb.sv	+acc	-sv

vsim work.top

add wave -r \*

run -all