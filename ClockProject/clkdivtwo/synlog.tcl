source "C:/Users/Damian/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
run_tcl -fg C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clkdivtwo/launch_synplify.tcl
project -run  
set_option -num_startend_points 5
set_option -reporting_margin -1.0
set_option -reporting_filename clkdivtwo_syn.ta
set_option -reporting_output_srm 0
set_option -reporting_margin -1.0
project -run timing 
project -save C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clkdivtwo/clkdivtwo_syn.prj 
project -close C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clkdivtwo/clkdivtwo_syn.prj
