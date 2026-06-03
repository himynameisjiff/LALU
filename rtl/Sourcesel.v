/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : Sourcesel                                                    **
 **                                                                          **
 *****************************************************************************/

module Sourcesel( logisimClockTree0,
                  reg0,
                  reg1,
                  reg2,
                  reg3,
                  regOut,
                  sel );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [4:0]  logisimClockTree0;
   input [15:0] reg0;
   input [15:0] reg1;
   input [15:0] reg2;
   input [15:0] reg3;
   input [1:0]  sel;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] regOut;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus0;
   wire [1:0]  s_logisimBus1;
   wire [15:0] s_logisimBus2;
   wire [15:0] s_logisimBus3;
   wire [15:0] s_logisimBus4;
   wire [15:0] s_logisimBus5;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus0[15:0] = reg1;
   assign s_logisimBus1[1:0]  = sel;
   assign s_logisimBus2[15:0] = reg2;
   assign s_logisimBus3[15:0] = reg3;
   assign s_logisimBus5[15:0] = reg0;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign regOut = s_logisimBus4[15:0];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_4 #(.nrOfBits(16))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus5[15:0]),
                 .muxIn_1(s_logisimBus0[15:0]),
                 .muxIn_2(s_logisimBus2[15:0]),
                 .muxIn_3(s_logisimBus3[15:0]),
                 .muxOut(s_logisimBus4[15:0]),
                 .sel(s_logisimBus1[1:0]));


endmodule
