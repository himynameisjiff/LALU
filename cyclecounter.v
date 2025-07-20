/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : cyclecounter                                                 **
 **                                                                          **
 *****************************************************************************/

module cyclecounter( Output_bus_1,
                     clk,
                     halt,
                     logisimClockTree0,
                     rst );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input       clk;
   input       halt;
   input [4:0] logisimClockTree0;
   input       rst;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] Output_bus_1;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus3;
   wire [15:0] s_logisimBus7;
   wire [15:0] s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet2;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet6;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimNet0 = rst;
   assign s_logisimNet4 = halt;
   assign s_logisimNet5 = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus3[15:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet6  =  1'b1;


   // Constant
   assign  s_logisimBus8[15:0]  =  16'h0001;


   // NOT Gate
   assign s_logisimNet1 = ~s_logisimNet2;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   Adder #(.extendedBits(17),
           .nrOfBits(16))
      ARITH_1 (.carryIn(1'b0),
               .carryOut(),
               .dataA(s_logisimBus8[15:0]),
               .dataB(s_logisimBus3[15:0]),
               .result(s_logisimBus7[15:0]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_2 (.clock(s_logisimNet5),
                .clockEnable(s_logisimNet4),
                .d(s_logisimNet6),
                .q(s_logisimNet2),
                .reset(s_logisimNet0),
                .tick(1'b1));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_3 (.clock(s_logisimNet5),
                .clockEnable(s_logisimNet1),
                .d(s_logisimBus7[15:0]),
                .q(s_logisimBus3[15:0]),
                .reset(s_logisimNet0),
                .tick(1'b1));


endmodule
