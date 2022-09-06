lappend auto_path "C:/lscc/diamond/3.5/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) Tb_clock_divider
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.5/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.5/cae_library/synthesis/vhdl/ecp5u.vhd"}
set ::bali::Para(FILELIST) {"C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clk_div_2.vhd=work" "C:/Users/Damian/Desktop/Upwork/CamilaFPGA/ClockProject/clktest.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
