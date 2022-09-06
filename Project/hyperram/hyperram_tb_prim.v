// Verilog netlist produced by program LSE :  version Diamond Version 3.5.0.102
// Netlist written on Wed Jul 06 10:43:04 2022
//
// Verilog Description of module hyperram_tb
//

module hyperram_tb (write_start_test, read_start_test, clk_out_test, CS_n_test, 
            ready_test, DQ_in_dbg_test, DQ_out_dbg_test, start_address_test, 
            write_fifo_data_test, write_fifo_data_rd_enable_test, write_fifo_empty_test, 
            read_fifo_data_test, read_fifo_wr_enable_test, read_fifo_full_test);   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(4[8:19])
    input write_start_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(8[2:18])
    input read_start_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(9[2:17])
    output clk_out_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(10[3:15])
    output CS_n_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(12[3:12])
    output ready_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(13[2:12])
    input [31:0]DQ_in_dbg_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(16[2:16])
    output [31:0]DQ_out_dbg_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(17[2:17])
    input [31:0]start_address_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(20[2:20])
    input [31:0]write_fifo_data_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    output write_fifo_data_rd_enable_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(22[5:35])
    input write_fifo_empty_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(23[2:23])
    output [31:0]read_fifo_data_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    output read_fifo_wr_enable_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(25[5:29])
    input read_fifo_full_test;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(26[5:24])
    
    
    wire GND_net, VCC_net, write_fifo_data_test_c_31, write_fifo_data_test_c_30, 
        write_fifo_data_test_c_29, write_fifo_data_test_c_28, write_fifo_data_test_c_27, 
        write_fifo_data_test_c_26, write_fifo_data_test_c_25, write_fifo_data_test_c_24, 
        write_fifo_data_test_c_23, write_fifo_data_test_c_22, write_fifo_data_test_c_21, 
        write_fifo_data_test_c_20, write_fifo_data_test_c_19, write_fifo_data_test_c_18, 
        write_fifo_data_test_c_17, write_fifo_data_test_c_16, write_fifo_data_test_c_15, 
        write_fifo_data_test_c_14, write_fifo_data_test_c_13, write_fifo_data_test_c_12, 
        write_fifo_data_test_c_11, write_fifo_data_test_c_10, write_fifo_data_test_c_9, 
        write_fifo_data_test_c_8, write_fifo_data_test_c_7, write_fifo_data_test_c_6, 
        write_fifo_data_test_c_5, write_fifo_data_test_c_4, write_fifo_data_test_c_3, 
        write_fifo_data_test_c_2, write_fifo_data_test_c_1, write_fifo_data_test_c_0, 
        write_fifo_empty_test_c, read_fifo_data_test_c_31, read_fifo_data_test_c_30, 
        read_fifo_data_test_c_29, read_fifo_data_test_c_28, read_fifo_data_test_c_27, 
        read_fifo_data_test_c_26, read_fifo_data_test_c_25, read_fifo_data_test_c_24, 
        read_fifo_data_test_c_23, read_fifo_data_test_c_22, read_fifo_data_test_c_21, 
        read_fifo_data_test_c_20, read_fifo_data_test_c_19, read_fifo_data_test_c_18, 
        read_fifo_data_test_c_17, read_fifo_data_test_c_16, read_fifo_data_test_c_15, 
        read_fifo_data_test_c_14, read_fifo_data_test_c_13, read_fifo_data_test_c_12, 
        read_fifo_data_test_c_11, read_fifo_data_test_c_10, read_fifo_data_test_c_9, 
        read_fifo_data_test_c_8, read_fifo_data_test_c_7, read_fifo_data_test_c_6, 
        read_fifo_data_test_c_5, read_fifo_data_test_c_4, read_fifo_data_test_c_3, 
        read_fifo_data_test_c_2, read_fifo_data_test_c_1, read_fifo_data_test_c_0, 
        read_fifo_wr_enable_test_c;
    wire [31:0]DQ_out_dbg_31__N_38;
    
    wire n1065;
    
    VHI i2 (.Z(VCC_net));
    OB read_fifo_data_test_pad_16 (.I(read_fifo_data_test_c_16), .O(read_fifo_data_test[16]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_17 (.I(read_fifo_data_test_c_17), .O(read_fifo_data_test[17]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_18 (.I(read_fifo_data_test_c_18), .O(read_fifo_data_test[18]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_19 (.I(read_fifo_data_test_c_19), .O(read_fifo_data_test[19]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_25 (.I(read_fifo_data_test_c_25), .O(read_fifo_data_test[25]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OBZ DQ_out_dbg_test_pad_29 (.I(DQ_out_dbg_31__N_38[29]), .T(VCC_net), 
        .O(DQ_out_dbg_test[29]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_19 (.I(DQ_out_dbg_31__N_38[19]), .T(VCC_net), 
        .O(DQ_out_dbg_test[19]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_30 (.I(DQ_out_dbg_31__N_38[30]), .T(VCC_net), 
        .O(DQ_out_dbg_test[30]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_20 (.I(DQ_out_dbg_31__N_38[20]), .T(VCC_net), 
        .O(DQ_out_dbg_test[20]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_21 (.I(DQ_out_dbg_31__N_38[21]), .T(VCC_net), 
        .O(DQ_out_dbg_test[21]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_22 (.I(DQ_out_dbg_31__N_38[22]), .T(VCC_net), 
        .O(DQ_out_dbg_test[22]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB read_fifo_data_test_pad_31 (.I(read_fifo_data_test_c_31), .O(read_fifo_data_test[31]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB write_fifo_data_rd_enable_test_pad (.I(GND_net), .O(write_fifo_data_rd_enable_test));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(22[5:35])
    OB read_fifo_data_test_pad_27 (.I(read_fifo_data_test_c_27), .O(read_fifo_data_test[27]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OBZ DQ_out_dbg_test_pad_0 (.I(DQ_out_dbg_31__N_38[0]), .T(VCC_net), 
        .O(DQ_out_dbg_test[0]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB read_fifo_data_test_pad_20 (.I(read_fifo_data_test_c_20), .O(read_fifo_data_test[20]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OBZ DQ_out_dbg_test_pad_31 (.I(DQ_out_dbg_31__N_38[31]), .T(VCC_net), 
        .O(DQ_out_dbg_test[31]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB ready_test_pad (.I(GND_net), .O(ready_test));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(13[2:12])
    OB CS_n_test_pad (.I(VCC_net), .O(CS_n_test));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(12[3:12])
    OBZ DQ_out_dbg_test_pad_23 (.I(DQ_out_dbg_31__N_38[23]), .T(VCC_net), 
        .O(DQ_out_dbg_test[23]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_24 (.I(DQ_out_dbg_31__N_38[24]), .T(VCC_net), 
        .O(DQ_out_dbg_test[24]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_1 (.I(DQ_out_dbg_31__N_38[1]), .T(VCC_net), 
        .O(DQ_out_dbg_test[1]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_25 (.I(DQ_out_dbg_31__N_38[25]), .T(VCC_net), 
        .O(DQ_out_dbg_test[25]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_26 (.I(DQ_out_dbg_31__N_38[26]), .T(VCC_net), 
        .O(DQ_out_dbg_test[26]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_27 (.I(DQ_out_dbg_31__N_38[27]), .T(VCC_net), 
        .O(DQ_out_dbg_test[27]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_2 (.I(DQ_out_dbg_31__N_38[2]), .T(VCC_net), 
        .O(DQ_out_dbg_test[2]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_3 (.I(DQ_out_dbg_31__N_38[3]), .T(VCC_net), 
        .O(DQ_out_dbg_test[3]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_4 (.I(DQ_out_dbg_31__N_38[4]), .T(VCC_net), 
        .O(DQ_out_dbg_test[4]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_5 (.I(DQ_out_dbg_31__N_38[5]), .T(VCC_net), 
        .O(DQ_out_dbg_test[5]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_6 (.I(DQ_out_dbg_31__N_38[6]), .T(VCC_net), 
        .O(DQ_out_dbg_test[6]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_7 (.I(DQ_out_dbg_31__N_38[7]), .T(VCC_net), 
        .O(DQ_out_dbg_test[7]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OBZ DQ_out_dbg_test_pad_8 (.I(DQ_out_dbg_31__N_38[8]), .T(VCC_net), 
        .O(DQ_out_dbg_test[8]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_empty_test_pad (.I(write_fifo_empty_test), .O(write_fifo_empty_test_c));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(23[2:23])
    OBZ DQ_out_dbg_test_pad_9 (.I(DQ_out_dbg_31__N_38[9]), .T(VCC_net), 
        .O(DQ_out_dbg_test[9]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_0 (.I(write_fifo_data_test[0]), .O(write_fifo_data_test_c_0));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_1 (.I(write_fifo_data_test[1]), .O(write_fifo_data_test_c_1));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_2 (.I(write_fifo_data_test[2]), .O(write_fifo_data_test_c_2));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_3 (.I(write_fifo_data_test[3]), .O(write_fifo_data_test_c_3));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_10 (.I(DQ_out_dbg_31__N_38[10]), .T(VCC_net), 
        .O(DQ_out_dbg_test[10]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_4 (.I(write_fifo_data_test[4]), .O(write_fifo_data_test_c_4));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_5 (.I(write_fifo_data_test[5]), .O(write_fifo_data_test_c_5));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_6 (.I(write_fifo_data_test[6]), .O(write_fifo_data_test_c_6));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_7 (.I(write_fifo_data_test[7]), .O(write_fifo_data_test_c_7));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_11 (.I(DQ_out_dbg_31__N_38[11]), .T(VCC_net), 
        .O(DQ_out_dbg_test[11]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_8 (.I(write_fifo_data_test[8]), .O(write_fifo_data_test_c_8));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_9 (.I(write_fifo_data_test[9]), .O(write_fifo_data_test_c_9));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_10 (.I(write_fifo_data_test[10]), .O(write_fifo_data_test_c_10));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_11 (.I(write_fifo_data_test[11]), .O(write_fifo_data_test_c_11));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_12 (.I(DQ_out_dbg_31__N_38[12]), .T(VCC_net), 
        .O(DQ_out_dbg_test[12]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_12 (.I(write_fifo_data_test[12]), .O(write_fifo_data_test_c_12));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_13 (.I(write_fifo_data_test[13]), .O(write_fifo_data_test_c_13));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_14 (.I(write_fifo_data_test[14]), .O(write_fifo_data_test_c_14));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_15 (.I(write_fifo_data_test[15]), .O(write_fifo_data_test_c_15));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_13 (.I(DQ_out_dbg_31__N_38[13]), .T(VCC_net), 
        .O(DQ_out_dbg_test[13]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_16 (.I(write_fifo_data_test[16]), .O(write_fifo_data_test_c_16));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_17 (.I(write_fifo_data_test[17]), .O(write_fifo_data_test_c_17));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_18 (.I(write_fifo_data_test[18]), .O(write_fifo_data_test_c_18));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_19 (.I(write_fifo_data_test[19]), .O(write_fifo_data_test_c_19));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_14 (.I(DQ_out_dbg_31__N_38[14]), .T(VCC_net), 
        .O(DQ_out_dbg_test[14]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_20 (.I(write_fifo_data_test[20]), .O(write_fifo_data_test_c_20));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_21 (.I(write_fifo_data_test[21]), .O(write_fifo_data_test_c_21));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_22 (.I(write_fifo_data_test[22]), .O(write_fifo_data_test_c_22));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_23 (.I(write_fifo_data_test[23]), .O(write_fifo_data_test_c_23));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_15 (.I(DQ_out_dbg_31__N_38[15]), .T(VCC_net), 
        .O(DQ_out_dbg_test[15]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_24 (.I(write_fifo_data_test[24]), .O(write_fifo_data_test_c_24));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_25 (.I(write_fifo_data_test[25]), .O(write_fifo_data_test_c_25));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_26 (.I(write_fifo_data_test[26]), .O(write_fifo_data_test_c_26));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_27 (.I(write_fifo_data_test[27]), .O(write_fifo_data_test_c_27));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_16 (.I(DQ_out_dbg_31__N_38[16]), .T(VCC_net), 
        .O(DQ_out_dbg_test[16]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    IB write_fifo_data_test_pad_28 (.I(write_fifo_data_test[28]), .O(write_fifo_data_test_c_28));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_29 (.I(write_fifo_data_test[29]), .O(write_fifo_data_test_c_29));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_30 (.I(write_fifo_data_test[30]), .O(write_fifo_data_test_c_30));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    IB write_fifo_data_test_pad_31 (.I(write_fifo_data_test[31]), .O(write_fifo_data_test_c_31));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(21[2:22])
    OBZ DQ_out_dbg_test_pad_17 (.I(DQ_out_dbg_31__N_38[17]), .T(VCC_net), 
        .O(DQ_out_dbg_test[17]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB read_fifo_wr_enable_test_pad (.I(read_fifo_wr_enable_test_c), .O(read_fifo_wr_enable_test));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(25[5:29])
    OB read_fifo_data_test_pad_0 (.I(read_fifo_data_test_c_0), .O(read_fifo_data_test[0]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_1 (.I(read_fifo_data_test_c_1), .O(read_fifo_data_test[1]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_2 (.I(read_fifo_data_test_c_2), .O(read_fifo_data_test[2]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OBZ DQ_out_dbg_test_pad_18 (.I(DQ_out_dbg_31__N_38[18]), .T(VCC_net), 
        .O(DQ_out_dbg_test[18]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB read_fifo_data_test_pad_3 (.I(read_fifo_data_test_c_3), .O(read_fifo_data_test[3]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_4 (.I(read_fifo_data_test_c_4), .O(read_fifo_data_test[4]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_5 (.I(read_fifo_data_test_c_5), .O(read_fifo_data_test[5]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_6 (.I(read_fifo_data_test_c_6), .O(read_fifo_data_test[6]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_7 (.I(read_fifo_data_test_c_7), .O(read_fifo_data_test[7]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_8 (.I(read_fifo_data_test_c_8), .O(read_fifo_data_test[8]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_9 (.I(read_fifo_data_test_c_9), .O(read_fifo_data_test[9]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_10 (.I(read_fifo_data_test_c_10), .O(read_fifo_data_test[10]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    GSR GSR_INST (.GSR(DQ_out_dbg_31__N_38[5]));
    OB clk_out_test_pad (.I(GND_net), .O(clk_out_test));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(10[3:15])
    OBZ DQ_out_dbg_test_pad_28 (.I(DQ_out_dbg_31__N_38[28]), .T(VCC_net), 
        .O(DQ_out_dbg_test[28]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(84[1] 379[13])
    OB read_fifo_data_test_pad_11 (.I(read_fifo_data_test_c_11), .O(read_fifo_data_test[11]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_28 (.I(read_fifo_data_test_c_28), .O(read_fifo_data_test[28]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_26 (.I(read_fifo_data_test_c_26), .O(read_fifo_data_test[26]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_21 (.I(read_fifo_data_test_c_21), .O(read_fifo_data_test[21]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_22 (.I(read_fifo_data_test_c_22), .O(read_fifo_data_test[22]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_29 (.I(read_fifo_data_test_c_29), .O(read_fifo_data_test[29]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_30 (.I(read_fifo_data_test_c_30), .O(read_fifo_data_test[30]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_23 (.I(read_fifo_data_test_c_23), .O(read_fifo_data_test[23]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_24 (.I(read_fifo_data_test_c_24), .O(read_fifo_data_test[24]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_12 (.I(read_fifo_data_test_c_12), .O(read_fifo_data_test[12]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_13 (.I(read_fifo_data_test_c_13), .O(read_fifo_data_test[13]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_14 (.I(read_fifo_data_test_c_14), .O(read_fifo_data_test[14]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    OB read_fifo_data_test_pad_15 (.I(read_fifo_data_test_c_15), .O(read_fifo_data_test[15]));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(24[2:21])
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    hram_interface uut (.write_fifo_data_test_c_26(write_fifo_data_test_c_26), 
            .write_fifo_empty_test_c(write_fifo_empty_test_c), .GND_net(GND_net), 
            .n1065(n1065), .read_fifo_data_test_c_26(read_fifo_data_test_c_26), 
            .write_fifo_data_test_c_24(write_fifo_data_test_c_24), .DQ_out_dbg_31__N_38({DQ_out_dbg_31__N_38}), 
            .read_fifo_data_test_c_28(read_fifo_data_test_c_28), .read_fifo_data_test_c_25(read_fifo_data_test_c_25), 
            .read_fifo_data_test_c_11(read_fifo_data_test_c_11), .read_fifo_data_test_c_10(read_fifo_data_test_c_10), 
            .write_fifo_data_test_c_4(write_fifo_data_test_c_4), .read_fifo_data_test_c_9(read_fifo_data_test_c_9), 
            .read_fifo_data_test_c_8(read_fifo_data_test_c_8), .read_fifo_data_test_c_7(read_fifo_data_test_c_7), 
            .read_fifo_data_test_c_6(read_fifo_data_test_c_6), .read_fifo_data_test_c_5(read_fifo_data_test_c_5), 
            .read_fifo_data_test_c_19(read_fifo_data_test_c_19), .read_fifo_data_test_c_4(read_fifo_data_test_c_4), 
            .read_fifo_data_test_c_3(read_fifo_data_test_c_3), .write_fifo_data_test_c_23(write_fifo_data_test_c_23), 
            .read_fifo_data_test_c_2(read_fifo_data_test_c_2), .read_fifo_data_test_c_1(read_fifo_data_test_c_1), 
            .read_fifo_data_test_c_0(read_fifo_data_test_c_0), .read_fifo_wr_enable_test_c(read_fifo_wr_enable_test_c), 
            .read_fifo_data_test_c_20(read_fifo_data_test_c_20), .read_fifo_data_test_c_27(read_fifo_data_test_c_27), 
            .read_fifo_data_test_c_31(read_fifo_data_test_c_31), .read_fifo_data_test_c_18(read_fifo_data_test_c_18), 
            .read_fifo_data_test_c_17(read_fifo_data_test_c_17), .VCC_net(VCC_net), 
            .write_fifo_data_test_c_3(write_fifo_data_test_c_3), .write_fifo_data_test_c_18(write_fifo_data_test_c_18), 
            .write_fifo_data_test_c_2(write_fifo_data_test_c_2), .write_fifo_data_test_c_1(write_fifo_data_test_c_1), 
            .write_fifo_data_test_c_22(write_fifo_data_test_c_22), .write_fifo_data_test_c_0(write_fifo_data_test_c_0), 
            .write_fifo_data_test_c_27(write_fifo_data_test_c_27), .write_fifo_data_test_c_31(write_fifo_data_test_c_31), 
            .write_fifo_data_test_c_15(write_fifo_data_test_c_15), .write_fifo_data_test_c_30(write_fifo_data_test_c_30), 
            .write_fifo_data_test_c_21(write_fifo_data_test_c_21), .write_fifo_data_test_c_14(write_fifo_data_test_c_14), 
            .write_fifo_data_test_c_17(write_fifo_data_test_c_17), .write_fifo_data_test_c_29(write_fifo_data_test_c_29), 
            .write_fifo_data_test_c_28(write_fifo_data_test_c_28), .write_fifo_data_test_c_12(write_fifo_data_test_c_12), 
            .write_fifo_data_test_c_19(write_fifo_data_test_c_19), .write_fifo_data_test_c_8(write_fifo_data_test_c_8), 
            .write_fifo_data_test_c_25(write_fifo_data_test_c_25), .write_fifo_data_test_c_11(write_fifo_data_test_c_11), 
            .write_fifo_data_test_c_7(write_fifo_data_test_c_7), .write_fifo_data_test_c_6(write_fifo_data_test_c_6), 
            .write_fifo_data_test_c_20(write_fifo_data_test_c_20), .read_fifo_data_test_c_14(read_fifo_data_test_c_14), 
            .read_fifo_data_test_c_13(read_fifo_data_test_c_13), .read_fifo_data_test_c_12(read_fifo_data_test_c_12), 
            .write_fifo_data_test_c_13(write_fifo_data_test_c_13), .write_fifo_data_test_c_10(write_fifo_data_test_c_10), 
            .write_fifo_data_test_c_9(write_fifo_data_test_c_9), .read_fifo_data_test_c_15(read_fifo_data_test_c_15), 
            .read_fifo_data_test_c_24(read_fifo_data_test_c_24), .write_fifo_data_test_c_5(write_fifo_data_test_c_5), 
            .read_fifo_data_test_c_23(read_fifo_data_test_c_23), .read_fifo_data_test_c_30(read_fifo_data_test_c_30), 
            .read_fifo_data_test_c_16(read_fifo_data_test_c_16), .read_fifo_data_test_c_29(read_fifo_data_test_c_29), 
            .read_fifo_data_test_c_22(read_fifo_data_test_c_22), .write_fifo_data_test_c_16(write_fifo_data_test_c_16), 
            .read_fifo_data_test_c_21(read_fifo_data_test_c_21));   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram_tb.vhd(100[7:21])
    LUT4 m0_lut (.Z(n1065)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module hram_interface
//

module hram_interface (write_fifo_data_test_c_26, write_fifo_empty_test_c, 
            GND_net, n1065, read_fifo_data_test_c_26, write_fifo_data_test_c_24, 
            DQ_out_dbg_31__N_38, read_fifo_data_test_c_28, read_fifo_data_test_c_25, 
            read_fifo_data_test_c_11, read_fifo_data_test_c_10, write_fifo_data_test_c_4, 
            read_fifo_data_test_c_9, read_fifo_data_test_c_8, read_fifo_data_test_c_7, 
            read_fifo_data_test_c_6, read_fifo_data_test_c_5, read_fifo_data_test_c_19, 
            read_fifo_data_test_c_4, read_fifo_data_test_c_3, write_fifo_data_test_c_23, 
            read_fifo_data_test_c_2, read_fifo_data_test_c_1, read_fifo_data_test_c_0, 
            read_fifo_wr_enable_test_c, read_fifo_data_test_c_20, read_fifo_data_test_c_27, 
            read_fifo_data_test_c_31, read_fifo_data_test_c_18, read_fifo_data_test_c_17, 
            VCC_net, write_fifo_data_test_c_3, write_fifo_data_test_c_18, 
            write_fifo_data_test_c_2, write_fifo_data_test_c_1, write_fifo_data_test_c_22, 
            write_fifo_data_test_c_0, write_fifo_data_test_c_27, write_fifo_data_test_c_31, 
            write_fifo_data_test_c_15, write_fifo_data_test_c_30, write_fifo_data_test_c_21, 
            write_fifo_data_test_c_14, write_fifo_data_test_c_17, write_fifo_data_test_c_29, 
            write_fifo_data_test_c_28, write_fifo_data_test_c_12, write_fifo_data_test_c_19, 
            write_fifo_data_test_c_8, write_fifo_data_test_c_25, write_fifo_data_test_c_11, 
            write_fifo_data_test_c_7, write_fifo_data_test_c_6, write_fifo_data_test_c_20, 
            read_fifo_data_test_c_14, read_fifo_data_test_c_13, read_fifo_data_test_c_12, 
            write_fifo_data_test_c_13, write_fifo_data_test_c_10, write_fifo_data_test_c_9, 
            read_fifo_data_test_c_15, read_fifo_data_test_c_24, write_fifo_data_test_c_5, 
            read_fifo_data_test_c_23, read_fifo_data_test_c_30, read_fifo_data_test_c_16, 
            read_fifo_data_test_c_29, read_fifo_data_test_c_22, write_fifo_data_test_c_16, 
            read_fifo_data_test_c_21);
    input write_fifo_data_test_c_26;
    input write_fifo_empty_test_c;
    input GND_net;
    input n1065;
    output read_fifo_data_test_c_26;
    input write_fifo_data_test_c_24;
    output [31:0]DQ_out_dbg_31__N_38;
    output read_fifo_data_test_c_28;
    output read_fifo_data_test_c_25;
    output read_fifo_data_test_c_11;
    output read_fifo_data_test_c_10;
    input write_fifo_data_test_c_4;
    output read_fifo_data_test_c_9;
    output read_fifo_data_test_c_8;
    output read_fifo_data_test_c_7;
    output read_fifo_data_test_c_6;
    output read_fifo_data_test_c_5;
    output read_fifo_data_test_c_19;
    output read_fifo_data_test_c_4;
    output read_fifo_data_test_c_3;
    input write_fifo_data_test_c_23;
    output read_fifo_data_test_c_2;
    output read_fifo_data_test_c_1;
    output read_fifo_data_test_c_0;
    output read_fifo_wr_enable_test_c;
    output read_fifo_data_test_c_20;
    output read_fifo_data_test_c_27;
    output read_fifo_data_test_c_31;
    output read_fifo_data_test_c_18;
    output read_fifo_data_test_c_17;
    input VCC_net;
    input write_fifo_data_test_c_3;
    input write_fifo_data_test_c_18;
    input write_fifo_data_test_c_2;
    input write_fifo_data_test_c_1;
    input write_fifo_data_test_c_22;
    input write_fifo_data_test_c_0;
    input write_fifo_data_test_c_27;
    input write_fifo_data_test_c_31;
    input write_fifo_data_test_c_15;
    input write_fifo_data_test_c_30;
    input write_fifo_data_test_c_21;
    input write_fifo_data_test_c_14;
    input write_fifo_data_test_c_17;
    input write_fifo_data_test_c_29;
    input write_fifo_data_test_c_28;
    input write_fifo_data_test_c_12;
    input write_fifo_data_test_c_19;
    input write_fifo_data_test_c_8;
    input write_fifo_data_test_c_25;
    input write_fifo_data_test_c_11;
    input write_fifo_data_test_c_7;
    input write_fifo_data_test_c_6;
    input write_fifo_data_test_c_20;
    output read_fifo_data_test_c_14;
    output read_fifo_data_test_c_13;
    output read_fifo_data_test_c_12;
    input write_fifo_data_test_c_13;
    input write_fifo_data_test_c_10;
    input write_fifo_data_test_c_9;
    output read_fifo_data_test_c_15;
    output read_fifo_data_test_c_24;
    input write_fifo_data_test_c_5;
    output read_fifo_data_test_c_23;
    output read_fifo_data_test_c_30;
    output read_fifo_data_test_c_16;
    output read_fifo_data_test_c_29;
    output read_fifo_data_test_c_22;
    input write_fifo_data_test_c_16;
    output read_fifo_data_test_c_21;
    
    
    wire n856, n271, n901, n267, n859, n862, n299, n934, n922, 
        n1035, n865, n275, n877, n359, n898, n263, n356, DQ_out_dbg_31__N_724, 
        n925, n260, DQ_out_dbg_31__N_727, n352, n1043, n304, n841, 
        n347, n910, n255, n874, n880, n343, n907, n315, n850, 
        n339, n928, n312, n1042, n336, n1041, n252, n1040, n292, 
        n331, n308, n1039, n327, n904, n324, n1038, n287, n1037, 
        n319, n853, n931, n247, n296, n1036, n243, n239, n886, 
        n283, n868, n235, n883, n916, n889, n913, n844, n871, 
        n892, n895, n847;
    
    LUT4 i273_3_lut_3_lut (.A(write_fifo_data_test_c_26), .B(write_fifo_empty_test_c), 
         .Z(n856)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i273_3_lut_3_lut.init = 16'h2222;
    FD1S3BX DQ_out_dbg_i11_93_94_set (.D(n1065), .CK(GND_net), .PD(n901), 
            .Q(n271)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i11_93_94_set.GSR = "DISABLED";
    LUT4 i431_2_lut (.A(read_fifo_data_test_c_26), .Z(read_fifo_data_test_c_26)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i431_2_lut.init = 16'haaaa;
    FD1S3BX DQ_out_dbg_i25_89_90_set (.D(n1065), .CK(GND_net), .PD(n859), 
            .Q(n267)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i25_89_90_set.GSR = "DISABLED";
    LUT4 i297_3_lut_3_lut (.A(write_fifo_data_test_c_24), .B(write_fifo_empty_test_c), 
         .Z(n862)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i297_3_lut_3_lut.init = 16'h2222;
    LUT4 i240_2_lut (.A(n299), .B(n934), .Z(DQ_out_dbg_31__N_38[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i240_2_lut.init = 16'h8888;
    LUT4 i435_2_lut (.A(read_fifo_data_test_c_28), .Z(read_fifo_data_test_c_28)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i435_2_lut.init = 16'haaaa;
    LUT4 i429_2_lut (.A(read_fifo_data_test_c_25), .Z(read_fifo_data_test_c_25)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i429_2_lut.init = 16'haaaa;
    LUT4 i401_2_lut (.A(read_fifo_data_test_c_11), .Z(read_fifo_data_test_c_11)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i401_2_lut.init = 16'haaaa;
    LUT4 i399_2_lut (.A(read_fifo_data_test_c_10), .Z(read_fifo_data_test_c_10)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i399_2_lut.init = 16'haaaa;
    LUT4 i293_3_lut_3_lut (.A(write_fifo_data_test_c_4), .B(write_fifo_empty_test_c), 
         .Z(n922)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i293_3_lut_3_lut.init = 16'h2222;
    LUT4 i397_2_lut (.A(read_fifo_data_test_c_9), .Z(read_fifo_data_test_c_9)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i397_2_lut.init = 16'haaaa;
    LUT4 i395_2_lut (.A(read_fifo_data_test_c_8), .Z(read_fifo_data_test_c_8)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i395_2_lut.init = 16'haaaa;
    LUT4 i393_2_lut (.A(read_fifo_data_test_c_7), .Z(read_fifo_data_test_c_7)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i393_2_lut.init = 16'haaaa;
    LUT4 i391_2_lut (.A(read_fifo_data_test_c_6), .Z(read_fifo_data_test_c_6)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i391_2_lut.init = 16'haaaa;
    LUT4 i389_2_lut (.A(read_fifo_data_test_c_5), .Z(read_fifo_data_test_c_5)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i389_2_lut.init = 16'haaaa;
    LUT4 i417_2_lut (.A(read_fifo_data_test_c_19), .Z(read_fifo_data_test_c_19)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i417_2_lut.init = 16'haaaa;
    LUT4 i387_2_lut (.A(read_fifo_data_test_c_4), .Z(read_fifo_data_test_c_4)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i387_2_lut.init = 16'haaaa;
    LUT4 i385_2_lut (.A(read_fifo_data_test_c_3), .Z(read_fifo_data_test_c_3)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i385_2_lut.init = 16'haaaa;
    LUT4 DQ_out_dbg_31__N_495_I_0_1_lut_rep_26_2_lut (.A(write_fifo_data_test_c_23), 
         .B(write_fifo_empty_test_c), .Z(n1035)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_495_I_0_1_lut_rep_26_2_lut.init = 16'hdddd;
    LUT4 i383_2_lut (.A(read_fifo_data_test_c_2), .Z(read_fifo_data_test_c_2)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i383_2_lut.init = 16'haaaa;
    LUT4 i381_2_lut (.A(read_fifo_data_test_c_1), .Z(read_fifo_data_test_c_1)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i381_2_lut.init = 16'haaaa;
    LUT4 i337_2_lut (.A(read_fifo_data_test_c_0), .Z(read_fifo_data_test_c_0)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i337_2_lut.init = 16'haaaa;
    LUT4 i379_2_lut (.A(read_fifo_wr_enable_test_c), .Z(read_fifo_wr_enable_test_c)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i379_2_lut.init = 16'haaaa;
    LUT4 i419_2_lut (.A(read_fifo_data_test_c_20), .Z(read_fifo_data_test_c_20)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i419_2_lut.init = 16'haaaa;
    LUT4 i433_2_lut (.A(read_fifo_data_test_c_27), .Z(read_fifo_data_test_c_27)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i433_2_lut.init = 16'haaaa;
    LUT4 i441_2_lut (.A(read_fifo_data_test_c_31), .Z(read_fifo_data_test_c_31)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i441_2_lut.init = 16'haaaa;
    LUT4 i415_2_lut (.A(read_fifo_data_test_c_18), .Z(read_fifo_data_test_c_18)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i415_2_lut.init = 16'haaaa;
    LUT4 i301_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_23), .B(write_fifo_empty_test_c), 
         .Z(n865)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i301_4_lut_1_lut_2_lut.init = 16'h2222;
    LUT4 i413_2_lut (.A(read_fifo_data_test_c_17), .Z(read_fifo_data_test_c_17)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i413_2_lut.init = 16'haaaa;
    FD1S3BX DQ_out_dbg_i19_97_98_set (.D(n1065), .CK(GND_net), .PD(n877), 
            .Q(n275)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i19_97_98_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i12_181_182_set (.D(n1065), .CK(GND_net), .PD(n898), 
            .Q(n359)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i12_181_182_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i26_85_86_set (.D(n1065), .CK(GND_net), .PD(n856), 
            .Q(n263)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i26_85_86_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i7_177_178_reset (.D(VCC_net), .CK(GND_net), .CD(DQ_out_dbg_31__N_724), 
            .Q(n356)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i7_177_178_reset.GSR = "DISABLED";
    LUT4 i343_3_lut_3_lut (.A(write_fifo_data_test_c_3), .B(write_fifo_empty_test_c), 
         .Z(n925)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i343_3_lut_3_lut.init = 16'h2222;
    FD1S3DX DQ_out_dbg_i6_81_82_reset (.D(VCC_net), .CK(GND_net), .CD(DQ_out_dbg_31__N_727), 
            .Q(n260)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i6_81_82_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i13_173_174_reset (.D(VCC_net), .CK(GND_net), .CD(n1043), 
            .Q(n352)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i13_173_174_reset.GSR = "DISABLED";
    LUT4 i238_2_lut (.A(n304), .B(n841), .Z(DQ_out_dbg_31__N_38[31])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i238_2_lut.init = 16'heeee;
    FD1S3BX DQ_out_dbg_i8_169_170_set (.D(n1065), .CK(GND_net), .PD(n910), 
            .Q(n347)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i8_169_170_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i20_77_78_set (.D(n1065), .CK(GND_net), .PD(n874), 
            .Q(n255)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i20_77_78_set.GSR = "DISABLED";
    LUT4 i253_3_lut_3_lut (.A(write_fifo_data_test_c_18), .B(write_fifo_empty_test_c), 
         .Z(n880)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i253_3_lut_3_lut.init = 16'h2222;
    FD1S3BX DQ_out_dbg_i9_165_166_set (.D(n1065), .CK(GND_net), .PD(n907), 
            .Q(n343)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i9_165_166_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i28_137_138_set (.D(n1065), .CK(GND_net), .PD(n850), 
            .Q(n315)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i28_137_138_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i2_161_162_set (.D(n1065), .CK(GND_net), .PD(n928), 
            .Q(n339)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i2_161_162_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i29_133_134_reset (.D(VCC_net), .CK(GND_net), .CD(n1042), 
            .Q(n312)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i29_133_134_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i14_157_158_reset (.D(VCC_net), .CK(GND_net), .CD(n1041), 
            .Q(n336)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i14_157_158_reset.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i21_73_74_reset (.D(VCC_net), .CK(GND_net), .CD(n1040), 
            .Q(n252)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i21_73_74_reset.GSR = "DISABLED";
    LUT4 i243_2_lut (.A(n292), .B(n865), .Z(DQ_out_dbg_31__N_38[23])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i243_2_lut.init = 16'heeee;
    FD1S3BX DQ_out_dbg_i3_153_154_set (.D(n1065), .CK(GND_net), .PD(n925), 
            .Q(n331)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i3_153_154_set.GSR = "DISABLED";
    LUT4 i351_3_lut_3_lut (.A(write_fifo_data_test_c_2), .B(write_fifo_empty_test_c), 
         .Z(n928)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i351_3_lut_3_lut.init = 16'h2222;
    FD1S3DX DQ_out_dbg_i30_129_130_reset (.D(VCC_net), .CK(GND_net), .CD(n1039), 
            .Q(n308)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i30_129_130_reset.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i10_149_150_set (.D(n1065), .CK(GND_net), .PD(n904), 
            .Q(n327)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i10_149_150_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i15_145_146_reset (.D(VCC_net), .CK(GND_net), .CD(n1038), 
            .Q(n324)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i15_145_146_reset.GSR = "DISABLED";
    LUT4 i223_2_lut (.A(n287), .B(n862), .Z(DQ_out_dbg_31__N_38[24])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i223_2_lut.init = 16'h8888;
    FD1S3DX DQ_out_dbg_i31_125_126_reset (.D(VCC_net), .CK(GND_net), .CD(n1037), 
            .Q(n304)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i31_125_126_reset.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i27_141_142_set (.D(n1065), .CK(GND_net), .PD(n853), 
            .Q(n319)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i27_141_142_set.GSR = "DISABLED";
    LUT4 i257_3_lut_3_lut (.A(write_fifo_data_test_c_1), .B(write_fifo_empty_test_c), 
         .Z(n931)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i257_3_lut_3_lut.init = 16'h2222;
    FD1S3BX DQ_out_dbg_i1_69_70_set (.D(n1065), .CK(GND_net), .PD(n931), 
            .Q(n247)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i1_69_70_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i0_121_122_set (.D(n1065), .CK(GND_net), .PD(n934), 
            .Q(n299)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i0_121_122_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i22_117_118_reset (.D(VCC_net), .CK(GND_net), .CD(n1036), 
            .Q(n296)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i22_117_118_reset.GSR = "DISABLED";
    LUT4 i237_2_lut (.A(n247), .B(n931), .Z(DQ_out_dbg_31__N_38[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i237_2_lut.init = 16'h8888;
    FD1S3BX DQ_out_dbg_i18_65_66_set (.D(n1065), .CK(GND_net), .PD(n880), 
            .Q(n243)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i18_65_66_set.GSR = "DISABLED";
    FD1S3DX DQ_out_dbg_i23_113_114_reset (.D(VCC_net), .CK(GND_net), .CD(n1035), 
            .Q(n292)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i23_113_114_reset.GSR = "DISABLED";
    LUT4 DQ_out_dbg_31__N_502_I_0_1_lut_rep_27_2_lut (.A(write_fifo_data_test_c_22), 
         .B(write_fifo_empty_test_c), .Z(n1036)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_502_I_0_1_lut_rep_27_2_lut.init = 16'h1111;
    FD1S3BX DQ_out_dbg_i24_109_110_set (.D(n1065), .CK(GND_net), .PD(n862), 
            .Q(n287)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i24_109_110_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i16_61_62_set (.D(n1065), .CK(GND_net), .PD(n886), 
            .Q(n239)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i16_61_62_set.GSR = "DISABLED";
    FD1S3BX DQ_out_dbg_i4_105_106_set (.D(n1065), .CK(GND_net), .PD(n922), 
            .Q(n283)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i4_105_106_set.GSR = "DISABLED";
    LUT4 i185_2_lut (.A(n267), .B(n859), .Z(DQ_out_dbg_31__N_38[25])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i185_2_lut.init = 16'h8888;
    LUT4 i305_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_22), .B(write_fifo_empty_test_c), 
         .Z(n868)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i305_4_lut_1_lut_2_lut.init = 16'heeee;
    FD1S3BX DQ_out_dbg_i17_57_58_set (.D(n1065), .CK(GND_net), .PD(n883), 
            .Q(n235)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=7, LSE_RCOL=21, LSE_LLINE=100, LSE_RLINE=100 */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam DQ_out_dbg_i17_57_58_set.GSR = "DISABLED";
    LUT4 i186_2_lut (.A(n263), .B(n856), .Z(DQ_out_dbg_31__N_38[26])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i186_2_lut.init = 16'h8888;
    LUT4 i309_3_lut_3_lut (.A(write_fifo_data_test_c_0), .B(write_fifo_empty_test_c), 
         .Z(n934)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i309_3_lut_3_lut.init = 16'h2222;
    LUT4 i239_2_lut (.A(n319), .B(n853), .Z(DQ_out_dbg_31__N_38[27])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i239_2_lut.init = 16'h8888;
    LUT4 i329_3_lut_3_lut (.A(write_fifo_data_test_c_27), .B(write_fifo_empty_test_c), 
         .Z(n853)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i329_3_lut_3_lut.init = 16'h2222;
    LUT4 i221_2_lut (.A(n339), .B(n928), .Z(DQ_out_dbg_31__N_38[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i221_2_lut.init = 16'h8888;
    LUT4 DQ_out_dbg_31__N_438_I_0_1_lut_rep_28_2_lut (.A(write_fifo_data_test_c_31), 
         .B(write_fifo_empty_test_c), .Z(n1037)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_438_I_0_1_lut_rep_28_2_lut.init = 16'hdddd;
    LUT4 i222_2_lut (.A(n331), .B(n925), .Z(DQ_out_dbg_31__N_38[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i222_2_lut.init = 16'h8888;
    LUT4 i313_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_31), .B(write_fifo_empty_test_c), 
         .Z(n841)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i313_4_lut_1_lut_2_lut.init = 16'h2222;
    LUT4 i245_2_lut (.A(n283), .B(n922), .Z(DQ_out_dbg_31__N_38[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i245_2_lut.init = 16'h8888;
    LUT4 DQ_out_dbg_31__N_547_I_0_1_lut_rep_29_2_lut (.A(write_fifo_data_test_c_15), 
         .B(write_fifo_empty_test_c), .Z(n1038)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_547_I_0_1_lut_rep_29_2_lut.init = 16'hdddd;
    LUT4 i226_2_lut (.A(n260), .B(n916), .Z(DQ_out_dbg_31__N_38[6])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i226_2_lut.init = 16'heeee;
    LUT4 i333_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_15), .B(write_fifo_empty_test_c), 
         .Z(n889)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i333_4_lut_1_lut_2_lut.init = 16'h2222;
    LUT4 i225_2_lut (.A(n356), .B(n913), .Z(DQ_out_dbg_31__N_38[7])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i225_2_lut.init = 16'heeee;
    LUT4 DQ_out_dbg_31__N_445_I_0_1_lut_rep_30_2_lut (.A(write_fifo_data_test_c_30), 
         .B(write_fifo_empty_test_c), .Z(n1039)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_445_I_0_1_lut_rep_30_2_lut.init = 16'h1111;
    LUT4 i220_2_lut (.A(n347), .B(n910), .Z(DQ_out_dbg_31__N_38[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i220_2_lut.init = 16'h8888;
    LUT4 i317_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_30), .B(write_fifo_empty_test_c), 
         .Z(n844)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i317_4_lut_1_lut_2_lut.init = 16'heeee;
    LUT4 i230_2_lut (.A(n343), .B(n907), .Z(DQ_out_dbg_31__N_38[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i230_2_lut.init = 16'h8888;
    LUT4 DQ_out_dbg_31__N_509_I_0_1_lut_rep_31_2_lut (.A(write_fifo_data_test_c_21), 
         .B(write_fifo_empty_test_c), .Z(n1040)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_509_I_0_1_lut_rep_31_2_lut.init = 16'h1111;
    LUT4 i235_2_lut (.A(n327), .B(n904), .Z(DQ_out_dbg_31__N_38[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i235_2_lut.init = 16'h8888;
    LUT4 i261_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_21), .B(write_fifo_empty_test_c), 
         .Z(n871)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i261_4_lut_1_lut_2_lut.init = 16'heeee;
    LUT4 i184_2_lut (.A(n271), .B(n901), .Z(DQ_out_dbg_31__N_38[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i184_2_lut.init = 16'h8888;
    LUT4 DQ_out_dbg_31__N_554_I_0_1_lut_rep_32_2_lut (.A(write_fifo_data_test_c_14), 
         .B(write_fifo_empty_test_c), .Z(n1041)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_554_I_0_1_lut_rep_32_2_lut.init = 16'h1111;
    LUT4 i375_3_lut_3_lut (.A(write_fifo_data_test_c_17), .B(write_fifo_empty_test_c), 
         .Z(n883)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i375_3_lut_3_lut.init = 16'h2222;
    LUT4 i347_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_14), .B(write_fifo_empty_test_c), 
         .Z(n892)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i347_4_lut_1_lut_2_lut.init = 16'heeee;
    LUT4 i187_2_lut (.A(n359), .B(n898), .Z(DQ_out_dbg_31__N_38[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i187_2_lut.init = 16'h8888;
    LUT4 DQ_out_dbg_31__N_456_I_0_1_lut_rep_33_2_lut (.A(write_fifo_data_test_c_29), 
         .B(write_fifo_empty_test_c), .Z(n1042)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_456_I_0_1_lut_rep_33_2_lut.init = 16'h1111;
    LUT4 i228_2_lut (.A(n352), .B(n895), .Z(DQ_out_dbg_31__N_38[13])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i228_2_lut.init = 16'heeee;
    LUT4 i321_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_29), .B(write_fifo_empty_test_c), 
         .Z(n847)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i321_4_lut_1_lut_2_lut.init = 16'heeee;
    LUT4 i233_2_lut (.A(n336), .B(n892), .Z(DQ_out_dbg_31__N_38[14])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i233_2_lut.init = 16'heeee;
    LUT4 i325_3_lut_3_lut (.A(write_fifo_data_test_c_28), .B(write_fifo_empty_test_c), 
         .Z(n850)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i325_3_lut_3_lut.init = 16'h2222;
    LUT4 i371_3_lut_3_lut (.A(write_fifo_data_test_c_12), .B(write_fifo_empty_test_c), 
         .Z(n898)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i371_3_lut_3_lut.init = 16'h2222;
    LUT4 i285_3_lut_3_lut (.A(write_fifo_data_test_c_19), .B(write_fifo_empty_test_c), 
         .Z(n877)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i285_3_lut_3_lut.init = 16'h2222;
    LUT4 i359_3_lut_3_lut (.A(write_fifo_data_test_c_8), .B(write_fifo_empty_test_c), 
         .Z(n910)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i359_3_lut_3_lut.init = 16'h2222;
    LUT4 i277_3_lut_3_lut (.A(write_fifo_data_test_c_25), .B(write_fifo_empty_test_c), 
         .Z(n859)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i277_3_lut_3_lut.init = 16'h2222;
    LUT4 i236_2_lut (.A(n324), .B(n889), .Z(DQ_out_dbg_31__N_38[15])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i236_2_lut.init = 16'heeee;
    LUT4 i281_3_lut_3_lut (.A(write_fifo_data_test_c_11), .B(write_fifo_empty_test_c), 
         .Z(n901)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i281_3_lut_3_lut.init = 16'h2222;
    LUT4 i367_3_lut_3_lut (.A(write_fifo_data_test_c_7), .B(write_fifo_empty_test_c), 
         .Z(n913)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i367_3_lut_3_lut.init = 16'h2222;
    LUT4 DQ_out_dbg_31__N_599_I_0_1_lut_2_lut (.A(write_fifo_data_test_c_7), 
         .B(write_fifo_empty_test_c), .Z(DQ_out_dbg_31__N_724)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_599_I_0_1_lut_2_lut.init = 16'hdddd;
    LUT4 i269_3_lut_3_lut (.A(write_fifo_data_test_c_6), .B(write_fifo_empty_test_c), 
         .Z(n916)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i269_3_lut_3_lut.init = 16'heeee;
    LUT4 DQ_out_dbg_31__N_606_I_0_1_lut_2_lut (.A(write_fifo_data_test_c_6), 
         .B(write_fifo_empty_test_c), .Z(DQ_out_dbg_31__N_727)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_606_I_0_1_lut_2_lut.init = 16'h1111;
    LUT4 i265_3_lut_3_lut (.A(write_fifo_data_test_c_20), .B(write_fifo_empty_test_c), 
         .Z(n874)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i265_3_lut_3_lut.init = 16'h2222;
    LUT4 i407_2_lut (.A(read_fifo_data_test_c_14), .Z(read_fifo_data_test_c_14)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i407_2_lut.init = 16'haaaa;
    LUT4 i405_2_lut (.A(read_fifo_data_test_c_13), .Z(read_fifo_data_test_c_13)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i405_2_lut.init = 16'haaaa;
    LUT4 i232_2_lut (.A(n312), .B(n847), .Z(DQ_out_dbg_31__N_38[29])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i232_2_lut.init = 16'heeee;
    LUT4 i403_2_lut (.A(read_fifo_data_test_c_12), .Z(read_fifo_data_test_c_12)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i403_2_lut.init = 16'haaaa;
    LUT4 i247_2_lut (.A(n275), .B(n877), .Z(DQ_out_dbg_31__N_38[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i247_2_lut.init = 16'h8888;
    LUT4 i244_2_lut (.A(n239), .B(n886), .Z(DQ_out_dbg_31__N_38[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i244_2_lut.init = 16'h8888;
    LUT4 i234_2_lut (.A(n308), .B(n844), .Z(DQ_out_dbg_31__N_38[30])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i234_2_lut.init = 16'heeee;
    LUT4 DQ_out_dbg_31__N_561_I_0_1_lut_rep_34_2_lut (.A(write_fifo_data_test_c_13), 
         .B(write_fifo_empty_test_c), .Z(n1043)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam DQ_out_dbg_31__N_561_I_0_1_lut_rep_34_2_lut.init = 16'h1111;
    LUT4 i246_2_lut (.A(n235), .B(n883), .Z(DQ_out_dbg_31__N_38[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i246_2_lut.init = 16'h8888;
    LUT4 i363_4_lut_1_lut_2_lut (.A(write_fifo_data_test_c_13), .B(write_fifo_empty_test_c), 
         .Z(n895)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i363_4_lut_1_lut_2_lut.init = 16'heeee;
    LUT4 i241_2_lut (.A(n243), .B(n880), .Z(DQ_out_dbg_31__N_38[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i241_2_lut.init = 16'h8888;
    LUT4 i339_3_lut_3_lut (.A(write_fifo_data_test_c_10), .B(write_fifo_empty_test_c), 
         .Z(n904)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i339_3_lut_3_lut.init = 16'h2222;
    LUT4 i229_2_lut (.A(n315), .B(n850), .Z(DQ_out_dbg_31__N_38[28])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i229_2_lut.init = 16'h8888;
    LUT4 i227_2_lut (.A(n255), .B(n874), .Z(DQ_out_dbg_31__N_38[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i227_2_lut.init = 16'h8888;
    LUT4 i355_3_lut_3_lut (.A(write_fifo_data_test_c_9), .B(write_fifo_empty_test_c), 
         .Z(n907)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i355_3_lut_3_lut.init = 16'h2222;
    LUT4 i231_2_lut (.A(n252), .B(n871), .Z(DQ_out_dbg_31__N_38[21])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i231_2_lut.init = 16'heeee;
    LUT4 i409_2_lut (.A(read_fifo_data_test_c_15), .Z(read_fifo_data_test_c_15)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i409_2_lut.init = 16'haaaa;
    LUT4 i242_2_lut (.A(n296), .B(n868), .Z(DQ_out_dbg_31__N_38[22])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(101[3] 123[10])
    defparam i242_2_lut.init = 16'heeee;
    LUT4 i427_2_lut (.A(read_fifo_data_test_c_24), .Z(read_fifo_data_test_c_24)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i427_2_lut.init = 16'haaaa;
    LUT4 i289_3_lut_3_lut (.A(write_fifo_data_test_c_5), .B(write_fifo_empty_test_c), 
         .Z(DQ_out_dbg_31__N_38[5])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i289_3_lut_3_lut.init = 16'heeee;
    LUT4 i425_2_lut (.A(read_fifo_data_test_c_23), .Z(read_fifo_data_test_c_23)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i425_2_lut.init = 16'haaaa;
    LUT4 i439_2_lut (.A(read_fifo_data_test_c_30), .Z(read_fifo_data_test_c_30)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i439_2_lut.init = 16'haaaa;
    LUT4 i411_2_lut (.A(read_fifo_data_test_c_16), .Z(read_fifo_data_test_c_16)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i411_2_lut.init = 16'haaaa;
    LUT4 i437_2_lut (.A(read_fifo_data_test_c_29), .Z(read_fifo_data_test_c_29)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i437_2_lut.init = 16'haaaa;
    LUT4 i423_2_lut (.A(read_fifo_data_test_c_22), .Z(read_fifo_data_test_c_22)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i423_2_lut.init = 16'haaaa;
    LUT4 i249_3_lut_3_lut (.A(write_fifo_data_test_c_16), .B(write_fifo_empty_test_c), 
         .Z(n886)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(290[3] 294[10])
    defparam i249_3_lut_3_lut.init = 16'h2222;
    LUT4 i421_2_lut (.A(read_fifo_data_test_c_21), .Z(read_fifo_data_test_c_21)) /* synthesis lut_function=(A) */ ;   // c:/users/damian/desktop/upwork/camilafpga/project/hyperram.vhd(86[2] 378[9])
    defparam i421_2_lut.init = 16'haaaa;
    
endmodule
