
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Mojo-Base -dir "/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/syn/planAhead_run_1" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/syn/mojo_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/syn} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/src/mojo.ucf" [current_fileset -constrset]
add_files [list {/home/ethan/Dropbox/Code/FPGA/FPGA-PWM/src/mojo.ucf}] -fileset [get_property constrset [current_run]]
link_design
