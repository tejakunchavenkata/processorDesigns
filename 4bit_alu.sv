module alu(
    input [3:0] MUX_SELECT ,
    input [4:0] A ,
    input [4:0] B ,
    input CIN , 
    output [4:0] SUM,
    output COUT 
) ;

reg [4:0] temp_RES;
assign SUM = temp_RES ;
wire [5:0] temp_OUT = {1'b0,A} + {1'b0,B} + CIN ;
assign COUT = temp_OUT[5];
always @(*) begin 
    case(MUX_SELECT) 
        4'b0000:
            temp_RES = A + B + CIN ;
        4'b0001:
            temp_RES =  A - B + CIN ;
        4'b0010:
            temp_RES = A ^ B ;
        4'b0011:
            temp_RES = A & B ;
        default : 
            temp_RES = A + B + CIN;
    endcase 
end 
endmodule 