setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperramsim/hyperramsim.adf"]} { 
	design create hyperramsim "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project"
  set newDesign 1
}
design open "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperramsim"
cd "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_ecp5u
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/clk_div_2.vhd"
addfile "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram.vhd"
addfile "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram_tb.vhd"
vlib "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperramsim/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/clk_div_2.vhd"
vcom -dbg -work work "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram.vhd"
vcom -dbg -work work "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram_tb.vhd"
entity hyperram_tb
vsim  +access +r hyperram_tb   -PL pmi_work -L ovi_ecp5u
add wave *
run 1000ns
