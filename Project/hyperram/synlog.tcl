source "C:/Users/Damian/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
run_tcl -fg C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram/launch_synplify.tcl
add_file ../../../../../../../modeltech64_2020.4/examples/work/_lib.qdb
add_file ../../../../../../../modeltech64_2020.4/examples/work/_lib1_0.qdb
add_file ../../../../../../../modeltech64_2020.4/examples/work/_lib1_0.qpg
add_file ../../../../../../../modeltech64_2020.4/examples/work/_lib1_0.qtl
project -run  
project -run  
project -run  
launch_system_designer -gui
project -close C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram/hyperram_syn.prj
