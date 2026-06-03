/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : PC                                                           **
 **                                                                          **
 *****************************************************************************/

module PC( clk,
           jmp,
           jmpAdrs,
           logisimClockTree0,
           pcout,
           rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       clk;
   input       jmp;
   input [5:0] jmpAdrs;
   input [4:0] logisimClockTree0;
   input       rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [5:0] pcout;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [5:0] s_logisimBus1;
   wire [5:0] s_logisimBus3;
   wire [5:0] s_logisimBus6;
   wire [5:0] s_logisimBus7;
   wire [5:0] s_logisimBus8;
   wire       s_logisimNet0;
   wire       s_logisimNet2;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus8[5:0] = jmpAdrs;
   assign s_logisimNet0      = clk;
   assign s_logisimNet2      = jmp;
   assign s_logisimNet5      = rst;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign pcout = s_logisimBus6[5:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Constant
   assign  s_logisimBus1[5:0]  =  {2'b00, 4'h1};


   // Power
   assign  s_logisimNet9  =  1'b1;


   // Power
   assign  s_logisimNet4  =  1'b1;


   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Multiplexer_bus_2 #(.nrOfBits(6))
      PLEXERS_1 (.enable(1'b1),
                 .muxIn_0(s_logisimBus3[5:0]),
                 .muxIn_1(s_logisimBus8[5:0]),
                 .muxOut(s_logisimBus7[5:0]),
                 .sel(s_logisimNet2));

   Adder #(.extendedBits(7),
           .nrOfBits(6))
      ARITH_2 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus6[5:0]),
               .dataB(s_logisimBus1[5:0]),
               .result(s_logisimBus3[5:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(6))
      MEMORY_3 (.clock(logisimClockTree0[4]),
                .clockEnable(s_logisimNet4),
                .d(s_logisimBus7[5:0]),
                .q(s_logisimBus6[5:0]),
                .reset(s_logisimNet5),
                .tick(logisimClockTree0[2]));


endmodule
