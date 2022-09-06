setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest/clktest.adf"]} { 
	design create clktest "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject"
  set newDesign 1
}
design open "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest"
cd "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_ecp5u
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clk_div_2.vhd"
addfile "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest.vhd"
vlib "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clk_div_2.vhd"
vcom -dbg -work work "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest.vhd"
entity Tb_clock_divider
vsim  +access +r Tb_clock_divider   -PL pmi_work -L ovi_ecp5u
add wave *
run 1000ns
