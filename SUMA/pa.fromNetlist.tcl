
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name SUMA -dir "E:/SUMA/SUMA/planAhead_run_2" -part xc3s200ft256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/SUMA/SUMA/SUMA1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/SUMA/SUMA} }
set_property target_constrs_file "SUMA1.ucf" [current_fileset -constrset]
add_files [list {SUMA1.ucf}] -fileset [get_property constrset [current_run]]
link_design
