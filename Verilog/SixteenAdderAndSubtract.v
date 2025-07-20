/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : SixteenAdderAndSubtract                                      **
 **                                                                          **
 *****************************************************************************/

module SixteenAdderAndSubtract( Output_bus_1,
                                a,
                                b,
                                logisimClockTree0,
                                o,
                                overflow );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [15:0] a;
   input [15:0] b;
   input [4:0]  logisimClockTree0;
   input        o;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0] Output_bus_1;
   output        overflow;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus1;
   wire [15:0] s_logisimBus12;
   wire [15:0] s_logisimBus2;
   wire [15:0] s_logisimBus6;
   wire [15:0] s_logisimBus8;
   wire        s_logisimNet0;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet13;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet16;
   wire        s_logisimNet17;
   wire        s_logisimNet3;
   wire        s_logisimNet4;
   wire        s_logisimNet5;
   wire        s_logisimNet7;
   wire        s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus1[15:0] = a;
   assign s_logisimBus8[15:0] = b;
   assign s_logisimNet7       = o;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus2[15:0];
   assign overflow     = s_logisimNet9;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // NOT Gate
   assign s_logisimNet16 = ~s_logisimNet14;

   // NOT Gate
   assign s_logisimBus6 = ~s_logisimBus8;

   // NOT Gate
   assign s_logisimNet0 = ~s_logisimBus1[15];

   // NOT Gate
   assign s_logisimNet13 = ~s_logisimBus12[15];

   // NOT Gate
   assign s_logisimNet17 = ~s_logisimBus2[15];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet5),
               .input2(s_logisimNet15),
               .result(s_logisimNet11));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet11),
               .input2(s_logisimNet16),
               .result(s_logisimNet9));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimBus1[15]),
               .input2(s_logisimBus12[15]),
               .result(s_logisimNet14));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_4 (.input1(s_logisimBus2[15]),
               .input2(s_logisimBus1[15]),
               .input3(s_logisimBus12[15]),
               .result(s_logisimNet5));

   NAND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_5 (.input1(s_logisimNet17),
               .input2(s_logisimNet0),
               .input3(s_logisimNet13),
               .result(s_logisimNet15));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_6 (.enable(1'b1),
                 .muxIn_0(s_logisimBus8[15:0]),
                 .muxIn_1(s_logisimBus6[15:0]),
                 .muxOut(s_logisimBus12[15:0]),
                 .sel(s_logisimNet7));

   Adder #(.extendedBits(17),
           .nrOfBits(16))
      ARITH_7 (.carryIn(s_logisimNet7),
               .carryOut(),
               .dataA(s_logisimBus1[15:0]),
               .dataB(s_logisimBus12[15:0]),
               .result(s_logisimBus2[15:0]));


endmodule
