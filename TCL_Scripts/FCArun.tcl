set_fml_appmode COV

set design seq_detector
#set_fml_var fml_aep_unique_name
read_file -top seq_detector -format sverilog -sva -vcs {/u/jaswanth/Formal_P4/FPV/design/code.sv +define+ASSERTIONS} -cov all

create_clock clk -period 100
create_reset rst -sense high

# Running a reset simulation
sim_run -stable
sim_save_reset

