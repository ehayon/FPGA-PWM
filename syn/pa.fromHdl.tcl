
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Mojo-Base -dir "/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/syn/planAhead_run_2" -part xc6slx9tqg144-2
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/src/mojo.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../wave.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../src/mojo_top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top mojo_top $srcset
add_files [list {/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/src/mojo.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx9tqg144-2
