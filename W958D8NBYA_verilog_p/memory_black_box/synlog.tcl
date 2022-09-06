source "C:/Users/Damian/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
run_tcl -fg C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/memory_black_box/launch_synplify.tcl
add_file ../.recovery
add_file -verilog ../Config-AC.v
add_file ../memory_black_box.ldf
add_file ../memory_black_box.lpf
add_file ../memory_black_box1.sty
add_file -verilog ../W958D8NBYA.modelsim.vp
add_file -verilog ../W958D8NBYA.nc.vp
add_file -verilog ../W958D8NBYA.vcs.vp
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/.recovery
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/memory_black_box.ldf
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/memory_black_box.lpf
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/memory_black_box1.sty
project -run  
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.nc.vp
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.vcs.vp
project -run  
text_select 91 5 103 5
project -run  
add_file -verilog ../W958D8NBYA.vcs.vp
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.modelsim.vp
project -run  
add_file -verilog -before C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.vcs.vp ../W958D8NBYA.modelsim.vp
add_file -verilog -before C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.vcs.vp ../W958D8NBYA.nc.vp
project -run  
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.nc.vp
project_file -remove C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/W958D8NBYA.vcs.vp
project -run  
project -close C:/Users/Damian/Desktop/Upwork/CamilaFPGA/W958D8NBYA_verilog_p/memory_black_box/memory_black_box_syn.prj
