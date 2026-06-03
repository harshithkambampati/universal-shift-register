module u_s_r (S_in,
    clk,
    rst,
    D,
    Q,
    mode);
 input S_in;
 input clk;
 input rst;
 input [3:0] D;
 output [3:0] Q;
 input [1:0] mode;

 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net5;
 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire net6;
 wire net7;
 wire net8;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire net19;

 sky130_fd_sc_hd__decap_3 FILLER_0_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_0_62 ();
 sky130_fd_sc_hd__decap_3 FILLER_0_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_10_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_40 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_10_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_10_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_11_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_50 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_53 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_11_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_11_9 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_20 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_1_54 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_1_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_1_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_15 ();
 sky130_fd_sc_hd__fill_2 FILLER_2_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_2_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_18 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_21 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_28 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_3 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_3_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_3_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_27 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_4_37 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_4_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_4_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_33 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_36 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_39 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_42 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_45 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_60 ();
 sky130_fd_sc_hd__fill_1 FILLER_5_63 ();
 sky130_fd_sc_hd__decap_3 FILLER_5_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_6_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_32 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_35 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_38 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_45 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_48 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_6 ();
 sky130_fd_sc_hd__fill_2 FILLER_6_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_6_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_7_36 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_55 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_65 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_68 ();
 sky130_fd_sc_hd__fill_1 FILLER_7_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_7_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_24 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_27 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_29 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_3 ();
 sky130_fd_sc_hd__fill_2 FILLER_8_52 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_6 ();
 sky130_fd_sc_hd__fill_1 FILLER_8_71 ();
 sky130_fd_sc_hd__decap_3 FILLER_8_9 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_12 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_15 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_18 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_21 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_24 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_27 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_3 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_30 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_33 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_57 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_6 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_67 ();
 sky130_fd_sc_hd__fill_2 FILLER_9_70 ();
 sky130_fd_sc_hd__decap_3 FILLER_9_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_24 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_35 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_36 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_37 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_32 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_33 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_34 ();
 sky130_fd_sc_hd__inv_2 _20_ (.A(net7),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _21_ (.A(net8),
    .Y(_05_));
 sky130_fd_sc_hd__and3_2 _22_ (.A(net6),
    .B(net7),
    .C(net1),
    .X(_06_));
 sky130_fd_sc_hd__and3b_2 _23_ (.A_N(net6),
    .B(net7),
    .C(net5),
    .X(_07_));
 sky130_fd_sc_hd__nor2_2 _24_ (.A(net6),
    .B(net7),
    .Y(_08_));
 sky130_fd_sc_hd__or2_2 _25_ (.A(net6),
    .B(net7),
    .X(_09_));
 sky130_fd_sc_hd__a211o_2 _26_ (.A1(net10),
    .A2(_04_),
    .B1(_06_),
    .C1(_08_),
    .X(_10_));
 sky130_fd_sc_hd__o221a_2 _27_ (.A1(net15),
    .A2(_09_),
    .B1(_10_),
    .B2(_07_),
    .C1(_05_),
    .X(_00_));
 sky130_fd_sc_hd__and3_2 _28_ (.A(net6),
    .B(net7),
    .C(net2),
    .X(_11_));
 sky130_fd_sc_hd__nand2b_2 _29_ (.A_N(net7),
    .B(net11),
    .Y(_12_));
 sky130_fd_sc_hd__o2bb2a_2 _30_ (.A1_N(net6),
    .A2_N(_12_),
    .B1(_04_),
    .B2(net15),
    .X(_13_));
 sky130_fd_sc_hd__o221a_2 _31_ (.A1(net17),
    .A2(_09_),
    .B1(_11_),
    .B2(_13_),
    .C1(_05_),
    .X(_01_));
 sky130_fd_sc_hd__and3_2 _32_ (.A(net6),
    .B(net7),
    .C(net3),
    .X(_14_));
 sky130_fd_sc_hd__and3b_2 _33_ (.A_N(net6),
    .B(net7),
    .C(net17),
    .X(_15_));
 sky130_fd_sc_hd__a2111o_2 _34_ (.A1(net13),
    .A2(_04_),
    .B1(_08_),
    .C1(_14_),
    .D1(_15_),
    .X(_16_));
 sky130_fd_sc_hd__o211a_2 _35_ (.A1(net19),
    .A2(_09_),
    .B1(_16_),
    .C1(_05_),
    .X(_02_));
 sky130_fd_sc_hd__and3_2 _36_ (.A(net6),
    .B(net7),
    .C(net4),
    .X(_17_));
 sky130_fd_sc_hd__and3b_2 _37_ (.A_N(net6),
    .B(net7),
    .C(net11),
    .X(_18_));
 sky130_fd_sc_hd__a211o_2 _38_ (.A1(_04_),
    .A2(net5),
    .B1(_08_),
    .C1(_17_),
    .X(_19_));
 sky130_fd_sc_hd__o221a_2 _39_ (.A1(net13),
    .A2(_09_),
    .B1(_18_),
    .B2(_19_),
    .C1(_05_),
    .X(_03_));
 sky130_fd_sc_hd__dfxtp_2 _40_ (.CLK(clknet_1_0__leaf_clk),
    .D(net16),
    .Q(net9));
 sky130_fd_sc_hd__dfxtp_2 _41_ (.CLK(clknet_1_1__leaf_clk),
    .D(net18),
    .Q(net10));
 sky130_fd_sc_hd__dfxtp_2 _42_ (.CLK(clknet_1_1__leaf_clk),
    .D(_02_),
    .Q(net11));
 sky130_fd_sc_hd__dfxtp_2 _43_ (.CLK(clknet_1_0__leaf_clk),
    .D(net14),
    .Q(net12));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(net12),
    .X(net13));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(_03_),
    .X(net14));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(net9),
    .X(net15));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(_00_),
    .X(net16));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(net10),
    .X(net17));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(_01_),
    .X(net18));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(net11),
    .X(net19));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input1 (.A(D[0]),
    .X(net1));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input2 (.A(D[1]),
    .X(net2));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input3 (.A(D[2]),
    .X(net3));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input4 (.A(D[3]),
    .X(net4));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input5 (.A(S_in),
    .X(net5));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input6 (.A(mode[0]),
    .X(net6));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input7 (.A(mode[1]),
    .X(net7));
 sky130_fd_sc_hd__clkdlybuf4s25_1 input8 (.A(rst),
    .X(net8));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output10 (.A(net10),
    .X(Q[1]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output11 (.A(net11),
    .X(Q[2]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output12 (.A(net12),
    .X(Q[3]));
 sky130_fd_sc_hd__clkdlybuf4s25_1 output9 (.A(net9),
    .X(Q[0]));
endmodule
