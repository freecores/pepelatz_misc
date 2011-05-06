//Pepelatz_main.v
//This file is the main module of Pepelatz MISC processor. All other modules of Pepelatz must have their own files.
//Please, comment all in detail.


//Module Pepelatz contains the processor root.
module Pepelatz
  (
  //ROM
    output[15:0]rom_address,//Address for ROM bus.
    input [15:0]rom_data,   //Data from ROM.
    input       rom_ready,  //Shows, that rom_data has actual value.

  //RAM
    output      ram_write,  //Turn on writing mode.
    output[15:0]ram_adress, //Address for RAM bus.
    output[15:0]ram_input,  //RAM's write port.
    input [15:0]ram_data,   //Data from RAM.
    input       ram_ready,  //Shows, that ram_data has actual value.

  //Operations
    input clk,              //Clock signal.
    input rst               //Reset signal.
  );

  //Output regs used by Verilog. (Just remember: you must create a register for each output)
   reg[15:0]rom_address;
   reg      ram_write;
   reg[15:0]ram_adress;
   reg[15:0]ram_input;

  //Processor regs

   //Arithmetic stack
    reg[5:0] StackPointer;
    reg[15:0]Stack[0:63];
   //Call stack
    reg[3:0]CallPointer;
    reg[15:0]CallStack[0:15];
   //Pointer to current command.
    reg[15:0]PC;

endmodule//Pepelatz

