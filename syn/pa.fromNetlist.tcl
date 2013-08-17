
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Mojo-Base -dir "/home/ethan/fpga/Mojo-Base/syn/planAhead_run_5" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/ethan/fpga/Mojo-Base/syn/mojo_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/ethan/fpga/Mojo-Base/syn} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "/home/ethan/fpga/Mojo-Base/src/mojo.ucf" [current_fileset -constrset]
add_files [list {/home/ethan/fpga/Mojo-Base/src/mojo.ucf}] -fileset [get_property constrset [current_run]]
link_design
