`timescale 1ns / 1ps



module bit_risc_tb ;

//inputs
 reg [15:0] I_Inst;
 reg I_Clk;
 reg I_En; 
        
//ouputs
wire [4:0]O_Aluop;
wire [2:0] O_SelA; 
wire [2:0] O_SelB; 
wire [2:0] O_SelD; 
wire [15:0] O_Imm; 
wire        O_Regwe;


bit_risc DUT(
//inputs
 I_Inst,
 I_Clk,
 I_En,

//ouputs
 O_Aluop,
O_SelA,
O_SelB,
O_SelD,
O_Imm,
O_Regwe
);
initial begin 
    I_Inst=0;
    I_Clk=0;
    I_En=0;

    #10;
    I_Inst=16'b0001011100000100;

    #10;
    I_En=1;
end

always begin
#5; 
I_Clk=~I_Clk;
end

endmodule
