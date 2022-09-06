// Verilog netlist produced by program LSE :  version Diamond Version 3.5.0.102
// Netlist written on Sun Jul 03 12:39:22 2022
//
// Verilog Description of module Tb_clock_divider
//

module Tb_clock_divider (clk_in_test, reset_test, clk_out_test);   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(4[8:24])
    input clk_in_test;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(6[2:13])
    input reset_test;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(7[2:12])
    output clk_out_test;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(8[2:14])
    
    wire clk_in_test_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_in_test_c */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(6[2:13])
    
    wire reset_test_c, clk_out_test_c, GND_net, n270;
    wire [31:0]counter;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(19[8:15])
    
    wire n177;
    wire [31:0]counter_31__N_33;
    
    wire VCC_net, n39, n269, n268, n267, n266, n265, n264, n263, 
        n262, n261, n260, n259, n258, n257, n256, n255, n254, 
        n253, n252, n251, n250, n249, n248, n247, n246, n245, 
        n178, n276, n275, n274, n273, n272, n271;
    
    VLO i4 (.Z(GND_net));
    LUT4 i17_1_lut (.A(n39), .Z(n178)) /* synthesis lut_function=(!(A)) */ ;
    defparam i17_1_lut.init = 16'h5555;
    GSR GSR_INST (.GSR(n177));
    VHI sub_6_i2 (.Z(VCC_net));
    CCU2C _add_1_12_add_4_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n273), .COUT(n274), .S0(counter_31__N_33[25]), 
          .S1(counter_31__N_33[26]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_27.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_27.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_27.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n272), .COUT(n273), .S0(counter_31__N_33[23]), 
          .S1(counter_31__N_33[24]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_25.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_25.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_25.INJECT1_1 = "NO";
    LUT4 i16_1_lut (.A(reset_test_c), .Z(n177)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(7[2:12])
    defparam i16_1_lut.init = 16'h5555;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C _add_1_12_add_4_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n271), .COUT(n272), .S0(counter_31__N_33[21]), 
          .S1(counter_31__N_33[22]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_23.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_23.INJECT1_1 = "NO";
    IB reset_test_pad (.I(reset_test), .O(reset_test_c));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(7[2:12])
    IB clk_in_test_pad (.I(clk_in_test), .O(clk_in_test_c));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(6[2:13])
    CCU2C _add_1_12_add_4_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n274), .COUT(n275), .S0(counter_31__N_33[27]), 
          .S1(counter_31__N_33[28]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_29.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_29.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n275), .COUT(n276), .S0(counter_31__N_33[29]), 
          .S1(counter_31__N_33[30]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_31.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_31.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_31.INJECT1_1 = "NO";
    OB clk_out_test_pad (.I(clk_out_test_c), .O(clk_out_test));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(8[2:14])
    CCU2C _add_1_12_add_4_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n276), .S0(counter_31__N_33[31]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_33.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_33.INIT1 = 16'h0000;
    defparam _add_1_12_add_4_33.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_33.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n270), .COUT(n271), .S0(counter_31__N_33[19]), 
          .S1(counter_31__N_33[20]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_21.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n269), .COUT(n270), .S0(counter_31__N_33[17]), 
          .S1(counter_31__N_33[18]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_19.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n268), .COUT(n269), .S0(counter_31__N_33[15]), 
          .S1(counter_31__N_33[16]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_17.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n267), .COUT(n268), .S0(counter_31__N_33[13]), 
          .S1(counter_31__N_33[14]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n266), .COUT(n267), .S0(counter_31__N_33[11]), 
          .S1(counter_31__N_33[12]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n265), .COUT(n266), .S0(counter_31__N_33[9]), 
          .S1(counter_31__N_33[10]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n264), .COUT(n265), .S0(counter_31__N_33[7]), 
          .S1(counter_31__N_33[8]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n263), .COUT(n264), .S0(counter_31__N_33[5]), 
          .S1(counter_31__N_33[6]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n262), .COUT(n263), .S0(counter_31__N_33[3]), 
          .S1(counter_31__N_33[4]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n261), .COUT(n262), .S0(counter_31__N_33[1]), 
          .S1(counter_31__N_33[2]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_12_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_12_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n261), .S1(counter_31__N_33[0]));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(32[16:23])
    defparam _add_1_12_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_12_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12_add_4_1.INJECT1_1 = "NO";
    CCU2C add_18_33 (.A0(counter[31]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n260), 
          .S1(n39));
    defparam add_18_33.INIT0 = 16'h555f;
    defparam add_18_33.INIT1 = 16'h0000;
    defparam add_18_33.INJECT1_0 = "NO";
    defparam add_18_33.INJECT1_1 = "NO";
    CCU2C add_18_31 (.A0(counter[29]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[30]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n259), .COUT(n260));
    defparam add_18_31.INIT0 = 16'h5555;
    defparam add_18_31.INIT1 = 16'h5555;
    defparam add_18_31.INJECT1_0 = "NO";
    defparam add_18_31.INJECT1_1 = "NO";
    CCU2C add_18_29 (.A0(counter[27]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[28]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n258), .COUT(n259));
    defparam add_18_29.INIT0 = 16'h5555;
    defparam add_18_29.INIT1 = 16'h5555;
    defparam add_18_29.INJECT1_0 = "NO";
    defparam add_18_29.INJECT1_1 = "NO";
    CCU2C add_18_27 (.A0(counter[25]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[26]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n257), .COUT(n258));
    defparam add_18_27.INIT0 = 16'h5555;
    defparam add_18_27.INIT1 = 16'h5555;
    defparam add_18_27.INJECT1_0 = "NO";
    defparam add_18_27.INJECT1_1 = "NO";
    CCU2C add_18_25 (.A0(counter[23]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[24]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n256), .COUT(n257));
    defparam add_18_25.INIT0 = 16'h5555;
    defparam add_18_25.INIT1 = 16'h5555;
    defparam add_18_25.INJECT1_0 = "NO";
    defparam add_18_25.INJECT1_1 = "NO";
    CCU2C add_18_23 (.A0(counter[21]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[22]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n255), .COUT(n256));
    defparam add_18_23.INIT0 = 16'h5555;
    defparam add_18_23.INIT1 = 16'h5555;
    defparam add_18_23.INJECT1_0 = "NO";
    defparam add_18_23.INJECT1_1 = "NO";
    CCU2C add_18_21 (.A0(counter[19]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[20]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n254), .COUT(n255));
    defparam add_18_21.INIT0 = 16'h5555;
    defparam add_18_21.INIT1 = 16'h5555;
    defparam add_18_21.INJECT1_0 = "NO";
    defparam add_18_21.INJECT1_1 = "NO";
    CCU2C add_18_19 (.A0(counter[17]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[18]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n253), .COUT(n254));
    defparam add_18_19.INIT0 = 16'h5555;
    defparam add_18_19.INIT1 = 16'h5555;
    defparam add_18_19.INJECT1_0 = "NO";
    defparam add_18_19.INJECT1_1 = "NO";
    CCU2C add_18_17 (.A0(counter[15]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[16]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n252), .COUT(n253));
    defparam add_18_17.INIT0 = 16'h5555;
    defparam add_18_17.INIT1 = 16'h5555;
    defparam add_18_17.INJECT1_0 = "NO";
    defparam add_18_17.INJECT1_1 = "NO";
    CCU2C add_18_15 (.A0(counter[13]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[14]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n251), .COUT(n252));
    defparam add_18_15.INIT0 = 16'h5555;
    defparam add_18_15.INIT1 = 16'h5555;
    defparam add_18_15.INJECT1_0 = "NO";
    defparam add_18_15.INJECT1_1 = "NO";
    CCU2C add_18_13 (.A0(counter[11]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n250), .COUT(n251));
    defparam add_18_13.INIT0 = 16'h5555;
    defparam add_18_13.INIT1 = 16'h5555;
    defparam add_18_13.INJECT1_0 = "NO";
    defparam add_18_13.INJECT1_1 = "NO";
    CCU2C add_18_11 (.A0(counter[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n249), .COUT(n250));
    defparam add_18_11.INIT0 = 16'h5555;
    defparam add_18_11.INIT1 = 16'h5555;
    defparam add_18_11.INJECT1_0 = "NO";
    defparam add_18_11.INJECT1_1 = "NO";
    CCU2C add_18_9 (.A0(counter[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n248), .COUT(n249));
    defparam add_18_9.INIT0 = 16'h5555;
    defparam add_18_9.INIT1 = 16'h5555;
    defparam add_18_9.INJECT1_0 = "NO";
    defparam add_18_9.INJECT1_1 = "NO";
    CCU2C add_18_7 (.A0(counter[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n247), .COUT(n248));
    defparam add_18_7.INIT0 = 16'h5555;
    defparam add_18_7.INIT1 = 16'h5555;
    defparam add_18_7.INJECT1_0 = "NO";
    defparam add_18_7.INJECT1_1 = "NO";
    CCU2C add_18_5 (.A0(counter[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n246), .COUT(n247));
    defparam add_18_5.INIT0 = 16'h5555;
    defparam add_18_5.INIT1 = 16'h5555;
    defparam add_18_5.INJECT1_0 = "NO";
    defparam add_18_5.INJECT1_1 = "NO";
    CCU2C add_18_3 (.A0(counter[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n245), .COUT(n246));
    defparam add_18_3.INIT0 = 16'haaa5;
    defparam add_18_3.INIT1 = 16'h5555;
    defparam add_18_3.INJECT1_0 = "NO";
    defparam add_18_3.INJECT1_1 = "NO";
    CCU2C add_18_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(counter[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n245));
    defparam add_18_1.INIT0 = 16'h0000;
    defparam add_18_1.INIT1 = 16'haaaf;
    defparam add_18_1.INJECT1_0 = "NO";
    defparam add_18_1.INJECT1_1 = "NO";
    clk_div_2 uut (.clk_out_test_c(clk_out_test_c), .n39(n39), .counter_31__N_33({counter_31__N_33}), 
            .counter({counter}), .clk_in_test_c(clk_in_test_c), .n178(n178));   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(25[6:15])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module clk_div_2
//

module clk_div_2 (clk_out_test_c, n39, counter_31__N_33, counter, clk_in_test_c, 
            n178);
    output clk_out_test_c;
    input n39;
    input [31:0]counter_31__N_33;
    output [31:0]counter;
    input clk_in_test_c;
    input n178;
    
    wire clk_in_test_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_in_test_c */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clktest.vhd(6[2:13])
    
    wire clk_out_N_66;
    wire [31:0]counter_31__N_1;
    
    LUT4 i1_2_lut (.A(clk_out_test_c), .B(n39), .Z(clk_out_N_66)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    LUT4 i18_2_lut (.A(counter_31__N_33[0]), .B(n39), .Z(counter_31__N_1[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(28[5] 33[12])
    defparam i18_2_lut.init = 16'h8888;
    FD1S3AY counter_i0 (.D(counter_31__N_1[0]), .CK(clk_in_test_c), .Q(counter[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i0.GSR = "ENABLED";
    FD1S3IX counter_i2 (.D(counter_31__N_33[2]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i2.GSR = "ENABLED";
    FD1S3IX counter_i3 (.D(counter_31__N_33[3]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i3.GSR = "ENABLED";
    FD1S3IX counter_i4 (.D(counter_31__N_33[4]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i4.GSR = "ENABLED";
    FD1S3IX counter_i5 (.D(counter_31__N_33[5]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i5.GSR = "ENABLED";
    FD1S3IX counter_i6 (.D(counter_31__N_33[6]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i6.GSR = "ENABLED";
    FD1S3IX counter_i7 (.D(counter_31__N_33[7]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i7.GSR = "ENABLED";
    FD1S3IX counter_i8 (.D(counter_31__N_33[8]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i8.GSR = "ENABLED";
    FD1S3IX counter_i9 (.D(counter_31__N_33[9]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i9.GSR = "ENABLED";
    FD1S3IX counter_i10 (.D(counter_31__N_33[10]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i10.GSR = "ENABLED";
    FD1S3IX counter_i11 (.D(counter_31__N_33[11]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i11.GSR = "ENABLED";
    FD1S3IX counter_i12 (.D(counter_31__N_33[12]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i12.GSR = "ENABLED";
    FD1S3IX counter_i13 (.D(counter_31__N_33[13]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i13.GSR = "ENABLED";
    FD1S3IX counter_i14 (.D(counter_31__N_33[14]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i14.GSR = "ENABLED";
    FD1S3IX counter_i15 (.D(counter_31__N_33[15]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i15.GSR = "ENABLED";
    FD1S3IX counter_i16 (.D(counter_31__N_33[16]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[16])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i16.GSR = "ENABLED";
    FD1S3IX counter_i17 (.D(counter_31__N_33[17]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[17])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i17.GSR = "ENABLED";
    FD1S3IX counter_i18 (.D(counter_31__N_33[18]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[18])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i18.GSR = "ENABLED";
    FD1S3IX counter_i19 (.D(counter_31__N_33[19]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[19])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i19.GSR = "ENABLED";
    FD1S3IX counter_i20 (.D(counter_31__N_33[20]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[20])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i20.GSR = "ENABLED";
    FD1S3IX counter_i21 (.D(counter_31__N_33[21]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[21])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i21.GSR = "ENABLED";
    FD1S3IX counter_i22 (.D(counter_31__N_33[22]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[22])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i22.GSR = "ENABLED";
    FD1S3IX counter_i23 (.D(counter_31__N_33[23]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[23])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i23.GSR = "ENABLED";
    FD1S3IX counter_i24 (.D(counter_31__N_33[24]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[24])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i24.GSR = "ENABLED";
    FD1S3IX counter_i25 (.D(counter_31__N_33[25]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[25])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i25.GSR = "ENABLED";
    FD1S3IX counter_i26 (.D(counter_31__N_33[26]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[26])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i26.GSR = "ENABLED";
    FD1S3IX counter_i27 (.D(counter_31__N_33[27]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[27])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i27.GSR = "ENABLED";
    FD1S3IX counter_i28 (.D(counter_31__N_33[28]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[28])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i28.GSR = "ENABLED";
    FD1S3IX counter_i29 (.D(counter_31__N_33[29]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[29])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i29.GSR = "ENABLED";
    FD1S3IX counter_i30 (.D(counter_31__N_33[30]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[30])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i30.GSR = "ENABLED";
    FD1S3IX counter_i31 (.D(counter_31__N_33[31]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[31])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i31.GSR = "ENABLED";
    FD1S3AX clk_aux_14 (.D(clk_out_N_66), .CK(clk_in_test_c), .Q(clk_out_test_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam clk_aux_14.GSR = "ENABLED";
    FD1S3IX counter_i1 (.D(counter_31__N_33[1]), .CK(clk_in_test_c), .CD(n178), 
            .Q(counter[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=6, LSE_RCOL=15, LSE_LLINE=25, LSE_RLINE=25 */ ;   // c:/users/damian/desktop/upwork/camilafpga/clockproject/clk_div_2.vhd(24[5] 34[12])
    defparam counter_i1.GSR = "ENABLED";
    
endmodule
