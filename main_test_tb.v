`timescale 1ns / 1ps



module main_test_tb;

reg clk;
reg reset;
reg ram_we=0;
reg [15:0] dataI=0;

wire [2:0]selA;
wire [2:0]selB;
wire [2:0]selD;
wire [15:0] dataA;
wire [15:0] dataB;
wire [15:0] dataD;
wire [4:0] aluop;
wire [1:0] opcode;
wire [7:0]imm;
wire [15:0] dataO;
wire [15:0]pc0;

wire shldbranch;
wire enfetch;
wire enalu;
wire endec;
wire enmem;
wire enrgrd;
wire enrgwr;
wire regwe;
wire update; 

assign enrgwr = regwe & update; 
assign opcode=(reset) ? 2'b11 : ((shldbranch) ? 2'b10 : ((enmem) ? 2'b01 : 2'b00));



reg_unit reg_test(
 clk,
 enrgrd,
 enrgwr,
 selA,
 selB,
 selD,
 dataD,
 dataA,
 dataB
);

bit_risc main_inst(
//inputs
dataO,
clk,
endec,

//ouputs
aluop,
selA,
selB,
selD,
imm,
regwe
);

alu_unit main_alu(

clk,
enalu,
aluop,
dataA,
dataB,
imm,

dataD,
shldbranch
);

ctrl_unit main_ctrl(
//inputs
 clk,
 reset,

//outputs
enfetch,
endec,
enrgrd,
enalu,
update,
enmem
 );
 
 pc_unit main_pc(
 clk,
 opcode,
 dataD,
 pc0
 );
 
 fake_ram main_ram(
clk,
ram_we,
pc0,
dataI,
dataO
);

initial begin
    clk =0;
    reset=1;
    #20;
    reset =0 ;
    
end

always begin
    #5;
    clk=~clk;
end
 
 endmodule