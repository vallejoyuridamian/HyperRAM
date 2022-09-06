lappend auto_path "C:/lscc/diamond/3.5/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {clksim}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject}
set ::bali::simulation::Para(FILELIST) {"C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clk_div_2.vhd" "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ecp5u}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {Tb_clock_divider}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
