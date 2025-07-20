/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : WriteEnable                                                  **
 **                                                                          **
 *****************************************************************************/

module WriteEnable( Rd,
                    logisimClockTree0,
                    reg0WE,
                    reg1WE,
                    reg2WE,
                    reg3WE,
                    regWrite );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [1:0] Rd;
   input [4:0] logisimClockTree0;
   input       regWrite;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output reg0WE;
   output reg1WE;
   output reg2WE;
   output reg3WE;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [1:0] s_logisimBus10;
   wire       s_logisimNet0;
   wire       s_logisimNet1;
   wire       s_logisimNet11;
   wire       s_logisimNet12;
   wire       s_logisimNet2;
   wire       s_logisimNet3;
   wire       s_logisimNet4;
   wire       s_logisimNet5;
   wire       s_logisimNet6;
   wire       s_logisimNet7;
   wire       s_logisimNet8;
   wire       s_logisimNet9;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus10[1:0] = Rd;
   assign s_logisimNet9       = regWrite;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign reg0WE = s_logisimNet6;
   assign reg1WE = s_logisimNet11;
   assign reg2WE = s_logisimNet12;
   assign reg3WE = s_logisimNet5;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   NOR_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimBus10[0]),
               .input2(s_logisimBus10[1]),
               .result(s_logisimNet7));

   XOR_GATE_ONEHOT #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimBus10[0]),
               .input2(s_logisimBus10[1]),
               .result(s_logisimNet4));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_3 (.input1(s_logisimNet9),
               .input2(s_logisimNet7),
               .result(s_logisimNet6));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimBus10[0]),
               .input2(s_logisimBus10[1]),
               .result(s_logisimNet8));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_5 (.input1(s_logisimNet4),
               .input2(s_logisimBus10[1]),
               .result(s_logisimNet3));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_6 (.input1(s_logisimNet4),
               .input2(s_logisimBus10[0]),
               .result(s_logisimNet0));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet0),
               .input2(s_logisimNet9),
               .result(s_logisimNet11));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_8 (.input1(s_logisimNet8),
               .input2(s_logisimNet9),
               .result(s_logisimNet5));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet3),
               .input2(s_logisimNet9),
               .result(s_logisimNet12));


endmodule
