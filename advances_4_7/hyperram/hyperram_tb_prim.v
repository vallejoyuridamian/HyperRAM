// Verilog netlist produced by program LSE :  version Diamond Version 3.5.0.102
// Netlist written on Mon Jul 04 20:54:55 2022
//
// Verilog Description of module hyperram_tb
//

module hyperram_tb (clk_in_test, reset_test, clk_out_test, estado_test, 
            CS_n_test, ready_test, DQ_in_dbg_test, DQ_out_dbg_test, 
            rwds_in_dbg_test, rwds_out_dbg_test);   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(4[8:19])
    input clk_in_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    input reset_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(7[3:13])
    output clk_out_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(8[3:15])
    output [2:0]estado_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(9[3:14])
    output CS_n_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(10[3:12])
    output ready_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(11[2:12])
    input [31:0]DQ_in_dbg_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    output [31:0]DQ_out_dbg_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(15[2:17])
    input rwds_in_dbg_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(16[2:18])
    output rwds_out_dbg_test;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(17[2:19])
    
    wire clk_in_test_c /* synthesis is_clock=1 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    wire clk_system_N_92 /* synthesis is_inv_clock=1 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(68[8:19])
    
    wire reset_test_c, clk_out_test_c, estado_test_c_2, estado_test_c_1, 
        estado_test_c_0, CS_n_test_c, ready_test_c, DQ_in_dbg_test_c_31, 
        DQ_in_dbg_test_c_30, DQ_in_dbg_test_c_29, DQ_in_dbg_test_c_28, 
        DQ_in_dbg_test_c_27, DQ_in_dbg_test_c_26, DQ_in_dbg_test_c_25, 
        DQ_in_dbg_test_c_24, DQ_in_dbg_test_c_23, DQ_in_dbg_test_c_22, 
        DQ_in_dbg_test_c_21, DQ_in_dbg_test_c_20, DQ_in_dbg_test_c_19, 
        DQ_in_dbg_test_c_18, DQ_in_dbg_test_c_17, DQ_in_dbg_test_c_16, 
        DQ_in_dbg_test_c_15, DQ_in_dbg_test_c_14, DQ_in_dbg_test_c_13, 
        DQ_in_dbg_test_c_12, DQ_in_dbg_test_c_11, DQ_in_dbg_test_c_10, 
        DQ_in_dbg_test_c_9, DQ_in_dbg_test_c_8, DQ_in_dbg_test_c_7, DQ_in_dbg_test_c_6, 
        DQ_in_dbg_test_c_5, DQ_in_dbg_test_c_4, DQ_in_dbg_test_c_3, DQ_in_dbg_test_c_2, 
        DQ_in_dbg_test_c_1, DQ_in_dbg_test_c_0, rwds_in_dbg_test_c, VCC_net, 
        n3314;
    wire [31:0]DQ_out_dbg_31__N_5;
    
    wire CS_n_N_621, n19, n3180, n3179, DQ_out_dbg_10__N_48, GND_net, 
        n1150, n3028, n2648, n3166;
    
    VHI i5 (.Z(VCC_net));
    OBZ DQ_out_dbg_test_pad_20 (.I(DQ_out_dbg_31__N_5[20]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[20]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    INV i2810 (.A(clk_in_test_c), .Z(clk_system_N_92));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    OBZ DQ_out_dbg_test_pad_21 (.I(DQ_out_dbg_31__N_5[21]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[21]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_22 (.I(DQ_out_dbg_31__N_5[22]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[22]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OB clk_out_test_pad (.I(clk_out_test_c), .O(clk_out_test));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(8[3:15])
    hram_interface uut (.n3166(n3166), .clk_system_N_92(clk_system_N_92), 
            .CS_n_test_c(CS_n_test_c), .reset_test_c(reset_test_c), .n2648(n2648), 
            .n3314(n3314), .DQ_out_dbg_31__N_5({DQ_out_dbg_31__N_5}), .DQ_out_dbg_10__N_48(DQ_out_dbg_10__N_48), 
            .DQ_in_dbg_test_c_31(DQ_in_dbg_test_c_31), .DQ_in_dbg_test_c_24(DQ_in_dbg_test_c_24), 
            .DQ_in_dbg_test_c_16(DQ_in_dbg_test_c_16), .DQ_in_dbg_test_c_8(DQ_in_dbg_test_c_8), 
            .DQ_in_dbg_test_c_0(DQ_in_dbg_test_c_0), .DQ_in_dbg_test_c_7(DQ_in_dbg_test_c_7), 
            .DQ_in_dbg_test_c_23(DQ_in_dbg_test_c_23), .DQ_in_dbg_test_c_15(DQ_in_dbg_test_c_15), 
            .DQ_in_dbg_test_c_2(DQ_in_dbg_test_c_2), .DQ_in_dbg_test_c_26(DQ_in_dbg_test_c_26), 
            .DQ_in_dbg_test_c_25(DQ_in_dbg_test_c_25), .DQ_in_dbg_test_c_1(DQ_in_dbg_test_c_1), 
            .DQ_in_dbg_test_c_9(DQ_in_dbg_test_c_9), .DQ_in_dbg_test_c_10(DQ_in_dbg_test_c_10), 
            .DQ_in_dbg_test_c_18(DQ_in_dbg_test_c_18), .DQ_in_dbg_test_c_17(DQ_in_dbg_test_c_17), 
            .n3180(n3180), .n3179(n3179), .estado_test_c_2(estado_test_c_2), 
            .estado_test_c_0(estado_test_c_0), .clk_out_test_c(clk_out_test_c), 
            .CS_n_N_621(CS_n_N_621), .n19(n19), .rwds_in_dbg_test_c(rwds_in_dbg_test_c), 
            .n1150(n1150), .DQ_in_dbg_test_c_29(DQ_in_dbg_test_c_29), .DQ_in_dbg_test_c_12(DQ_in_dbg_test_c_12), 
            .DQ_in_dbg_test_c_22(DQ_in_dbg_test_c_22), .DQ_in_dbg_test_c_14(DQ_in_dbg_test_c_14), 
            .DQ_in_dbg_test_c_13(DQ_in_dbg_test_c_13), .DQ_in_dbg_test_c_4(DQ_in_dbg_test_c_4), 
            .DQ_in_dbg_test_c_20(DQ_in_dbg_test_c_20), .DQ_in_dbg_test_c_21(DQ_in_dbg_test_c_21), 
            .DQ_in_dbg_test_c_30(DQ_in_dbg_test_c_30), .DQ_in_dbg_test_c_28(DQ_in_dbg_test_c_28), 
            .DQ_in_dbg_test_c_5(DQ_in_dbg_test_c_5), .DQ_in_dbg_test_c_6(DQ_in_dbg_test_c_6), 
            .DQ_in_dbg_test_c_3(DQ_in_dbg_test_c_3), .DQ_in_dbg_test_c_11(DQ_in_dbg_test_c_11), 
            .DQ_in_dbg_test_c_27(DQ_in_dbg_test_c_27), .DQ_in_dbg_test_c_19(DQ_in_dbg_test_c_19), 
            .clk_in_test_c(clk_in_test_c));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(88[7:21])
    OBZ DQ_out_dbg_test_pad_23 (.I(DQ_out_dbg_31__N_5[23]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[23]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_24 (.I(DQ_out_dbg_31__N_5[24]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[24]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_25 (.I(DQ_out_dbg_31__N_5[25]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[25]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_26 (.I(DQ_out_dbg_31__N_5[26]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[26]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_27 (.I(DQ_out_dbg_31__N_5[27]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[27]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_28 (.I(DQ_out_dbg_31__N_5[28]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[28]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_29 (.I(DQ_out_dbg_31__N_5[29]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[29]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_30 (.I(DQ_out_dbg_31__N_5[30]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[30]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_31 (.I(DQ_out_dbg_31__N_5[31]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[31]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OB ready_test_pad (.I(ready_test_c), .O(ready_test));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(11[2:12])
    OB CS_n_test_pad (.I(CS_n_test_c), .O(CS_n_test));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(10[3:12])
    OB estado_test_pad_0 (.I(estado_test_c_0), .O(estado_test[0]));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(9[3:14])
    OB estado_test_pad_1 (.I(estado_test_c_1), .O(estado_test[1]));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(9[3:14])
    OB estado_test_pad_2 (.I(estado_test_c_2), .O(estado_test[2]));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(9[3:14])
    GSR GSR_INST (.GSR(n1150));
    OBZ DQ_out_dbg_test_pad_19 (.I(DQ_out_dbg_31__N_5[19]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[19]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_18 (.I(DQ_out_dbg_31__N_5[18]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[18]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_17 (.I(DQ_out_dbg_31__N_5[17]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[17]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_16 (.I(DQ_out_dbg_31__N_5[16]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[16]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_15 (.I(DQ_out_dbg_31__N_5[15]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[15]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_14 (.I(DQ_out_dbg_31__N_5[14]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[14]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_13 (.I(DQ_out_dbg_31__N_5[13]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[13]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_12 (.I(DQ_out_dbg_31__N_5[12]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[12]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_11 (.I(DQ_out_dbg_31__N_5[11]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[11]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_10 (.I(DQ_out_dbg_31__N_5[10]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[10]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_9 (.I(DQ_out_dbg_31__N_5[9]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[9]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_8 (.I(DQ_out_dbg_31__N_5[8]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[8]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_7 (.I(DQ_out_dbg_31__N_5[7]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[7]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_6 (.I(DQ_out_dbg_31__N_5[6]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[6]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_5 (.I(DQ_out_dbg_31__N_5[5]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[5]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_4 (.I(DQ_out_dbg_31__N_5[4]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[4]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_3 (.I(DQ_out_dbg_31__N_5[3]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[3]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_2 (.I(DQ_out_dbg_31__N_5[2]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[2]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_1 (.I(DQ_out_dbg_31__N_5[1]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[1]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ DQ_out_dbg_test_pad_0 (.I(DQ_out_dbg_31__N_5[0]), .T(DQ_out_dbg_10__N_48), 
        .O(DQ_out_dbg_test[0]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(82[1] 215[13])
    OBZ rwds_out_dbg_test_pad (.I(GND_net), .T(VCC_net), .O(rwds_out_dbg_test));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(17[2:19])
    IB clk_in_test_pad (.I(clk_in_test), .O(clk_in_test_c));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    IB reset_test_pad (.I(reset_test), .O(reset_test_c));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(7[3:13])
    IB DQ_in_dbg_test_pad_31 (.I(DQ_in_dbg_test[31]), .O(DQ_in_dbg_test_c_31));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_30 (.I(DQ_in_dbg_test[30]), .O(DQ_in_dbg_test_c_30));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_29 (.I(DQ_in_dbg_test[29]), .O(DQ_in_dbg_test_c_29));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_28 (.I(DQ_in_dbg_test[28]), .O(DQ_in_dbg_test_c_28));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_27 (.I(DQ_in_dbg_test[27]), .O(DQ_in_dbg_test_c_27));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_26 (.I(DQ_in_dbg_test[26]), .O(DQ_in_dbg_test_c_26));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_25 (.I(DQ_in_dbg_test[25]), .O(DQ_in_dbg_test_c_25));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_24 (.I(DQ_in_dbg_test[24]), .O(DQ_in_dbg_test_c_24));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_23 (.I(DQ_in_dbg_test[23]), .O(DQ_in_dbg_test_c_23));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_22 (.I(DQ_in_dbg_test[22]), .O(DQ_in_dbg_test_c_22));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_21 (.I(DQ_in_dbg_test[21]), .O(DQ_in_dbg_test_c_21));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_20 (.I(DQ_in_dbg_test[20]), .O(DQ_in_dbg_test_c_20));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_19 (.I(DQ_in_dbg_test[19]), .O(DQ_in_dbg_test_c_19));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_18 (.I(DQ_in_dbg_test[18]), .O(DQ_in_dbg_test_c_18));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_17 (.I(DQ_in_dbg_test[17]), .O(DQ_in_dbg_test_c_17));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_16 (.I(DQ_in_dbg_test[16]), .O(DQ_in_dbg_test_c_16));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_15 (.I(DQ_in_dbg_test[15]), .O(DQ_in_dbg_test_c_15));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_14 (.I(DQ_in_dbg_test[14]), .O(DQ_in_dbg_test_c_14));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_13 (.I(DQ_in_dbg_test[13]), .O(DQ_in_dbg_test_c_13));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_12 (.I(DQ_in_dbg_test[12]), .O(DQ_in_dbg_test_c_12));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_11 (.I(DQ_in_dbg_test[11]), .O(DQ_in_dbg_test_c_11));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_10 (.I(DQ_in_dbg_test[10]), .O(DQ_in_dbg_test_c_10));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_9 (.I(DQ_in_dbg_test[9]), .O(DQ_in_dbg_test_c_9));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_8 (.I(DQ_in_dbg_test[8]), .O(DQ_in_dbg_test_c_8));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_7 (.I(DQ_in_dbg_test[7]), .O(DQ_in_dbg_test_c_7));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_6 (.I(DQ_in_dbg_test[6]), .O(DQ_in_dbg_test_c_6));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_5 (.I(DQ_in_dbg_test[5]), .O(DQ_in_dbg_test_c_5));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_4 (.I(DQ_in_dbg_test[4]), .O(DQ_in_dbg_test_c_4));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_3 (.I(DQ_in_dbg_test[3]), .O(DQ_in_dbg_test_c_3));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_2 (.I(DQ_in_dbg_test[2]), .O(DQ_in_dbg_test_c_2));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_1 (.I(DQ_in_dbg_test[1]), .O(DQ_in_dbg_test_c_1));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB DQ_in_dbg_test_pad_0 (.I(DQ_in_dbg_test[0]), .O(DQ_in_dbg_test_c_0));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(14[2:16])
    IB rwds_in_dbg_test_pad (.I(rwds_in_dbg_test), .O(rwds_in_dbg_test_c));   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(16[2:18])
    LUT4 i2347_4_lut (.A(CS_n_test_c), .B(CS_n_N_621), .C(n19), .D(n3166), 
         .Z(n2648)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i2347_4_lut.init = 16'hcafa;
    LUT4 estado_test_c_1_bdd_4_lut (.A(estado_test_c_1), .B(n3180), .C(n3179), 
         .D(n3314), .Z(estado_test_c_1)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+(C (D)+!C !(D)))) */ ;
    defparam estado_test_c_1_bdd_4_lut.init = 16'hab30;
    LUT4 n3029_bdd_2_lut_4_lut (.A(n3028), .B(ready_test_c), .C(n3314), 
         .D(reset_test_c), .Z(ready_test_c)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n3029_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 ready_test_c_bdd_4_lut (.A(ready_test_c), .B(n3179), .C(n3180), 
         .D(clk_out_test_c), .Z(n3028)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B (C))) */ ;
    defparam ready_test_c_bdd_4_lut.init = 16'heae8;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    
endmodule
//
// Verilog Description of module hram_interface
//

module hram_interface (n3166, clk_system_N_92, CS_n_test_c, reset_test_c, 
            n2648, n3314, DQ_out_dbg_31__N_5, DQ_out_dbg_10__N_48, DQ_in_dbg_test_c_31, 
            DQ_in_dbg_test_c_24, DQ_in_dbg_test_c_16, DQ_in_dbg_test_c_8, 
            DQ_in_dbg_test_c_0, DQ_in_dbg_test_c_7, DQ_in_dbg_test_c_23, 
            DQ_in_dbg_test_c_15, DQ_in_dbg_test_c_2, DQ_in_dbg_test_c_26, 
            DQ_in_dbg_test_c_25, DQ_in_dbg_test_c_1, DQ_in_dbg_test_c_9, 
            DQ_in_dbg_test_c_10, DQ_in_dbg_test_c_18, DQ_in_dbg_test_c_17, 
            n3180, n3179, estado_test_c_2, estado_test_c_0, clk_out_test_c, 
            CS_n_N_621, n19, rwds_in_dbg_test_c, n1150, DQ_in_dbg_test_c_29, 
            DQ_in_dbg_test_c_12, DQ_in_dbg_test_c_22, DQ_in_dbg_test_c_14, 
            DQ_in_dbg_test_c_13, DQ_in_dbg_test_c_4, DQ_in_dbg_test_c_20, 
            DQ_in_dbg_test_c_21, DQ_in_dbg_test_c_30, DQ_in_dbg_test_c_28, 
            DQ_in_dbg_test_c_5, DQ_in_dbg_test_c_6, DQ_in_dbg_test_c_3, 
            DQ_in_dbg_test_c_11, DQ_in_dbg_test_c_27, DQ_in_dbg_test_c_19, 
            clk_in_test_c);
    output n3166;
    input clk_system_N_92;
    output CS_n_test_c;
    input reset_test_c;
    input n2648;
    output n3314;
    output [31:0]DQ_out_dbg_31__N_5;
    output DQ_out_dbg_10__N_48;
    input DQ_in_dbg_test_c_31;
    input DQ_in_dbg_test_c_24;
    input DQ_in_dbg_test_c_16;
    input DQ_in_dbg_test_c_8;
    input DQ_in_dbg_test_c_0;
    input DQ_in_dbg_test_c_7;
    input DQ_in_dbg_test_c_23;
    input DQ_in_dbg_test_c_15;
    input DQ_in_dbg_test_c_2;
    input DQ_in_dbg_test_c_26;
    input DQ_in_dbg_test_c_25;
    input DQ_in_dbg_test_c_1;
    input DQ_in_dbg_test_c_9;
    input DQ_in_dbg_test_c_10;
    input DQ_in_dbg_test_c_18;
    input DQ_in_dbg_test_c_17;
    output n3180;
    output n3179;
    output estado_test_c_2;
    output estado_test_c_0;
    output clk_out_test_c;
    output CS_n_N_621;
    output n19;
    input rwds_in_dbg_test_c;
    output n1150;
    input DQ_in_dbg_test_c_29;
    input DQ_in_dbg_test_c_12;
    input DQ_in_dbg_test_c_22;
    input DQ_in_dbg_test_c_14;
    input DQ_in_dbg_test_c_13;
    input DQ_in_dbg_test_c_4;
    input DQ_in_dbg_test_c_20;
    input DQ_in_dbg_test_c_21;
    input DQ_in_dbg_test_c_30;
    input DQ_in_dbg_test_c_28;
    input DQ_in_dbg_test_c_5;
    input DQ_in_dbg_test_c_6;
    input DQ_in_dbg_test_c_3;
    input DQ_in_dbg_test_c_11;
    input DQ_in_dbg_test_c_27;
    input DQ_in_dbg_test_c_19;
    input clk_in_test_c;
    
    wire clk_system_N_92 /* synthesis is_inv_clock=1 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(68[8:19])
    wire clk_in_test_c /* synthesis is_clock=1 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    
    wire n3161;
    wire [3:0]byte_counter_3__N_163;
    
    wire n909, n806, n1141, n3149, DQ_out_dbg_31__N_239, byte_counter_3__N_171, 
        n130, byte_counter_3__N_166, n2406, n2402;
    wire [31:0]DQ_out_dbg_31__N_332;
    
    wire n877, n1030, n3148, n982, n1144, DQ_out_dbg_31__N_236, 
        n1147, n3000;
    wire [2:0]n1;
    
    wire clk_system_N_92_enable_1, n1148, n3177, n1126, DQ_out_dbg_31__N_308, 
        n1107, DQ_out_dbg_31__N_314, n1135, DQ_out_dbg_31__N_263, n1123, 
        DQ_out_dbg_31__N_287, n1017, n2997, n1029, n3147, n1094, 
        n3153, DQ_out_dbg_31__N_230, n1104, DQ_out_dbg_31__N_305, n1122, 
        n3150, n3185, n3162, state_2__N_103, n2642, DQ_out_dbg_31__N_336, 
        clk_system_N_92_enable_2, id_register_N_84, n1119, DQ_out_dbg_31__N_233, 
        byte_counter_3__N_129, n3145, n1818, n3417, n5_adj_664;
    wire [3:0]byte_counter;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(67[8:20])
    
    wire n3195, byte_counter_3__N_153, n3414, n4, n1132, DQ_out_dbg_31__N_284, 
        n3159, DQ_out_dbg_31__N_216, n1692, DQ_out_dbg_31__N_272, n1062, 
        n1061, n1057, DQ_out_dbg_31__N_242, n1033, n984, n1051, 
        n1050, n1040, n1026, n559, n3194, n3196, n1025, DQ_out_dbg_31__N_630, 
        n1116, n1115, n1096, n3399, byte_counter_3__N_179, n1018, 
        n3144, n3143, n1138, DQ_out_dbg_31__N_260, n3158, n1048, 
        n3157, DQ_out_dbg_31__N_269, n1078, n3156, DQ_out_dbg_31__N_251, 
        n1059, DQ_out_dbg_31__N_296, n1075, DQ_out_dbg_31__N_275, n3420, 
        n1058, DQ_out_dbg_31__N_510, n1129, DQ_out_dbg_31__N_311, n2444, 
        state_2__N_95, n353, id_register_N_87, n1794, n1055, byte_counter_3__N_209, 
        n990, n3426, n1072, DQ_out_dbg_31__N_299, n1085, DQ_out_dbg_31__N_278, 
        n1071, n3155, n3146, n1054, byte_counter_3__N_177, n1084, 
        n3154, n1068, DQ_out_dbg_31__N_215, n3197, n1098, DQ_out_dbg_31__N_281, 
        n1113, DQ_out_dbg_31__N_257, n1038, n3170, n1899, n3169, 
        n999, n2133, n2125, n1097, n3152, n1037, n1110, DQ_out_dbg_31__N_266, 
        n1101, DQ_out_dbg_31__N_290, n10, n1022, n978, n1100, DQ_out_dbg_31__N_246, 
        n1091, n1090, n1083, n1047, n2170, n2122, n1021, DQ_out_dbg_31__N_254, 
        n3151, n14, n10_adj_665, n3174, n3184, n2530, n1143, n1118, 
        n2131, n1067, n1080, DQ_out_dbg_31__N_227, n1093, n1140, 
        n1088, DQ_out_dbg_31__N_302, n1081, DQ_out_dbg_31__N_245, n1065, 
        DQ_out_dbg_31__N_248, n1137, n3191, n3192, DQ_out_dbg_31__N_415, 
        n2458, n3182, DQ_out_dbg_31__N_546, n14_adj_666, n10_adj_667, 
        n1112, n1045, DQ_out_dbg_31__N_317, n1034, n1042, DQ_out_dbg_31__N_293, 
        n3168, DQ_out_dbg_31__N_334, n3164, n164, n1041, n1064, 
        n1077, n1087, n1134, n1125, n1103, n1074, n1070, n1044, 
        n1106, n1128, n1131, n1109, n953, n2436, n3173, n3172, 
        n3171, n3165, n1121, n2506, DQ_out_dbg_31__N_410, n814, 
        byte_counter_3__N_184, n3160, n7, n3186, n2638, n3189, n3183, 
        n2566, n3187, n2518, byte_counter_3__N_158, n2440, n3188, 
        clk_out_N_663, n2596, n2588, n11, DQ_out_dbg_31__N_344, n22, 
        n18, n883, n20, n14_adj_668, n3198, n6_adj_669, n2339, 
        n804, n3167, n3176, n2512, n2632, n881, n2233, n2119, 
        n8;
    
    LUT4 i542_3_lut_4_lut_4_lut (.A(n3161), .B(byte_counter_3__N_163[2]), 
         .C(n3166), .D(n909), .Z(n806)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;
    defparam i542_3_lut_4_lut_4_lut.init = 16'he444;
    FD1S3DX DQ_out_dbg_i26_863_864_reset (.D(DQ_out_dbg_31__N_239), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1141)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i26_863_864_reset.GSR = "DISABLED";
    PFUMX i543 (.BLUT(n806), .ALUT(byte_counter_3__N_171), .C0(n130), 
          .Z(byte_counter_3__N_166));
    PFUMX i609 (.BLUT(n2406), .ALUT(n2402), .C0(DQ_out_dbg_31__N_332[24]), 
          .Z(n877));
    FD1S3DX byte_counter__i3_752_753_reset (.D(n982), .CK(clk_system_N_92), 
            .CD(n3148), .Q(n1030)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i3_752_753_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i27_866_867_reset (.D(DQ_out_dbg_31__N_236), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1144)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i27_866_867_reset.GSR = "DISABLED";
    FD1S3BX state_i0_i1_870_871_set (.D(n1[1]), .CK(clk_system_N_92), .PD(n3000), 
            .Q(n1147)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i1_870_871_set.GSR = "DISABLED";
    FD1P3BX CS_n_1475 (.D(n2648), .SP(clk_system_N_92_enable_1), .CK(clk_system_N_92), 
            .PD(reset_test_c), .Q(CS_n_test_c));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(159[3] 209[10])
    defparam CS_n_1475.GSR = "DISABLED";
    FD1S3DX state_i0_i1_870_871_reset (.D(n1[1]), .CK(clk_system_N_92), 
            .CD(n3177), .Q(n1148)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i1_870_871_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i3_848_849_reset (.D(DQ_out_dbg_31__N_308), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1126)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i3_848_849_reset.GSR = "DISABLED";
    FD1S3AX DQ_out_dbg_i1_829_830_reset (.D(DQ_out_dbg_31__N_314), .CK(clk_system_N_92), 
            .Q(n1107)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i1_829_830_reset.GSR = "ENABLED";
    FD1S3DX DQ_out_dbg_i18_857_858_reset (.D(DQ_out_dbg_31__N_263), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1135)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i18_857_858_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i10_845_846_reset (.D(DQ_out_dbg_31__N_287), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1123)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i10_845_846_reset.GSR = "DISABLED";
    FD1S3BX state_i0_i2_740_741_set (.D(n3314), .CK(clk_system_N_92), .PD(n2997), 
            .Q(n1017)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i2_740_741_set.GSR = "DISABLED";
    FD1S3BX byte_counter__i3_752_753_set (.D(n982), .CK(clk_system_N_92), 
            .PD(n3147), .Q(n1029)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i3_752_753_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i29_816_817_reset (.D(DQ_out_dbg_31__N_230), .CK(clk_system_N_92), 
            .CD(n3153), .Q(n1094)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i29_816_817_reset.GSR = "DISABLED";
    FD1S3AX DQ_out_dbg_i4_826_827_reset (.D(DQ_out_dbg_31__N_305), .CK(clk_system_N_92), 
            .Q(n1104)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i4_826_827_reset.GSR = "ENABLED";
    FD1S3BX DQ_out_dbg_i10_845_846_set (.D(DQ_out_dbg_31__N_287), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1122)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i10_845_846_set.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n3185), .B(n3162), .C(state_2__N_103), .D(n2642), 
         .Z(DQ_out_dbg_31__N_336)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc080;
    FD1P3DX id_register_1474 (.D(id_register_N_84), .SP(clk_system_N_92_enable_2), 
            .CK(clk_system_N_92), .CD(reset_test_c), .Q(DQ_out_dbg_31__N_332[24]));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(159[3] 209[10])
    defparam id_register_1474.GSR = "DISABLED";
    FD1S3AX DQ_out_dbg_i28_841_842_reset (.D(DQ_out_dbg_31__N_233), .CK(clk_system_N_92), 
            .Q(n1119)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i28_841_842_reset.GSR = "ENABLED";
    LUT4 byte_counter_3__N_129_I_0_1606_2_lut_rep_110_3_lut (.A(byte_counter_3__N_129), 
         .B(byte_counter_3__N_166), .C(reset_test_c), .Z(n3145)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_1606_2_lut_rep_110_3_lut.init = 16'h0808;
    LUT4 i2408_4_lut_4_lut_3_lut_4_lut (.A(byte_counter_3__N_129), .B(n1818), 
         .C(reset_test_c), .D(n3417), .Z(n3417)) /* synthesis lut_function=(!(A (B+(C))+!A !(D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2408_4_lut_4_lut_3_lut_4_lut.init = 16'h5702;
    LUT4 pwr_bdd_2_lut_2652_4_lut_then_4_lut (.A(n5_adj_664), .B(byte_counter[2]), 
         .C(byte_counter[3]), .D(byte_counter[1]), .Z(n3195)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam pwr_bdd_2_lut_2652_4_lut_then_4_lut.init = 16'h0007;
    LUT4 i2417_4_lut_4_lut_3_lut_4_lut (.A(byte_counter_3__N_129), .B(byte_counter_3__N_153), 
         .C(reset_test_c), .D(n3414), .Z(n3414)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2417_4_lut_4_lut_3_lut_4_lut.init = 16'h5d08;
    LUT4 i323_2_lut (.A(byte_counter[2]), .B(n4), .Z(byte_counter_3__N_163[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(106[21:33])
    defparam i323_2_lut.init = 16'h6666;
    FD1S3DX DQ_out_dbg_i11_854_855_reset (.D(DQ_out_dbg_31__N_284), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1132)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i11_854_855_reset.GSR = "DISABLED";
    LUT4 state_2__N_101_I_0_1_lut_rep_124_3_lut (.A(DQ_out_dbg_31__N_332[24]), 
         .B(state_2__N_103), .C(reset_test_c), .Z(n3159)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam state_2__N_101_I_0_1_lut_rep_124_3_lut.init = 16'hfbfb;
    LUT4 DQ_out_dbg_15__I_0_4_lut (.A(DQ_out_dbg_31__N_5[15]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_272)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_15__I_0_4_lut.init = 16'h0cac;
    LUT4 i786_3_lut (.A(n1062), .B(n1061), .C(n1057), .Z(DQ_out_dbg_31__N_5[15])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i786_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut (.A(DQ_out_dbg_31__N_5[25]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_242)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut.init = 16'h0808;
    FD1S3BX byte_counter__i2_756_757_set (.D(n984), .CK(clk_system_N_92), 
            .PD(n3145), .Q(n1033)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i2_756_757_set.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(byte_counter[0]), .B(byte_counter[1]), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i775_3_lut (.A(n1051), .B(n1050), .C(n1040), .Z(DQ_out_dbg_31__N_5[24])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i775_3_lut.init = 16'hcaca;
    FD1S3DX i1108_1541_748_749_reset (.D(n559), .CK(clk_system_N_92), .CD(reset_test_c), 
            .Q(n1026));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1108_1541_748_749_reset.GSR = "DISABLED";
    PFUMX i2661 (.BLUT(n3194), .ALUT(n3195), .C0(byte_counter[0]), .Z(n3196));
    FD1S3BX i1108_1541_748_749_set (.D(n559), .CK(clk_system_N_92), .PD(DQ_out_dbg_31__N_630), 
            .Q(n1025));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1108_1541_748_749_set.GSR = "DISABLED";
    LUT4 i840_3_lut (.A(n1116), .B(n1115), .C(n1096), .Z(DQ_out_dbg_31__N_5[25])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i840_3_lut.init = 16'hcaca;
    LUT4 byte_counter_3__N_129_I_0_1609_2_lut_rep_113_3_lut (.A(byte_counter_3__N_129), 
         .B(byte_counter_3__N_153), .C(reset_test_c), .Z(n3148)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_1609_2_lut_rep_113_3_lut.init = 16'ha2a2;
    LUT4 i2465_4_lut_4_lut (.A(n3399), .B(byte_counter_3__N_129), .C(byte_counter_3__N_179), 
         .D(reset_test_c), .Z(n3399)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2465_4_lut_4_lut.init = 16'h22e2;
    FD1S3DX state_i0_i2_740_741_reset (.D(n3314), .CK(clk_system_N_92), 
            .CD(n3159), .Q(n1018)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i2_740_741_reset.GSR = "DISABLED";
    LUT4 byte_counter_3__N_129_I_0_2_lut_rep_109_3_lut (.A(byte_counter_3__N_129), 
         .B(n1818), .C(reset_test_c), .Z(n3144)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_2_lut_rep_109_3_lut.init = 16'ha8a8;
    LUT4 byte_counter_3__N_129_I_0_1608_2_lut_rep_108_3_lut (.A(byte_counter_3__N_129), 
         .B(n1818), .C(reset_test_c), .Z(n3143)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_1608_2_lut_rep_108_3_lut.init = 16'h0202;
    FD1S3DX DQ_out_dbg_i19_860_861_reset (.D(DQ_out_dbg_31__N_260), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1138)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i19_860_861_reset.GSR = "DISABLED";
    LUT4 byte_counter_3__I_55_2_lut_rep_112_3_lut (.A(byte_counter_3__N_129), 
         .B(byte_counter_3__N_153), .C(reset_test_c), .Z(n3147)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__I_55_2_lut_rep_112_3_lut.init = 16'h0808;
    FD1S3DX DQ_out_dbg_i15_784_785_reset (.D(DQ_out_dbg_31__N_272), .CK(clk_system_N_92), 
            .CD(n3158), .Q(n1062)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i15_784_785_reset.GSR = "DISABLED";
    FD1S3AX DQ_out_dbg_i25_838_839_reset (.D(DQ_out_dbg_31__N_242), .CK(clk_system_N_92), 
            .Q(n1116)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i25_838_839_reset.GSR = "ENABLED";
    FD1S3DX DQ_out_dbg_i16_770_771_reset (.D(DQ_out_dbg_31__N_269), .CK(clk_system_N_92), 
            .CD(n3157), .Q(n1048)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i16_770_771_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i22_800_801_reset (.D(DQ_out_dbg_31__N_251), .CK(clk_system_N_92), 
            .CD(n3156), .Q(n1078)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i22_800_801_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i7_781_782_reset (.D(DQ_out_dbg_31__N_296), .CK(clk_system_N_92), 
            .CD(n3158), .Q(n1059)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i7_781_782_reset.GSR = "DISABLED";
    LUT4 pwr_bdd_2_lut_2652_4_lut_else_4_lut (.A(byte_counter[2]), .B(byte_counter[3]), 
         .C(byte_counter[1]), .Z(n3194)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam pwr_bdd_2_lut_2652_4_lut_else_4_lut.init = 16'h1010;
    FD1S3DX DQ_out_dbg_i14_797_798_reset (.D(DQ_out_dbg_31__N_275), .CK(clk_system_N_92), 
            .CD(n3156), .Q(n1075)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i14_797_798_reset.GSR = "DISABLED";
    LUT4 i2422_4_lut_4_lut_3_lut_4_lut (.A(byte_counter_3__N_129), .B(byte_counter_3__N_166), 
         .C(reset_test_c), .D(n3420), .Z(n3420)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2422_4_lut_4_lut_3_lut_4_lut.init = 16'h5d08;
    FD1S3BX DQ_out_dbg_i7_781_782_set (.D(DQ_out_dbg_31__N_296), .CK(clk_system_N_92), 
            .PD(DQ_out_dbg_31__N_510), .Q(n1058)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i7_781_782_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i2_851_852_reset (.D(DQ_out_dbg_31__N_311), .CK(clk_system_N_92), 
            .CD(n3149), .Q(n1129)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i2_851_852_reset.GSR = "DISABLED";
    LUT4 mux_137_i1_4_lut (.A(n2444), .B(state_2__N_95), .C(n353), .D(id_register_N_87), 
         .Z(n1794)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[4] 171[11])
    defparam mux_137_i1_4_lut.init = 16'h3f3a;
    FD1S3DX byte_counter__i1_777_778_reset (.D(n990), .CK(clk_system_N_92), 
            .CD(byte_counter_3__N_209), .Q(n1055)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i1_777_778_reset.GSR = "DISABLED";
    LUT4 i2413_4_lut (.A(n3426), .B(DQ_out_dbg_31__N_630), .C(reset_test_c), 
         .Z(n3426)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2413_4_lut.init = 16'h0e0e;
    FD1S3DX DQ_out_dbg_i6_794_795_reset (.D(DQ_out_dbg_31__N_299), .CK(clk_system_N_92), 
            .CD(n3156), .Q(n1072)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i6_794_795_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i13_807_808_reset (.D(DQ_out_dbg_31__N_278), .CK(clk_system_N_92), 
            .CD(n3153), .Q(n1085)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i13_807_808_reset.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i6_794_795_set (.D(DQ_out_dbg_31__N_299), .CK(clk_system_N_92), 
            .PD(n3155), .Q(n1071)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i6_794_795_set.GSR = "DISABLED";
    LUT4 byte_counter_3__N_129_I_0_1610_2_lut_rep_111_3_lut (.A(byte_counter_3__N_129), 
         .B(byte_counter_3__N_166), .C(reset_test_c), .Z(n3146)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_1610_2_lut_rep_111_3_lut.init = 16'ha2a2;
    FD1S3BX byte_counter__i1_777_778_set (.D(n990), .CK(clk_system_N_92), 
            .PD(byte_counter_3__N_177), .Q(n1054)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i1_777_778_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i13_807_808_set (.D(DQ_out_dbg_31__N_278), .CK(clk_system_N_92), 
            .PD(n3154), .Q(n1084)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i13_807_808_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i31_790_791_reset (.D(DQ_out_dbg_31__N_215), .CK(clk_system_N_92), 
            .CD(n3158), .Q(n1068)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i31_790_791_reset.GSR = "DISABLED";
    LUT4 i1417_2_lut_3_lut_4_lut_else_2_lut (.A(byte_counter[3]), .B(byte_counter[0]), 
         .C(n5_adj_664), .D(byte_counter[2]), .Z(n3197)) /* synthesis lut_function=(A+(B (C (D))+!B !(D))) */ ;
    defparam i1417_2_lut_3_lut_4_lut_else_2_lut.init = 16'heabb;
    FD1S3AX DQ_out_dbg_i12_820_821_reset (.D(DQ_out_dbg_31__N_281), .CK(clk_system_N_92), 
            .Q(n1098)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i12_820_821_reset.GSR = "ENABLED";
    FD1S3AX DQ_out_dbg_i20_835_836_reset (.D(DQ_out_dbg_31__N_257), .CK(clk_system_N_92), 
            .Q(n1113)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i20_835_836_reset.GSR = "ENABLED";
    FD1S3DX state_i0_i0_760_761_reset (.D(n1[0]), .CK(clk_system_N_92), 
            .CD(n3177), .Q(n1038)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i0_760_761_reset.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n3314), .B(n3170), .C(n1899), .D(n3169), 
         .Z(n999)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(95[7:28])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut (.A(n2133), .B(n2125), .C(DQ_in_dbg_test_c_31), .Z(n2406)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut.init = 16'hdfdf;
    FD1S3BX DQ_out_dbg_i12_820_821_set (.D(DQ_out_dbg_31__N_281), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1097)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i12_820_821_set.GSR = "DISABLED";
    FD1S3BX state_i0_i0_760_761_set (.D(n1[0]), .CK(clk_system_N_92), .PD(n3000), 
            .Q(n1037)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam state_i0_i0_760_761_set.GSR = "DISABLED";
    FD1S3AX DQ_out_dbg_i17_832_833_reset (.D(DQ_out_dbg_31__N_266), .CK(clk_system_N_92), 
            .Q(n1110)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i17_832_833_reset.GSR = "ENABLED";
    FD1S3AX DQ_out_dbg_i9_823_824_reset (.D(DQ_out_dbg_31__N_290), .CK(clk_system_N_92), 
            .Q(n1101)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i9_823_824_reset.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(DQ_in_dbg_test_c_24), .B(n10), .C(DQ_in_dbg_test_c_16), 
         .Z(n2402)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i5_3_lut.init = 16'hdfdf;
    FD1S3DX byte_counter__i0_744_745_reset (.D(n978), .CK(clk_system_N_92), 
            .CD(n3144), .Q(n1022)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i0_744_745_reset.GSR = "DISABLED";
    LUT4 i825_3_lut (.A(n1101), .B(n1100), .C(n1096), .Z(DQ_out_dbg_31__N_5[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i825_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_16__I_0_4_lut (.A(DQ_out_dbg_31__N_5[16]), .B(DQ_out_dbg_31__N_246), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_269)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_16__I_0_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_adj_199 (.A(n4), .B(byte_counter[0]), .C(byte_counter[1]), 
         .Z(n2642)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i1_3_lut_adj_199.init = 16'h5151;
    LUT4 i815_3_lut (.A(n1091), .B(n1090), .C(n1083), .Z(DQ_out_dbg_31__N_5[21])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i815_3_lut.init = 16'hcaca;
    LUT4 i772_3_lut (.A(n1048), .B(n1047), .C(n1040), .Z(DQ_out_dbg_31__N_5[16])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i772_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut (.A(DQ_in_dbg_test_c_8), .B(n2170), .C(n2122), .D(DQ_in_dbg_test_c_0), 
         .Z(n10)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i4_4_lut.init = 16'hfdff;
    LUT4 i746_3_lut (.A(n1022), .B(n1021), .C(n3417), .Z(byte_counter[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i746_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut (.A(DQ_in_dbg_test_c_7), .B(DQ_in_dbg_test_c_31), .C(DQ_in_dbg_test_c_23), 
         .D(DQ_in_dbg_test_c_15), .Z(n2170)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[9:32])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_adj_200 (.A(DQ_out_dbg_31__N_5[19]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_260)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_200.init = 16'h0808;
    FD1S3DX DQ_out_dbg_i21_813_814_reset (.D(DQ_out_dbg_31__N_254), .CK(clk_system_N_92), 
            .CD(n3153), .Q(n1091)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i21_813_814_reset.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i16_770_771_set (.D(DQ_out_dbg_31__N_269), .CK(clk_system_N_92), 
            .PD(n3151), .Q(n1047)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i16_770_771_set.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(DQ_in_dbg_test_c_2), .B(n14), .C(n10_adj_665), .D(DQ_in_dbg_test_c_26), 
         .Z(n2122)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[61:84])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1474_2_lut_4_lut_1_lut_3_lut (.A(n1018), .B(n1017), .C(n2997), 
         .Z(n3314)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1474_2_lut_4_lut_1_lut_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_139_3_lut (.A(byte_counter[2]), .B(byte_counter[3]), 
         .C(n4), .Z(n3174)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_2_lut_rep_139_3_lut.init = 16'hefef;
    LUT4 i6_4_lut (.A(DQ_in_dbg_test_c_25), .B(DQ_in_dbg_test_c_1), .C(DQ_in_dbg_test_c_9), 
         .D(DQ_in_dbg_test_c_10), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[61:84])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(n3184), .B(byte_counter[2]), .C(state_2__N_103), 
         .D(n3174), .Z(n2530)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'he000;
    FD1S3BX DQ_out_dbg_i27_866_867_set (.D(DQ_out_dbg_31__N_236), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1143)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i27_866_867_set.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(DQ_in_dbg_test_c_18), .B(DQ_in_dbg_test_c_17), .Z(n10_adj_665)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[61:84])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3BX DQ_out_dbg_i28_841_842_set (.D(DQ_out_dbg_31__N_233), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1118)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i28_841_842_set.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_202 (.A(DQ_in_dbg_test_c_23), .B(n2131), .C(DQ_in_dbg_test_c_15), 
         .D(DQ_in_dbg_test_c_7), .Z(n2133)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_202.init = 16'h8000;
    FD1S3BX DQ_out_dbg_i31_790_791_set (.D(DQ_out_dbg_31__N_215), .CK(clk_system_N_92), 
            .PD(DQ_out_dbg_31__N_510), .Q(n1067)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i31_790_791_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i30_803_804_set (.D(DQ_out_dbg_31__N_227), .CK(clk_system_N_92), 
            .PD(n3155), .Q(n1080)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i30_803_804_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i29_816_817_set (.D(DQ_out_dbg_31__N_230), .CK(clk_system_N_92), 
            .PD(n3154), .Q(n1093)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i29_816_817_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i25_838_839_set (.D(DQ_out_dbg_31__N_242), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1115)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i25_838_839_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i26_863_864_set (.D(DQ_out_dbg_31__N_239), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1140)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i26_863_864_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i5_810_811_reset (.D(DQ_out_dbg_31__N_302), .CK(clk_system_N_92), 
            .CD(n3153), .Q(n1088)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i5_810_811_reset.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_203 (.A(DQ_in_dbg_test_c_16), .B(DQ_in_dbg_test_c_24), 
         .C(DQ_in_dbg_test_c_0), .D(DQ_in_dbg_test_c_8), .Z(n2125)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(133[9:32])
    defparam i3_4_lut_adj_203.init = 16'hfffe;
    FD1S3DX DQ_out_dbg_i30_803_804_reset (.D(DQ_out_dbg_31__N_227), .CK(clk_system_N_92), 
            .CD(n3156), .Q(n1081)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i30_803_804_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i24_773_774_reset (.D(DQ_out_dbg_31__N_245), .CK(clk_system_N_92), 
            .CD(n3157), .Q(n1051)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i24_773_774_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i23_787_788_reset (.D(DQ_out_dbg_31__N_248), .CK(clk_system_N_92), 
            .CD(n3158), .Q(n1065)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i23_787_788_reset.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i19_860_861_set (.D(DQ_out_dbg_31__N_260), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1137)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i19_860_861_set.GSR = "DISABLED";
    PFUMX i2659 (.BLUT(n3191), .ALUT(n3192), .C0(byte_counter[2]), .Z(DQ_out_dbg_31__N_415));
    LUT4 i405_3_lut_4_lut (.A(n2458), .B(n3182), .C(n1692), .D(DQ_out_dbg_10__N_48), 
         .Z(n559)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam i405_3_lut_4_lut.init = 16'h0efe;
    LUT4 DQ_out_dbg_31__I_166_3_lut_4_lut (.A(n2458), .B(n3182), .C(n909), 
         .D(DQ_out_dbg_31__N_332[24]), .Z(DQ_out_dbg_31__N_546)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam DQ_out_dbg_31__I_166_3_lut_4_lut.init = 16'hefe0;
    LUT4 i7_4_lut_adj_204 (.A(DQ_in_dbg_test_c_2), .B(n14_adj_666), .C(n10_adj_667), 
         .D(DQ_in_dbg_test_c_26), .Z(n2131)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_204.init = 16'h8000;
    LUT4 i6_4_lut_adj_205 (.A(DQ_in_dbg_test_c_25), .B(DQ_in_dbg_test_c_1), 
         .C(DQ_in_dbg_test_c_9), .D(DQ_in_dbg_test_c_10), .Z(n14_adj_666)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_205.init = 16'h8000;
    LUT4 DQ_out_dbg_22__I_0_4_lut (.A(DQ_out_dbg_31__N_5[22]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_251)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_22__I_0_4_lut.init = 16'h0cac;
    FD1S3BX DQ_out_dbg_i20_835_836_set (.D(DQ_out_dbg_31__N_257), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1112)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i20_835_836_set.GSR = "DISABLED";
    FD1S3BX byte_counter__i0_744_745_set (.D(n978), .CK(clk_system_N_92), 
            .PD(n3143), .Q(n1021)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i0_744_745_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i24_773_774_set (.D(DQ_out_dbg_31__N_245), .CK(clk_system_N_92), 
            .PD(n3151), .Q(n1050)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i24_773_774_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i0_767_768_reset (.D(DQ_out_dbg_31__N_317), .CK(clk_system_N_92), 
            .CD(n3157), .Q(n1045)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i0_767_768_reset.GSR = "DISABLED";
    FD1S3DX byte_counter__i2_756_757_reset (.D(n984), .CK(clk_system_N_92), 
            .CD(n3146), .Q(n1034)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter__i2_756_757_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i8_764_765_reset (.D(DQ_out_dbg_31__N_293), .CK(clk_system_N_92), 
            .CD(n3157), .Q(n1042)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i8_764_765_reset.GSR = "DISABLED";
    LUT4 DQ_out_dbg_31__I_144_4_lut (.A(DQ_out_dbg_31__N_336), .B(DQ_out_dbg_31__N_332[24]), 
         .C(n909), .D(n3168), .Z(DQ_out_dbg_31__N_334)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(192[4] 199[11])
    defparam DQ_out_dbg_31__I_144_4_lut.init = 16'hf3a3;
    LUT4 i2_2_lut_adj_206 (.A(DQ_in_dbg_test_c_17), .B(DQ_in_dbg_test_c_18), 
         .Z(n10_adj_667)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_206.init = 16'h8888;
    LUT4 DQ_out_dbg_7__I_0_4_lut (.A(DQ_out_dbg_31__N_5[7]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_296)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_7__I_0_4_lut.init = 16'h0cac;
    LUT4 i783_3_lut (.A(n1059), .B(n1058), .C(n1057), .Z(DQ_out_dbg_31__N_5[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i783_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_129_3_lut (.A(n3180), .B(n3179), .C(n3314), .Z(n3164)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i1_2_lut_rep_129_3_lut.init = 16'hfefe;
    LUT4 i74_2_lut_3_lut_4_lut (.A(n3180), .B(n3179), .C(n1899), .D(n3314), 
         .Z(n164)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i74_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1S3BX DQ_out_dbg_i8_764_765_set (.D(DQ_out_dbg_31__N_293), .CK(clk_system_N_92), 
            .PD(n3151), .Q(n1041)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i8_764_765_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i23_787_788_set (.D(DQ_out_dbg_31__N_248), .CK(clk_system_N_92), 
            .PD(DQ_out_dbg_31__N_510), .Q(n1064)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i23_787_788_set.GSR = "DISABLED";
    LUT4 DQ_out_dbg_14__I_0_4_lut (.A(DQ_out_dbg_31__N_5[14]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_275)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_14__I_0_4_lut.init = 16'h0cac;
    FD1S3BX DQ_out_dbg_i22_800_801_set (.D(DQ_out_dbg_31__N_251), .CK(clk_system_N_92), 
            .PD(n3155), .Q(n1077)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i22_800_801_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i5_810_811_set (.D(DQ_out_dbg_31__N_302), .CK(clk_system_N_92), 
            .PD(n3154), .Q(n1087)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i5_810_811_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i9_823_824_set (.D(DQ_out_dbg_31__N_290), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1100)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i9_823_824_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i18_857_858_set (.D(DQ_out_dbg_31__N_263), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1134)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i18_857_858_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i3_848_849_set (.D(DQ_out_dbg_31__N_308), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1125)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i3_848_849_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i4_826_827_set (.D(DQ_out_dbg_31__N_305), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1103)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i4_826_827_set.GSR = "DISABLED";
    LUT4 i799_3_lut (.A(n1075), .B(n1074), .C(n1070), .Z(DQ_out_dbg_31__N_5[14])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i799_3_lut.init = 16'hcaca;
    FD1S3BX DQ_out_dbg_i0_767_768_set (.D(DQ_out_dbg_31__N_317), .CK(clk_system_N_92), 
            .PD(n3151), .Q(n1044)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i0_767_768_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i15_784_785_set (.D(DQ_out_dbg_31__N_272), .CK(clk_system_N_92), 
            .PD(DQ_out_dbg_31__N_510), .Q(n1061)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i15_784_785_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i14_797_798_set (.D(DQ_out_dbg_31__N_275), .CK(clk_system_N_92), 
            .PD(n3155), .Q(n1074)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i14_797_798_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i21_813_814_set (.D(DQ_out_dbg_31__N_254), .CK(clk_system_N_92), 
            .PD(n3154), .Q(n1090)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i21_813_814_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i1_829_830_set (.D(DQ_out_dbg_31__N_314), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1106)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i1_829_830_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i2_851_852_set (.D(DQ_out_dbg_31__N_311), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1128)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i2_851_852_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i11_854_855_set (.D(DQ_out_dbg_31__N_284), .CK(clk_system_N_92), 
            .PD(n3150), .Q(n1131)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i11_854_855_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i17_832_833_set (.D(DQ_out_dbg_31__N_266), .CK(clk_system_N_92), 
            .PD(n3152), .Q(n1109)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=88, LSE_RLINE=88 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_i17_832_833_set.GSR = "DISABLED";
    PFUMX i565 (.BLUT(n953), .ALUT(n1794), .C0(n130), .Z(n1818));
    LUT4 i1388_2_lut_3_lut_4_lut_4_lut (.A(n3180), .B(n3179), .C(n3169), 
         .D(n3314), .Z(n1[0])) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i1388_2_lut_3_lut_4_lut_4_lut.init = 16'haaab;
    LUT4 i2476_4_lut_4_lut (.A(n3180), .B(n3179), .C(n3314), .D(estado_test_c_2), 
         .Z(estado_test_c_2)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B (C (D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i2476_4_lut_4_lut.init = 16'he808;
    LUT4 i705_4_lut (.A(byte_counter[3]), .B(n2436), .C(n164), .D(n999), 
         .Z(n982)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i705_4_lut.init = 16'haca0;
    LUT4 i2478_4_lut_4_lut (.A(n3180), .B(n3179), .C(n3314), .D(estado_test_c_0), 
         .Z(estado_test_c_0)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i2478_4_lut_4_lut.init = 16'he606;
    LUT4 i1_3_lut_adj_207 (.A(DQ_out_dbg_31__N_5[2]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_311)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_207.init = 16'h0808;
    LUT4 i1_4_lut_adj_208 (.A(n3173), .B(n3172), .C(n3171), .D(n3165), 
         .Z(n2436)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_208.init = 16'h4000;
    LUT4 i853_3_lut (.A(n1129), .B(n1128), .C(n1121), .Z(DQ_out_dbg_31__N_5[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i853_3_lut.init = 16'hcaca;
    LUT4 byte_counter_3__N_129_I_0_1611_3_lut (.A(byte_counter_3__N_129), 
         .B(byte_counter_3__N_179), .C(reset_test_c), .Z(byte_counter_3__N_209)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam byte_counter_3__N_129_I_0_1611_3_lut.init = 16'ha2a2;
    LUT4 i19_4_lut (.A(n3169), .B(byte_counter[1]), .C(n164), .D(n3196), 
         .Z(n990)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i19_4_lut.init = 16'hcac0;
    LUT4 i300_1_lut (.A(byte_counter[2]), .Z(n5_adj_664)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(140[29:45])
    defparam i300_1_lut.init = 16'h5555;
    LUT4 n1096_bdd_4_lut_4_lut_3_lut_4_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(n1096), .D(DQ_out_dbg_31__N_410), .Z(n1096)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam n1096_bdd_4_lut_4_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 i758_3_lut (.A(n1034), .B(n1033), .C(n3420), .Z(byte_counter[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i758_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_31__N_321_I_0_1627_2_lut_rep_120_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_334), .Z(n3155)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1627_2_lut_rep_120_3_lut.init = 16'he0e0;
    LUT4 i1427_2_lut_4_lut (.A(byte_counter[0]), .B(n5_adj_664), .C(n3184), 
         .D(DQ_out_dbg_31__N_332[24]), .Z(DQ_out_dbg_31__N_246)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam i1427_2_lut_4_lut.init = 16'h0200;
    LUT4 i754_3_lut (.A(n1030), .B(n1029), .C(n3414), .Z(byte_counter[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i754_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_209 (.A(n2458), .B(n4), .Z(n909)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam i1_2_lut_adj_209.init = 16'hbbbb;
    LUT4 DQ_out_dbg_23__I_0_4_lut (.A(DQ_out_dbg_31__N_5[23]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_248)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_23__I_0_4_lut.init = 16'h0cac;
    PFUMX i551 (.BLUT(n814), .ALUT(byte_counter_3__N_184), .C0(n130), 
          .Z(byte_counter_3__N_179));
    LUT4 i779_3_lut (.A(n1055), .B(n1054), .C(n3399), .Z(byte_counter[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i779_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_31__N_321_I_0_1639_2_lut_rep_117_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_410), .Z(n3152)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1639_2_lut_rep_117_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_210 (.A(n3169), .B(n3160), .C(n3172), .D(n7), 
         .Z(n1899)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_4_lut_adj_210.init = 16'h2000;
    LUT4 i2340_2_lut_3_lut_4_lut (.A(n3186), .B(byte_counter[2]), .C(state_2__N_103), 
         .D(byte_counter[3]), .Z(n2638)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i2340_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i23_4_lut_4_lut (.A(n3186), .B(byte_counter[2]), .C(n4), .D(byte_counter[3]), 
         .Z(n130)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C+(D)))) */ ;
    defparam i23_4_lut_4_lut.init = 16'hee03;
    LUT4 i2366_4_lut_then_4_lut (.A(DQ_out_dbg_31__N_332[24]), .B(byte_counter[1]), 
         .C(byte_counter[2]), .D(byte_counter[0]), .Z(n3189)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;
    defparam i2366_4_lut_then_4_lut.init = 16'haaab;
    LUT4 i1_3_lut_adj_211 (.A(DQ_out_dbg_31__N_5[27]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_236)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_211.init = 16'h0808;
    LUT4 i868_3_lut (.A(n1144), .B(n1143), .C(n1121), .Z(DQ_out_dbg_31__N_5[27])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i868_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_212 (.A(byte_counter[3]), .B(n3183), .C(n2566), 
         .D(n3179), .Z(n1692)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(227[6:25])
    defparam i1_4_lut_adj_212.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n3187), .B(byte_counter[3]), .C(byte_counter_3__N_163[2]), 
         .D(n353), .Z(byte_counter_3__N_171)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_4_lut_4_lut (.A(n3162), .B(n2518), .C(n2638), .D(DQ_out_dbg_31__N_510), 
         .Z(byte_counter_3__N_129)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_4_lut.init = 16'hffdf;
    LUT4 i789_3_lut (.A(n1065), .B(n1064), .C(n1057), .Z(DQ_out_dbg_31__N_5[23])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i789_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n3187), .B(byte_counter[3]), .C(n353), 
         .D(n3183), .Z(byte_counter_3__N_158)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h2000;
    LUT4 i2456_4_lut_4_lut_3_lut_4_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(n1121), .D(DQ_out_dbg_31__N_546), .Z(n1121)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B !(C)))) */ ;
    defparam i2456_4_lut_4_lut_3_lut_4_lut.init = 16'h10fe;
    LUT4 DQ_out_dbg_31__N_321_I_0_1641_2_lut_rep_115_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_546), .Z(n3150)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1641_2_lut_rep_115_3_lut.init = 16'h0e0e;
    LUT4 i519_2_lut (.A(byte_counter[0]), .B(byte_counter[1]), .Z(byte_counter_3__N_163[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[4] 171[11])
    defparam i519_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_213 (.A(byte_counter[3]), .B(byte_counter[2]), 
         .C(n3182), .D(n909), .Z(DQ_out_dbg_31__N_410)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_213.init = 16'h0400;
    LUT4 i2406_3_lut_rep_142 (.A(reset_test_c), .B(DQ_out_dbg_31__N_332[24]), 
         .Z(n3177)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2406_3_lut_rep_142.init = 16'hbbbb;
    LUT4 DQ_out_dbg_31__N_321_I_0_1643_2_lut_rep_116_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_415), .Z(n3151)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1643_2_lut_rep_116_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_adj_214 (.A(n3314), .B(n3180), .C(n3179), .Z(clk_system_N_92_enable_1)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_214.init = 16'h1010;
    LUT4 i1_3_lut_adj_215 (.A(DQ_out_dbg_31__N_5[4]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_305)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_215.init = 16'h0808;
    LUT4 i2461_4_lut_4_lut_2_lut (.A(DQ_out_dbg_31__N_332[24]), .B(reset_test_c), 
         .Z(n3000)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2461_4_lut_4_lut_2_lut.init = 16'h2222;
    LUT4 i872_3_lut_rep_144 (.A(n1148), .B(n1147), .C(n3000), .Z(n3179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i872_3_lut_rep_144.init = 16'hcaca;
    LUT4 DQ_out_dbg_6__I_0_4_lut (.A(DQ_out_dbg_31__N_5[6]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_299)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_6__I_0_4_lut.init = 16'h0cac;
    LUT4 i701_4_lut (.A(byte_counter[0]), .B(n2440), .C(n164), .D(n999), 
         .Z(n978)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !((C+!(D))+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i701_4_lut.init = 16'haca0;
    LUT4 i796_3_lut (.A(n1072), .B(n1071), .C(n1070), .Z(DQ_out_dbg_31__N_5[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i796_3_lut.init = 16'hcaca;
    PFUMX i2657 (.BLUT(n3188), .ALUT(n3189), .C0(byte_counter[3]), .Z(id_register_N_84));
    LUT4 clk_out_I_0_1_lut (.A(clk_out_test_c), .Z(clk_out_N_663)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/damian/desktop/advances_4_7/clk_div_2.vhd(26[16:28])
    defparam clk_out_I_0_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_135_4_lut (.A(n1148), .B(n1147), .C(n3000), .D(n3180), 
         .Z(n3170)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_2_lut_rep_135_4_lut.init = 16'hffca;
    LUT4 i762_3_lut_rep_145 (.A(n1038), .B(n1037), .C(n3000), .Z(n3180)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i762_3_lut_rep_145.init = 16'hcaca;
    LUT4 i1_4_lut_adj_216 (.A(n7), .B(n3172), .C(byte_counter[0]), .D(n3160), 
         .Z(n2440)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_216.init = 16'h0c44;
    LUT4 i828_3_lut (.A(n1104), .B(n1103), .C(n1096), .Z(DQ_out_dbg_31__N_5[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i828_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_217 (.A(n2596), .B(n3186), .C(n2588), .D(n3179), 
         .Z(CS_n_N_621)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_217.init = 16'h2030;
    LUT4 i1_2_lut_4_lut (.A(n1038), .B(n1037), .C(n3000), .D(n3314), 
         .Z(n2566)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_2_lut_4_lut.init = 16'hffca;
    LUT4 i564_3_lut_3_lut_4_lut (.A(n3174), .B(state_2__N_103), .C(n3169), 
         .D(byte_counter[0]), .Z(n953)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam i564_3_lut_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_4_lut_adj_218 (.A(clk_out_test_c), .B(n3186), .C(n11), .D(n2588), 
         .Z(n19)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_218.init = 16'h7775;
    LUT4 i837_3_lut (.A(n1113), .B(n1112), .C(n1096), .Z(DQ_out_dbg_31__N_5[20])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i837_3_lut.init = 16'hcaca;
    LUT4 i2363_4_lut (.A(n2530), .B(reset_test_c), .C(DQ_out_dbg_31__N_510), 
         .D(n3162), .Z(DQ_out_dbg_31__N_630)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B))) */ ;
    defparam i2363_4_lut.init = 16'h3133;
    LUT4 i750_3_lut (.A(n1026), .B(n1025), .C(n3426), .Z(DQ_out_dbg_10__N_48)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i750_3_lut.init = 16'h3535;
    LUT4 i865_3_lut (.A(n1141), .B(n1140), .C(n1121), .Z(DQ_out_dbg_31__N_5[26])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i865_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_13__I_0_4_lut (.A(DQ_out_dbg_31__N_5[13]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_278)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_13__I_0_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_adj_219 (.A(n3180), .B(n3314), .C(clk_out_test_c), .Z(n2596)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(211[6:24])
    defparam i1_3_lut_adj_219.init = 16'hfefe;
    LUT4 i1_2_lut_adj_220 (.A(byte_counter[3]), .B(n5_adj_664), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_220.init = 16'h8888;
    LUT4 i1_4_lut_adj_221 (.A(clk_system_N_92_enable_1), .B(rwds_in_dbg_test_c), 
         .C(DQ_out_dbg_31__N_332[24]), .D(n3166), .Z(clk_system_N_92_enable_2)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_221.init = 16'h888a;
    LUT4 i1523_2_lut_rep_138_3_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[2]), .Z(n3173)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1523_2_lut_rep_138_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_adj_222 (.A(byte_counter[3]), .B(byte_counter[2]), .C(rwds_in_dbg_test_c), 
         .Z(n2588)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_222.init = 16'h4040;
    LUT4 DQ_out_dbg_31__N_321_I_0_1678_2_lut_rep_114_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_546), .Z(n3149)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1678_2_lut_rep_114_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_125_3_lut_4_lut_3_lut_4_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[3]), .D(byte_counter[2]), .Z(n3160)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_2_lut_rep_125_3_lut_4_lut_3_lut_4_lut.init = 16'h010e;
    LUT4 i1_2_lut_rep_131_3_lut_4_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[3]), .D(byte_counter[2]), .Z(n3166)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_2_lut_rep_131_3_lut_4_lut.init = 16'hffef;
    LUT4 i873_1_lut_2_lut_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), .C(DQ_out_dbg_31__N_410), 
         .Z(n1150)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i873_1_lut_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i2366_4_lut_else_4_lut (.A(DQ_out_dbg_31__N_332[24]), .B(byte_counter[1]), 
         .C(byte_counter[0]), .D(n5_adj_664), .Z(n3188)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+(D)))) */ ;
    defparam i2366_4_lut_else_4_lut.init = 16'haaa9;
    LUT4 i1_2_lut_rep_130_3_lut_4_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[3]), .D(byte_counter[2]), .Z(n3165)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_2_lut_rep_130_3_lut_4_lut.init = 16'h0f0e;
    LUT4 DQ_out_dbg_31__N_321_I_0_1676_2_lut_rep_118_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_344), .Z(n3153)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1676_2_lut_rep_118_3_lut.init = 16'h0e0e;
    LUT4 i1432_3_lut_4_lut_4_lut_then_4_lut (.A(byte_counter[3]), .B(DQ_out_dbg_31__N_332[24]), 
         .C(byte_counter[0]), .D(byte_counter[1]), .Z(n3192)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i1432_3_lut_4_lut_4_lut_then_4_lut.init = 16'h4540;
    LUT4 i1432_3_lut_4_lut_4_lut_else_4_lut (.A(byte_counter[3]), .B(byte_counter[0]), 
         .C(byte_counter[1]), .D(n5_adj_664), .Z(n3191)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1432_3_lut_4_lut_4_lut_else_4_lut.init = 16'h1000;
    LUT4 i809_3_lut (.A(n1085), .B(n1084), .C(n1083), .Z(DQ_out_dbg_31__N_5[13])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i809_3_lut.init = 16'hcaca;
    LUT4 i11_4_lut (.A(DQ_in_dbg_test_c_29), .B(n22), .C(n18), .D(DQ_in_dbg_test_c_12), 
         .Z(n883)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(DQ_in_dbg_test_c_22), .B(n20), .C(n14_adj_668), 
         .D(DQ_in_dbg_test_c_14), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(DQ_in_dbg_test_c_13), .B(DQ_in_dbg_test_c_4), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(DQ_in_dbg_test_c_20), .B(DQ_in_dbg_test_c_21), .C(DQ_in_dbg_test_c_30), 
         .D(DQ_in_dbg_test_c_28), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_223 (.A(DQ_in_dbg_test_c_5), .B(DQ_in_dbg_test_c_6), 
         .Z(n14_adj_668)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i2_2_lut_adj_223.init = 16'heeee;
    LUT4 i2432_4_lut_4_lut_3_lut_4_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(n1040), .D(DQ_out_dbg_31__N_415), .Z(n1040)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i2432_4_lut_4_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_rep_147 (.A(byte_counter[0]), .B(byte_counter[1]), .Z(n3182)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[8:24])
    defparam i1_2_lut_rep_147.init = 16'hbbbb;
    LUT4 i1417_2_lut_3_lut_4_lut_then_2_lut (.A(byte_counter[3]), .B(byte_counter[2]), 
         .Z(n3198)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1417_2_lut_3_lut_4_lut_then_2_lut.init = 16'heeee;
    LUT4 i4_4_lut_adj_224 (.A(DQ_in_dbg_test_c_3), .B(DQ_in_dbg_test_c_11), 
         .C(DQ_in_dbg_test_c_27), .D(n6_adj_669), .Z(n2339)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_224.init = 16'h8000;
    LUT4 i1_2_lut_adj_225 (.A(DQ_in_dbg_test_c_19), .B(n2131), .Z(n6_adj_669)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_225.init = 16'h8888;
    LUT4 i1_3_lut_adj_226 (.A(DQ_out_dbg_31__N_5[26]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_239)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_226.init = 16'h0808;
    LUT4 i1_3_lut_adj_227 (.A(byte_counter_3__N_129), .B(byte_counter_3__N_179), 
         .C(reset_test_c), .Z(byte_counter_3__N_177)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(84[2] 214[9])
    defparam i1_3_lut_adj_227.init = 16'h0808;
    LUT4 i1_2_lut_rep_133_3_lut_4_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[2]), .D(byte_counter[3]), .Z(n3168)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[8:24])
    defparam i1_2_lut_rep_133_3_lut_4_lut.init = 16'h0040;
    LUT4 i1_3_lut_adj_228 (.A(DQ_out_dbg_31__N_5[3]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_308)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_228.init = 16'h0808;
    LUT4 i850_3_lut (.A(n1126), .B(n1125), .C(n1121), .Z(DQ_out_dbg_31__N_5[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i850_3_lut.init = 16'hcaca;
    LUT4 i802_3_lut (.A(n1078), .B(n1077), .C(n1070), .Z(DQ_out_dbg_31__N_5[22])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i802_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_229 (.A(DQ_out_dbg_31__N_5[1]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_314)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_229.init = 16'h0808;
    LUT4 i2442_4_lut_4_lut_3_lut_4_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(n1070), .D(DQ_out_dbg_31__N_334), .Z(n1070)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i2442_4_lut_4_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 DQ_out_dbg_0__I_0_4_lut (.A(DQ_out_dbg_31__N_5[0]), .B(DQ_out_dbg_31__N_246), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_317)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_0__I_0_4_lut.init = 16'h0cac;
    LUT4 i1464_3_lut_rep_127_4_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(n3185), .D(n3172), .Z(n3162)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[8:24])
    defparam i1464_3_lut_rep_127_4_lut.init = 16'hfb00;
    LUT4 DQ_out_dbg_31__I_0_4_lut (.A(DQ_out_dbg_31__N_5[31]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_215)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_31__I_0_4_lut.init = 16'h0cac;
    LUT4 i831_3_lut (.A(n1107), .B(n1106), .C(n1096), .Z(DQ_out_dbg_31__N_5[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i831_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_134_3_lut (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(n2458), .Z(n3169)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[8:24])
    defparam i1_2_lut_rep_134_3_lut.init = 16'hfbfb;
    LUT4 i1_3_lut_adj_230 (.A(DQ_out_dbg_31__N_5[18]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_263)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_230.init = 16'h0808;
    LUT4 DQ_out_dbg_31__N_321_I_0_1667_2_lut_rep_121_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_334), .Z(n3156)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1667_2_lut_rep_121_3_lut.init = 16'h0e0e;
    LUT4 i792_3_lut (.A(n1068), .B(n1067), .C(n1057), .Z(DQ_out_dbg_31__N_5[31])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i792_3_lut.init = 16'hcaca;
    LUT4 i859_3_lut (.A(n1135), .B(n1134), .C(n1121), .Z(DQ_out_dbg_31__N_5[18])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i859_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_231 (.A(DQ_out_dbg_31__N_5[12]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_281)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_231.init = 16'h0808;
    LUT4 i1_2_lut_rep_148 (.A(n4), .B(byte_counter[2]), .Z(n3183)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(200[4] 208[11])
    defparam i1_2_lut_rep_148.init = 16'h8888;
    LUT4 i1_3_lut_adj_232 (.A(DQ_out_dbg_31__N_5[10]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_287)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_232.init = 16'h0808;
    LUT4 i822_3_lut (.A(n1098), .B(n1097), .C(n1096), .Z(DQ_out_dbg_31__N_5[12])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i822_3_lut.init = 16'hcaca;
    LUT4 i847_3_lut (.A(n1123), .B(n1122), .C(n1121), .Z(DQ_out_dbg_31__N_5[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i847_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_233 (.A(DQ_out_dbg_31__N_5[20]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_257)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_233.init = 16'h0808;
    LUT4 DQ_out_dbg_31__N_321_I_0_1681_2_lut_rep_122_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_415), .Z(n3157)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1681_2_lut_rep_122_3_lut.init = 16'h0e0e;
    PFUMX i541 (.BLUT(n804), .ALUT(byte_counter_3__N_158), .C0(n130), 
          .Z(byte_counter_3__N_153));
    LUT4 i330_2_lut_rep_136_3_lut (.A(n4), .B(byte_counter[2]), .C(byte_counter[3]), 
         .Z(n3171)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(200[4] 208[11])
    defparam i330_2_lut_rep_136_3_lut.init = 16'h7878;
    LUT4 DQ_out_dbg_29__I_0_4_lut (.A(DQ_out_dbg_31__N_5[29]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_230)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_29__I_0_4_lut.init = 16'h0cac;
    LUT4 i1_3_lut_adj_234 (.A(DQ_out_dbg_31__N_5[28]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_233)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_234.init = 16'h0808;
    LUT4 i1_3_lut_adj_235 (.A(DQ_out_dbg_31__N_5[17]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_266)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_235.init = 16'h0808;
    LUT4 i199_3_lut_3_lut_4_lut (.A(byte_counter[2]), .B(byte_counter[3]), 
         .C(state_2__N_103), .D(n4), .Z(n353)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i199_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i769_3_lut (.A(n1045), .B(n1044), .C(n1040), .Z(DQ_out_dbg_31__N_5[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i769_3_lut.init = 16'hcaca;
    LUT4 i1478_2_lut_4_lut (.A(n3164), .B(n3182), .C(n2458), .D(n3179), 
         .Z(n1[1])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam i1478_2_lut_4_lut.init = 16'hfe00;
    LUT4 i834_3_lut (.A(n1110), .B(n1109), .C(n1096), .Z(DQ_out_dbg_31__N_5[17])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i834_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_8__I_0_4_lut (.A(DQ_out_dbg_31__N_5[8]), .B(DQ_out_dbg_31__N_246), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_293)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_8__I_0_4_lut.init = 16'h0cac;
    LUT4 i2447_4_lut_4_lut_3_lut_4_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(n1083), .D(DQ_out_dbg_31__N_344), .Z(n1083)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i2447_4_lut_4_lut_3_lut_4_lut.init = 16'hfe10;
    LUT4 DQ_out_dbg_31__N_321_I_0_1628_2_lut_rep_119_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .C(DQ_out_dbg_31__N_344), .Z(n3154)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam DQ_out_dbg_31__N_321_I_0_1628_2_lut_rep_119_3_lut.init = 16'he0e0;
    LUT4 i843_3_lut (.A(n1119), .B(n1118), .C(n1096), .Z(DQ_out_dbg_31__N_5[28])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i843_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_149 (.A(byte_counter[1]), .B(byte_counter[3]), .Z(n3184)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_2_lut_rep_149.init = 16'heeee;
    LUT4 i540_3_lut_3_lut_4_lut (.A(n3174), .B(state_2__N_103), .C(n909), 
         .D(n3171), .Z(n804)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;
    defparam i540_3_lut_3_lut_4_lut.init = 16'h7f08;
    LUT4 i1_2_lut_rep_132_3_lut (.A(byte_counter[1]), .B(byte_counter[3]), 
         .C(byte_counter[2]), .Z(n3167)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_2_lut_rep_132_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_rep_137_4_lut (.A(byte_counter[1]), .B(byte_counter[3]), 
         .C(n5_adj_664), .D(byte_counter[0]), .Z(n3172)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_3_lut_rep_137_4_lut.init = 16'hfeff;
    LUT4 byte_counter_3__I_0_1603_i6_2_lut_rep_150 (.A(byte_counter[2]), .B(byte_counter[3]), 
         .Z(n3185)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam byte_counter_3__I_0_1603_i6_2_lut_rep_150.init = 16'heeee;
    LUT4 DQ_out_dbg_30__I_0_4_lut (.A(DQ_out_dbg_31__N_5[30]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_227)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_30__I_0_4_lut.init = 16'h0cac;
    LUT4 i1_4_lut_adj_236 (.A(n3174), .B(n3176), .C(n3167), .D(n2512), 
         .Z(n2518)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_236.init = 16'hffdf;
    LUT4 i1_4_lut_adj_237 (.A(n2632), .B(state_2__N_95), .C(reset_test_c), 
         .D(n881), .Z(n2512)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_237.init = 16'hf3f7;
    LUT4 i1_2_lut_3_lut (.A(byte_counter[2]), .B(byte_counter[3]), .C(byte_counter[0]), 
         .Z(n2444)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 mux_125_i1_3_lut (.A(n2233), .B(state_2__N_95), .C(n353), .Z(byte_counter_3__N_184)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(168[4] 171[11])
    defparam mux_125_i1_3_lut.init = 16'h3a3a;
    LUT4 i1_3_lut_adj_238 (.A(DQ_out_dbg_31__N_5[9]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_290)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_238.init = 16'h0808;
    LUT4 i805_3_lut (.A(n1081), .B(n1080), .C(n1070), .Z(DQ_out_dbg_31__N_5[30])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i805_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_239 (.A(n2170), .B(n883), .C(n2125), .Z(n2632)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[9:32])
    defparam i1_3_lut_adj_239.init = 16'hfefe;
    LUT4 byte_counter_3__I_0_1587_i5_2_lut_rep_151 (.A(byte_counter[0]), .B(byte_counter[1]), 
         .Z(n3186)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam byte_counter_3__I_0_1587_i5_2_lut_rep_151.init = 16'heeee;
    LUT4 i766_3_lut (.A(n1042), .B(n1041), .C(n1040), .Z(DQ_out_dbg_31__N_5[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i766_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_240 (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[3]), .D(byte_counter[2]), .Z(n7)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_3_lut_4_lut_adj_240.init = 16'hfffe;
    LUT4 i1_3_lut_adj_241 (.A(DQ_out_dbg_31__N_5[11]), .B(n1692), .C(DQ_out_dbg_10__N_48), 
         .Z(DQ_out_dbg_31__N_284)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_3_lut_adj_241.init = 16'h0808;
    LUT4 i613_4_lut (.A(n2339), .B(n2119), .C(DQ_out_dbg_31__N_332[24]), 
         .D(n2122), .Z(n881)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+((D)+!C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(124[8:107])
    defparam i613_4_lut.init = 16'hf5c5;
    LUT4 i1_4_lut_adj_242 (.A(n3185), .B(n3186), .C(byte_counter_3__N_163[1]), 
         .D(n2458), .Z(n2233)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_242.init = 16'h5040;
    LUT4 i3_4_lut_adj_243 (.A(DQ_in_dbg_test_c_11), .B(DQ_in_dbg_test_c_27), 
         .C(DQ_in_dbg_test_c_3), .D(DQ_in_dbg_test_c_19), .Z(n2119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(133[9:32])
    defparam i3_4_lut_adj_243.init = 16'hfffe;
    LUT4 n1669_bdd_4_lut (.A(n3161), .B(n3167), .C(reset_test_c), .D(n3162), 
         .Z(n2506)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam n1669_bdd_4_lut.init = 16'hf7ff;
    LUT4 i1_3_lut_adj_244 (.A(n2119), .B(n877), .C(n883), .Z(state_2__N_95)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(133[9:32])
    defparam i1_3_lut_adj_244.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_adj_245 (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[3]), .D(n5_adj_664), .Z(state_2__N_103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_3_lut_4_lut_adj_245.init = 16'hfffe;
    LUT4 i856_3_lut (.A(n1132), .B(n1131), .C(n1121), .Z(DQ_out_dbg_31__N_5[11])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i856_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_246 (.A(byte_counter[0]), .B(byte_counter[1]), 
         .C(byte_counter[2]), .D(byte_counter[3]), .Z(id_register_N_87)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(143[8:24])
    defparam i1_2_lut_3_lut_4_lut_adj_246.init = 16'h0010;
    LUT4 i1_2_lut_rep_152 (.A(n5_adj_664), .B(byte_counter[1]), .Z(n3187)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_152.init = 16'h8888;
    LUT4 i1_2_lut_rep_141_3_lut (.A(n5_adj_664), .B(byte_counter[1]), .C(byte_counter[3]), 
         .Z(n3176)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_141_3_lut.init = 16'h0808;
    LUT4 i818_3_lut (.A(n1094), .B(n1093), .C(n1083), .Z(DQ_out_dbg_31__N_5[29])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i818_3_lut.init = 16'hcaca;
    LUT4 DQ_out_dbg_5__I_0_4_lut (.A(DQ_out_dbg_31__N_5[5]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_302)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_5__I_0_4_lut.init = 16'h0cac;
    LUT4 DQ_out_dbg_21__I_0_4_lut (.A(DQ_out_dbg_31__N_5[21]), .B(DQ_out_dbg_31__N_216), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_254)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_21__I_0_4_lut.init = 16'h0cac;
    LUT4 i2470_4_lut_1_lut_3_lut (.A(DQ_out_dbg_31__N_332[24]), .B(state_2__N_103), 
         .C(reset_test_c), .Z(n2997)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2470_4_lut_1_lut_3_lut.init = 16'h0404;
    LUT4 DQ_out_dbg_31__N_321_I_0_1666_2_lut_rep_123 (.A(n2506), .B(DQ_out_dbg_31__N_510), 
         .Z(n3158)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_31__N_321_I_0_1666_2_lut_rep_123.init = 16'h2222;
    LUT4 DQ_out_dbg_31__I_149_4_lut (.A(DQ_out_dbg_31__N_336), .B(n909), 
         .C(DQ_out_dbg_31__N_332[24]), .D(n3168), .Z(DQ_out_dbg_31__N_344)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C))+!A (B (C (D))+!B !(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(192[4] 199[11])
    defparam DQ_out_dbg_31__I_149_4_lut.init = 16'hc38b;
    LUT4 i812_3_lut (.A(n1088), .B(n1087), .C(n1083), .Z(DQ_out_dbg_31__N_5[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i812_3_lut.init = 16'hcaca;
    LUT4 i1396_2_lut_rep_126_3_lut_4_lut (.A(byte_counter[2]), .B(byte_counter[3]), 
         .C(state_2__N_103), .D(n4), .Z(n3161)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(172[9:25])
    defparam i1396_2_lut_rep_126_3_lut_4_lut.init = 16'he0f0;
    LUT4 i2437_4_lut_3_lut (.A(n2506), .B(DQ_out_dbg_31__N_510), .C(n1057), 
         .Z(n1057)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i2437_4_lut_3_lut.init = 16'hdcdc;
    LUT4 i2357_2_lut (.A(n2458), .B(byte_counter[1]), .Z(DQ_out_dbg_31__N_510)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2357_2_lut.init = 16'h4444;
    LUT4 byte_counter_3__I_0_1604_i6_2_lut (.A(n5_adj_664), .B(byte_counter[3]), 
         .Z(n2458)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(108[8:24])
    defparam byte_counter_3__I_0_1604_i6_2_lut.init = 16'heeee;
    LUT4 i19_4_lut_adj_247 (.A(n3169), .B(byte_counter[2]), .C(n164), 
         .D(n8), .Z(n984)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i19_4_lut_adj_247.init = 16'hcac0;
    LUT4 DQ_out_dbg_24__I_0_4_lut (.A(DQ_out_dbg_31__N_5[24]), .B(DQ_out_dbg_31__N_246), 
         .C(n1692), .D(DQ_out_dbg_10__N_48), .Z(DQ_out_dbg_31__N_245)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam DQ_out_dbg_24__I_0_4_lut.init = 16'h0cac;
    LUT4 i862_3_lut (.A(n1138), .B(n1137), .C(n1121), .Z(DQ_out_dbg_31__N_5[19])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i862_3_lut.init = 16'hcaca;
    PFUMX i2663 (.BLUT(n3197), .ALUT(n3198), .C0(byte_counter[1]), .Z(DQ_out_dbg_31__N_216));
    LUT4 i1_4_lut_adj_248 (.A(n3172), .B(byte_counter_3__N_163[2]), .C(n3173), 
         .D(n3165), .Z(n8)) /* synthesis lut_function=(!(A ((C+!(D))+!B))) */ ;   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(99[3] 121[10])
    defparam i1_4_lut_adj_248.init = 16'h5d55;
    LUT4 i550_3_lut_4_lut_4_lut (.A(n3161), .B(byte_counter_3__N_163[1]), 
         .C(n3166), .D(n909), .Z(n814)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;
    defparam i550_3_lut_4_lut_4_lut.init = 16'he444;
    clk_div_2 clk_62_5 (.clk_out_test_c(clk_out_test_c), .clk_in_test_c(clk_in_test_c), 
            .reset_test_c(reset_test_c), .clk_out_N_663(clk_out_N_663));   // c:/users/damian/desktop/advances_4_7/hyperram.vhd(72[10:19])
    
endmodule
//
// Verilog Description of module clk_div_2
//

module clk_div_2 (clk_out_test_c, clk_in_test_c, reset_test_c, clk_out_N_663);
    output clk_out_test_c;
    input clk_in_test_c;
    input reset_test_c;
    input clk_out_N_663;
    
    wire clk_in_test_c /* synthesis is_clock=1 */ ;   // c:/users/damian/desktop/advances_4_7/hyperram_tb.vhd(6[2:13])
    
    FD1S3DX clk_aux_6 (.D(clk_out_N_663), .CK(clk_in_test_c), .CD(reset_test_c), 
            .Q(clk_out_test_c)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=10, LSE_RCOL=19, LSE_LLINE=72, LSE_RLINE=72 */ ;   // c:/users/damian/desktop/advances_4_7/clk_div_2.vhd(23[3] 27[10])
    defparam clk_aux_6.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

