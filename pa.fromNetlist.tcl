
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name ddr_sdram -dir "D:/Google Drive/Projects/FPGA/ddr_sdram/planAhead_run_5" -part xc6slx9csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/Google Drive/Projects/FPGA/ddr_sdram/ddr_sdram.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Google Drive/Projects/FPGA/ddr_sdram} {ipcore_dir} }
set_property target_constrs_file "ddr_sdram.ucf" [current_fileset -constrset]
add_files [list {ddr_sdram.ucf}] -fileset [get_property constrset [current_run]]
link_design
