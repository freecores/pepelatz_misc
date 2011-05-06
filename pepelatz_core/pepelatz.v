module Pepelatz
  (
  //ROM
    output[15:0]rom_address,
    input [15:0]rom_data,
    input       rom_ready,

  //RAM
    output      ram_write,
    output[15:0]ram_adress,
    output[15:0]ram_input,
    input [15:0]ram_data,
    input       ram_ready,

  //Operations
    input clk,
    input rst
  );

  //Output regs
   reg[15:0]rom_address;
   reg      ram_write;
   reg[15:0]ram_adress;
   reg[15:0]ram_input;

  //Processor regs
   reg[5:0] StackPointer;
   reg[15:0]Stack[0:63];

   reg[3:0]CallPointer;
   reg[15:0]CallStack[0:15];

   reg[15:0]PC;

endmodule//Pepelatz

