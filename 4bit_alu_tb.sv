`timescale 1ns/1ps 
module alu_tb();
    reg [3:0] MUX_SELECT;
    reg [4:0] A;
    reg [4:0] B;
    wire [4:0] SUM;
    reg CIN ;
    wire COUT;
 
    
    alu alu_test(MUX_SELECT,A,B,CIN,SUM,COUT);
    
    initial begin 
        $display("SUM = %h\n",SUM);
    end 

    initial begin
        //$dumpfile("dump.vcd");
        //$dumpvars(1,alu_tb);
        $vcdpluson();
        A = 5'h8;
        B = 5'h11;
        CIN = 1'b0;
        for (int i = 0; i < 15 ; i++ ) begin
            MUX_SELECT = (4'b0 + i ) /5 ;
            #10;
        end 

    end

endmodule