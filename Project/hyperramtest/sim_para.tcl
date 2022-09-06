lappend auto_path "C:/lscc/diamond/3.5/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {hyperramtest}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project}
set ::bali::simulation::Para(FILELIST) {"C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/clk_div_2.vhd" "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram.vhd" "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/Project/hyperram_tb.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_ecp5u}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {hyperram_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
