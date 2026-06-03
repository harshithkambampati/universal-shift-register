module u_s_r(
    input clk,
    input rst,
    input [1:0] mode,
    input [3:0]D,
    input S_in,
    output reg [3:0]Q
    );
    
    
    always @(posedge clk)
    begin
    if(rst) Q <= 0;
    else begin
    case(mode)
    
       2'b00: 
        Q<= Q;
        2'b01:        
        Q<= {S_in,Q[3:1]};
        2'b10:
        Q<= {Q[2:0],S_in};
        2'b11:
        Q <= D;      
    endcase
    end
    end
endmodule
