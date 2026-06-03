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

 sky130_fd_sc_hd__inv_2 _20_ (.A(mode[1]),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _21_ (.A(rst),
    .Y(_05_));
 sky130_fd_sc_hd__and3_2 _22_ (.A(mode[0]),
    .B(mode[1]),
    .C(D[0]),
    .X(_06_));
 sky130_fd_sc_hd__and3b_2 _23_ (.A_N(mode[0]),
    .B(mode[1]),
    .C(S_in),
    .X(_07_));
 sky130_fd_sc_hd__nor2_2 _24_ (.A(mode[0]),
    .B(mode[1]),
    .Y(_08_));
 sky130_fd_sc_hd__or2_2 _25_ (.A(mode[0]),
    .B(mode[1]),
    .X(_09_));
 sky130_fd_sc_hd__a211o_2 _26_ (.A1(Q[1]),
    .A2(_04_),
    .B1(_06_),
    .C1(_08_),
    .X(_10_));
 sky130_fd_sc_hd__o221a_2 _27_ (.A1(Q[0]),
    .A2(_09_),
    .B1(_10_),
    .B2(_07_),
    .C1(_05_),
    .X(_00_));
 sky130_fd_sc_hd__and3_2 _28_ (.A(mode[0]),
    .B(mode[1]),
    .C(D[1]),
    .X(_11_));
 sky130_fd_sc_hd__nand2b_2 _29_ (.A_N(mode[1]),
    .B(Q[2]),
    .Y(_12_));
 sky130_fd_sc_hd__o2bb2a_2 _30_ (.A1_N(mode[0]),
    .A2_N(_12_),
    .B1(_04_),
    .B2(Q[0]),
    .X(_13_));
 sky130_fd_sc_hd__o221a_2 _31_ (.A1(Q[1]),
    .A2(_09_),
    .B1(_11_),
    .B2(_13_),
    .C1(_05_),
    .X(_01_));
 sky130_fd_sc_hd__and3_2 _32_ (.A(mode[0]),
    .B(mode[1]),
    .C(D[2]),
    .X(_14_));
 sky130_fd_sc_hd__and3b_2 _33_ (.A_N(mode[0]),
    .B(mode[1]),
    .C(Q[1]),
    .X(_15_));
 sky130_fd_sc_hd__a2111o_2 _34_ (.A1(Q[3]),
    .A2(_04_),
    .B1(_08_),
    .C1(_14_),
    .D1(_15_),
    .X(_16_));
 sky130_fd_sc_hd__o211a_2 _35_ (.A1(Q[2]),
    .A2(_09_),
    .B1(_16_),
    .C1(_05_),
    .X(_02_));
 sky130_fd_sc_hd__and3_2 _36_ (.A(mode[0]),
    .B(mode[1]),
    .C(D[3]),
    .X(_17_));
 sky130_fd_sc_hd__and3b_2 _37_ (.A_N(mode[0]),
    .B(mode[1]),
    .C(Q[2]),
    .X(_18_));
 sky130_fd_sc_hd__a211o_2 _38_ (.A1(_04_),
    .A2(S_in),
    .B1(_08_),
    .C1(_17_),
    .X(_19_));
 sky130_fd_sc_hd__o221a_2 _39_ (.A1(Q[3]),
    .A2(_09_),
    .B1(_18_),
    .B2(_19_),
    .C1(_05_),
    .X(_03_));
 sky130_fd_sc_hd__dfxtp_2 _40_ (.CLK(clk),
    .D(_00_),
    .Q(Q[0]));
 sky130_fd_sc_hd__dfxtp_2 _41_ (.CLK(clk),
    .D(_01_),
    .Q(Q[1]));
 sky130_fd_sc_hd__dfxtp_2 _42_ (.CLK(clk),
    .D(_02_),
    .Q(Q[2]));
 sky130_fd_sc_hd__dfxtp_2 _43_ (.CLK(clk),
    .D(_03_),
    .Q(Q[3]));
endmodule
