// Verilog netlist produced by program LSE :  version Diamond Version 3.5.0.102
// Netlist written on Sun Jul 03 22:39:26 2022
//
// Verilog Description of module hram_interface
//

module hram_interface (clk_system, reset, ready, CS_n, CK_LVDS, DQ, 
            RWDS, RESET_n, estado);   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(10[8:22])
    input clk_system;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(13[9:19])
    input reset;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(14[9:14])
    output ready;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(15[9:14])
    output CS_n;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(34[9:13])
    output CK_LVDS;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(35[9:16])
    inout [31:0]DQ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(36[9:11])
    input RWDS /* synthesis .original_dir=IN_OUT */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(37[9:13])
    output RESET_n;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(38[9:16])
    output estado;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(41[3:9])
    
    wire clk_system_c /* synthesis is_clock=1 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(13[9:19])
    wire state /* synthesis is_clock=1 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(59[8:13])
    wire state_N_77 /* synthesis is_inv_clock=1 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(36[9:11])
    wire clk_system_N_69 /* synthesis is_inv_clock=1 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(61[8:20])
    
    wire GND_net, VCC_net, reset_c, CS_n_c, CK_LVDS_c, RESET_n_c, 
        estado_c;
    wire [2:0]byte_counter;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(61[8:20])
    
    wire n1106, DQ_out_12, DQ_out_10, state_N_79;
    wire [31:0]DQ_31__N_1;
    
    wire DQ_31__N_75, DQ_out_27, DQ_31__N_70, DQ_31__N_84, DQ_out_16, 
        DQ_31__N_85, DQ_out_28, DQ_out_17, DQ_out_29, DQ_out_18, DQ_31__N_91, 
        DQ_out_30, DQ_31__N_92, DQ_31__N_93, DQ_out_19, n1191, DQ_out_20, 
        DQ_31__N_99, DQ_out_21, DQ_31__N_100, DQ_31__N_101, DQ_out_22, 
        DQ_out_23, DQ_31__N_107, DQ_31__N_108, DQ_out_24, DQ_31__N_109, 
        DQ_3__N_58, n1199, DQ_out_25, n1286, DQ_out_26, DQ_out_15, 
        DQ_out_31, DQ_out_11, clk_system_N_69_enable_3, DQ_out_13, DQ_out_14, 
        DQ_out_9, DQ_out_8, DQ_out_7, DQ_out_6, n1065, DQ_out_5, 
        DQ_out_4, DQ_out_3, DQ_out_2, DQ_out_1, DQ_out_0, n1288, 
        n1287, n1285, n1233;
    
    VHI i2 (.Z(VCC_net));
    INV i1040 (.A(clk_system_c), .Z(clk_system_N_69));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(13[9:19])
    clk_div_2 clk_62_5 (.clk_in(clk_system_c), .reset(reset_c), .clk_out(CK_LVDS_c)) /* synthesis syn_instantiated=1 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(66[10:19])
    FD1S3IX DQ_i0 (.D(DQ_out_0), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[0]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i0.GSR = "ENABLED";
    FD1P3AX state_645 (.D(VCC_net), .SP(state_N_79), .CK(clk_system_N_69), 
            .Q(state));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam state_645.GSR = "ENABLED";
    FD1S3IX DQ_i1 (.D(DQ_out_1), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[1]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i1.GSR = "ENABLED";
    FD1S3AX DQ_i7 (.D(DQ_31__N_107), .CK(clk_system_N_69), .Q(DQ_31__N_1[7]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i7.GSR = "ENABLED";
    BB DQ_pad_30 (.I(DQ_31__N_1[30]), .T(n1065), .B(DQ[30]), .O(DQ_out_30));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i6 (.D(DQ_31__N_108), .CK(clk_system_N_69), .Q(DQ_31__N_1[6]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i6.GSR = "ENABLED";
    FD1S3AX DQ_i5 (.D(DQ_31__N_109), .CK(clk_system_N_69), .Q(DQ_31__N_1[5]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i5.GSR = "ENABLED";
    GSR GSR_INST (.GSR(RESET_n_c));
    BB DQ_pad_4 (.I(DQ_31__N_1[4]), .T(n1065), .B(DQ[4]), .O(DQ_out_4));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_5 (.I(DQ_31__N_1[5]), .T(n1065), .B(DQ[5]), .O(DQ_out_5));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_6 (.I(DQ_31__N_1[6]), .T(n1065), .B(DQ[6]), .O(DQ_out_6));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i31 (.D(DQ_31__N_70), .CK(clk_system_N_69), .Q(DQ_31__N_1[31]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i31.GSR = "ENABLED";
    FD1S3AX DQ_i30 (.D(DQ_31__N_84), .CK(clk_system_N_69), .Q(DQ_31__N_1[30]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i30.GSR = "ENABLED";
    BB DQ_pad_7 (.I(DQ_31__N_1[7]), .T(n1065), .B(DQ[7]), .O(DQ_out_7));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i29 (.D(DQ_31__N_85), .CK(clk_system_N_69), .Q(DQ_31__N_1[29]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i29.GSR = "ENABLED";
    FD1S3IX DQ_i28 (.D(DQ_out_28), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[28]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i28.GSR = "ENABLED";
    BB DQ_pad_8 (.I(DQ_31__N_1[8]), .T(n1065), .B(DQ[8]), .O(DQ_out_8));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i27 (.D(DQ_out_27), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[27]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i27.GSR = "ENABLED";
    FD1S3IX DQ_i26 (.D(DQ_out_26), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[26]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i26.GSR = "ENABLED";
    BB DQ_pad_9 (.I(DQ_31__N_1[9]), .T(n1065), .B(DQ[9]), .O(DQ_out_9));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i25 (.D(DQ_out_25), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[25]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i25.GSR = "ENABLED";
    FD1S3IX DQ_i24 (.D(DQ_out_24), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[24]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i24.GSR = "ENABLED";
    BB DQ_pad_10 (.I(DQ_31__N_1[10]), .T(n1065), .B(DQ[10]), .O(DQ_out_10));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i23 (.D(DQ_31__N_91), .CK(clk_system_N_69), .Q(DQ_31__N_1[23]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i23.GSR = "ENABLED";
    FD1S3AX DQ_i22 (.D(DQ_31__N_92), .CK(clk_system_N_69), .Q(DQ_31__N_1[22]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i22.GSR = "ENABLED";
    LUT4 DQ_7__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_7), .Z(DQ_31__N_107)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_7__I_0_3_lut_4_lut.init = 16'hdfd0;
    BB DQ_pad_11 (.I(DQ_31__N_1[11]), .T(n1065), .B(DQ[11]), .O(DQ_out_11));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i21 (.D(DQ_31__N_93), .CK(clk_system_N_69), .Q(DQ_31__N_1[21]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i21.GSR = "ENABLED";
    FD1P3IX byte_counter_728__i0 (.D(n1191), .SP(clk_system_N_69_enable_3), 
            .CD(n1106), .CK(clk_system_N_69), .Q(byte_counter[0]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[6] 101[13])
    defparam byte_counter_728__i0.GSR = "ENABLED";
    FD1S3IX DQ_i20 (.D(DQ_out_20), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[20]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i20.GSR = "ENABLED";
    IB reset_pad (.I(reset), .O(reset_c));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(14[9:14])
    BB DQ_pad_12 (.I(DQ_31__N_1[12]), .T(n1065), .B(DQ[12]), .O(DQ_out_12));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i19 (.D(DQ_out_19), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[19]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i19.GSR = "ENABLED";
    IB clk_system_pad (.I(clk_system), .O(clk_system_c));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(13[9:19])
    FD1S3IX DQ_i18 (.D(DQ_out_18), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[18]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i18.GSR = "ENABLED";
    OB estado_pad (.I(estado_c), .O(estado));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(41[3:9])
    BB DQ_pad_13 (.I(DQ_31__N_1[13]), .T(n1065), .B(DQ[13]), .O(DQ_out_13));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i17 (.D(DQ_out_17), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[17]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i17.GSR = "ENABLED";
    OB RESET_n_pad (.I(RESET_n_c), .O(RESET_n));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(38[9:16])
    FD1S3IX DQ_i16 (.D(DQ_out_16), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[16]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i16.GSR = "ENABLED";
    OB CK_LVDS_pad (.I(CK_LVDS_c), .O(CK_LVDS));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(35[9:16])
    BB DQ_pad_14 (.I(DQ_31__N_1[14]), .T(n1065), .B(DQ[14]), .O(DQ_out_14));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i15 (.D(DQ_31__N_99), .CK(clk_system_N_69), .Q(DQ_31__N_1[15]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i15.GSR = "ENABLED";
    OB CS_n_pad (.I(CS_n_c), .O(CS_n));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(34[9:13])
    FD1S3AX DQ_i14 (.D(DQ_31__N_100), .CK(clk_system_N_69), .Q(DQ_31__N_1[14]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i14.GSR = "ENABLED";
    OB ready_pad (.I(GND_net), .O(ready));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(15[9:14])
    BB DQ_pad_15 (.I(DQ_31__N_1[15]), .T(n1065), .B(DQ[15]), .O(DQ_out_15));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3AX DQ_i13 (.D(DQ_31__N_101), .CK(clk_system_N_69), .Q(DQ_31__N_1[13]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i13.GSR = "ENABLED";
    LUT4 DQ_5__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_5), .Z(DQ_31__N_109)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_5__I_0_3_lut_4_lut.init = 16'hdfd0;
    FD1S3IX DQ_i12 (.D(DQ_out_12), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[12]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i12.GSR = "ENABLED";
    BB DQ_pad_0 (.I(DQ_31__N_1[0]), .T(n1065), .B(DQ[0]), .O(DQ_out_0));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_16 (.I(DQ_31__N_1[16]), .T(n1065), .B(DQ[16]), .O(DQ_out_16));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i11 (.D(DQ_out_11), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[11]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i11.GSR = "ENABLED";
    LUT4 DQ_29__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_29), .Z(DQ_31__N_85)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_29__I_0_3_lut_4_lut.init = 16'hdfd0;
    FD1S3IX DQ_i10 (.D(DQ_out_10), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[10]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i10.GSR = "ENABLED";
    BB DQ_pad_1 (.I(DQ_31__N_1[1]), .T(n1065), .B(DQ[1]), .O(DQ_out_1));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    LUT4 DQ_14__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_14), .Z(DQ_31__N_100)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_14__I_0_3_lut_4_lut.init = 16'hdfd0;
    BB DQ_pad_17 (.I(DQ_31__N_1[17]), .T(n1065), .B(DQ[17]), .O(DQ_out_17));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i9 (.D(DQ_out_9), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[9]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i9.GSR = "ENABLED";
    FD1S3IX DQ_i8 (.D(DQ_out_8), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[8]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i8.GSR = "ENABLED";
    BB DQ_pad_2 (.I(DQ_31__N_1[2]), .T(n1065), .B(DQ[2]), .O(DQ_out_2));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_18 (.I(DQ_31__N_1[18]), .T(n1065), .B(DQ[18]), .O(DQ_out_18));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3BX estado_678 (.D(n1288), .CK(state_N_77), .PD(state), .Q(estado_c));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(122[3] 124[10])
    defparam estado_678.GSR = "DISABLED";
    LUT4 i12_3_lut (.A(byte_counter[1]), .B(byte_counter[2]), .C(byte_counter[0]), 
         .Z(n1199)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[6] 101[13])
    defparam i12_3_lut.init = 16'h6464;
    BB DQ_pad_19 (.I(DQ_31__N_1[19]), .T(n1065), .B(DQ[19]), .O(DQ_out_19));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1S3IX DQ_i4 (.D(DQ_out_4), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[4]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i4.GSR = "ENABLED";
    FD1S3IX DQ_i3 (.D(DQ_out_3), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[3]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i3.GSR = "ENABLED";
    FD1P3IX byte_counter_728__i1 (.D(n1233), .SP(clk_system_N_69_enable_3), 
            .CD(n1106), .CK(clk_system_N_69), .Q(byte_counter[1]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[6] 101[13])
    defparam byte_counter_728__i1.GSR = "ENABLED";
    BB DQ_pad_3 (.I(DQ_31__N_1[3]), .T(n1065), .B(DQ[3]), .O(DQ_out_3));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1P3AX i579_674 (.D(n1287), .SP(DQ_31__N_75), .CK(clk_system_N_69), 
            .Q(DQ_3__N_58));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam i579_674.GSR = "ENABLED";
    BB DQ_pad_20 (.I(DQ_31__N_1[20]), .T(n1065), .B(DQ[20]), .O(DQ_out_20));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_21 (.I(DQ_31__N_1[21]), .T(n1065), .B(DQ[21]), .O(DQ_out_21));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    LUT4 DQ_13__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_13), .Z(DQ_31__N_101)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_13__I_0_3_lut_4_lut.init = 16'hdfd0;
    BB DQ_pad_22 (.I(DQ_31__N_1[22]), .T(n1065), .B(DQ[22]), .O(DQ_out_22));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_23 (.I(DQ_31__N_1[23]), .T(n1065), .B(DQ[23]), .O(DQ_out_23));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_24 (.I(DQ_31__N_1[24]), .T(n1065), .B(DQ[24]), .O(DQ_out_24));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    FD1P3IX byte_counter_728__i2 (.D(n1199), .SP(clk_system_N_69_enable_3), 
            .CD(n1106), .CK(clk_system_N_69), .Q(byte_counter[2]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[6] 101[13])
    defparam byte_counter_728__i2.GSR = "ENABLED";
    BB DQ_pad_25 (.I(DQ_31__N_1[25]), .T(n1065), .B(DQ[25]), .O(DQ_out_25));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_26 (.I(DQ_31__N_1[26]), .T(n1065), .B(DQ[26]), .O(DQ_out_26));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_27 (.I(DQ_31__N_1[27]), .T(n1065), .B(DQ[27]), .O(DQ_out_27));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_28 (.I(DQ_31__N_1[28]), .T(n1065), .B(DQ[28]), .O(DQ_out_28));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    BB DQ_pad_29 (.I(DQ_31__N_1[29]), .T(n1065), .B(DQ[29]), .O(DQ_out_29));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    LUT4 i908_2_lut_rep_17 (.A(byte_counter[1]), .B(byte_counter[2]), .Z(n1285)) /* synthesis lut_function=(A (B)) */ ;
    defparam i908_2_lut_rep_17.init = 16'h8888;
    FD1S3IX DQ_i2 (.D(DQ_out_2), .CK(clk_system_N_69), .CD(DQ_31__N_75), 
            .Q(DQ_31__N_1[2]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(93[5] 107[11])
    defparam DQ_i2.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(byte_counter[1]), .B(byte_counter[2]), .C(byte_counter[0]), 
         .Z(n1233)) /* synthesis lut_function=(!(A (B+(C))+!A !(C))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h5252;
    BB DQ_pad_31 (.I(DQ_31__N_1[31]), .T(n1065), .B(DQ[31]), .O(DQ_out_31));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    LUT4 i1027_4_lut_4_lut (.A(n1286), .B(n1285), .C(state), .D(n1287), 
         .Z(clk_system_N_69_enable_3)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam i1027_4_lut_4_lut.init = 16'h070f;
    LUT4 i845_1_lut (.A(DQ_3__N_58), .Z(n1065)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(76[1] 109[14])
    defparam i845_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_rep_18 (.A(byte_counter[2]), .B(byte_counter[1]), .C(byte_counter[0]), 
         .Z(n1286)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_rep_18.init = 16'hfefe;
    LUT4 m0_lut (.Z(n1288)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    LUT4 reset_I_0_1_lut (.A(reset_c), .Z(RESET_n_c)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(74[12:22])
    defparam reset_I_0_1_lut.init = 16'h5555;
    LUT4 DQ_15__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_15), .Z(DQ_31__N_99)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_15__I_0_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i1024_3_lut_4_lut_3_lut (.A(byte_counter[2]), .B(byte_counter[1]), 
         .C(byte_counter[0]), .Z(n1191)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam i1024_3_lut_4_lut_3_lut.init = 16'h0707;
    LUT4 i1_3_lut_rep_19 (.A(byte_counter[2]), .B(byte_counter[1]), .C(byte_counter[0]), 
         .Z(n1287)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(102[9:25])
    defparam i1_3_lut_rep_19.init = 16'hf7f7;
    LUT4 i1021_3_lut_4_lut_4_lut (.A(byte_counter[2]), .B(byte_counter[1]), 
         .C(byte_counter[0]), .D(state), .Z(DQ_31__N_75)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(102[9:25])
    defparam i1021_3_lut_4_lut_4_lut.init = 16'h007f;
    LUT4 i898_2_lut_4_lut (.A(byte_counter[2]), .B(byte_counter[1]), .C(byte_counter[0]), 
         .D(state), .Z(state_N_79)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (D)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(102[9:25])
    defparam i898_2_lut_4_lut.init = 16'hff08;
    LUT4 DQ_6__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_6), .Z(DQ_31__N_108)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_6__I_0_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i3_4_lut (.A(byte_counter[2]), .B(state), .C(byte_counter[0]), 
         .D(byte_counter[1]), .Z(n1106)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut.init = 16'h0200;
    LUT4 DQ_30__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_30), .Z(DQ_31__N_84)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_30__I_0_3_lut_4_lut.init = 16'hdfd0;
    LUT4 DQ_31__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_31), .Z(DQ_31__N_70)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_31__I_0_3_lut_4_lut.init = 16'hdfd0;
    LUT4 i1029_4_lut (.A(CS_n_c), .B(reset_c), .C(state), .D(CK_LVDS_c), 
         .Z(CS_n_c)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(78[3] 108[10])
    defparam i1029_4_lut.init = 16'heeec;
    INV i1039 (.A(state), .Z(state_N_77));
    LUT4 DQ_23__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_23), .Z(DQ_31__N_91)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_23__I_0_3_lut_4_lut.init = 16'hdfd0;
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 DQ_22__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_22), .Z(DQ_31__N_92)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_22__I_0_3_lut_4_lut.init = 16'hdfd0;
    LUT4 DQ_21__I_0_3_lut_4_lut (.A(n1286), .B(n1285), .C(DQ_31__N_75), 
         .D(DQ_out_21), .Z(DQ_31__N_93)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(98[10:48])
    defparam DQ_21__I_0_3_lut_4_lut.init = 16'hdfd0;
    
endmodule
//
// Verilog Description of module clk_div_2
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

