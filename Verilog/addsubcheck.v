/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : addsubcheck                                                  **
 **                                                                          **
 *****************************************************************************/

module addsubcheck( Halt,
                    MemWr,
                    Output_1,
                    Rd,
                    RgWR,
                    Rs,
                    clk,
                    inputIn,
                    jmpAdrs,
                    jump,
                    ld,
                    ldi,
                    logisimClockTree0,
                    mov,
                    rst,
                    sub,
                    sum );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input        clk;
   input [7:0]  inputIn;
   input [4:0]  logisimClockTree0;
   input        rst;
   input [15:0] sum;

   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output       Halt;
   output       MemWr;
   output       Output_1;
   output [1:0] Rd;
   output       RgWR;
   output [1:0] Rs;
   output [5:0] jmpAdrs;
   output       jump;
   output       ld;
   output       ldi;
   output       mov;
   output       sub;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus24;
   wire [1:0]  s_logisimBus39;
   wire [1:0]  s_logisimBus52;
   wire [7:0]  s_logisimBus9;
   wire        s_logisimNet0;
   wire        s_logisimNet1;
   wire        s_logisimNet10;
   wire        s_logisimNet11;
   wire        s_logisimNet12;
   wire        s_logisimNet14;
   wire        s_logisimNet15;
   wire        s_logisimNet17;
   wire        s_logisimNet18;
   wire        s_logisimNet19;
   wire        s_logisimNet2;
   wire        s_logisimNet20;
   wire        s_logisimNet21;
   wire        s_logisimNet22;
   wire        s_logisimNet23;
   wire        s_logisimNet25;
   wire        s_logisimNet26;
   wire        s_logisimNet27;
   wire        s_logisimNet28;
   wire        s_logisimNet29;
   wire        s_logisimNet3;
   wire        s_logisimNet30;
   wire        s_logisimNet31;
   wire        s_logisimNet32;
   wire        s_logisimNet33;
   wire        s_logisimNet34;
   wire        s_logisimNet35;
   wire        s_logisimNet36;
   wire        s_logisimNet37;
   wire        s_logisimNet38;
   wire        s_logisimNet4;
   wire        s_logisimNet40;
   wire        s_logisimNet41;
   wire        s_logisimNet42;
   wire        s_logisimNet43;
   wire        s_logisimNet44;
   wire        s_logisimNet46;
   wire        s_logisimNet47;
   wire        s_logisimNet48;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet50;
   wire        s_logisimNet51;
   wire        s_logisimNet53;
   wire        s_logisimNet54;
   wire        s_logisimNet56;
   wire        s_logisimNet57;
   wire        s_logisimNet58;
   wire        s_logisimNet6;
   wire        s_logisimNet7;
   wire        s_logisimNet8;

   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
   assign s_logisimBus24[15:0] = sum;
   assign s_logisimBus9[7:0]   = inputIn;
   assign s_logisimNet12       = rst;
   assign s_logisimNet5        = clk;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Halt     = s_logisimNet19;
   assign MemWr    = s_logisimNet48;
   assign Output_1 = s_logisimNet3;
   assign Rd       = s_logisimBus52[1:0];
   assign RgWR     = s_logisimNet37;
   assign Rs       = s_logisimBus39[1:0];
   assign jmpAdrs  = s_logisimBus9[7:2];
   assign jump     = s_logisimNet31;
   assign ld       = s_logisimNet46;
   assign ldi      = s_logisimNet53;
   assign mov      = s_logisimNet34;
   assign sub      = s_logisimNet58;

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet1  =  1'b1;


   // Power
   assign  s_logisimNet11  =  1'b1;


   // NOT Gate
   assign s_logisimNet32 = ~s_logisimBus9[0];

   // NOT Gate
   assign s_logisimNet57 = ~s_logisimBus9[0];

   // NOT Gate
   assign s_logisimNet20 = ~s_logisimBus9[0];

   // NOT Gate
   assign s_logisimNet42 = ~s_logisimBus9[1];

   // NOT Gate
   assign s_logisimNet4 = ~s_logisimBus9[2];

   // NOT Gate
   assign s_logisimNet43 = ~s_logisimBus9[2];

   // NOT Gate
   assign s_logisimNet40 = ~s_logisimBus9[3];

   // NOT Gate
   assign s_logisimNet54 = ~s_logisimBus9[3];

   // NOT Gate
   assign s_logisimNet44 = ~s_logisimBus9[0];

   // NOT Gate
   assign s_logisimNet25 = ~s_logisimBus9[0];

   // NOT Gate
   assign s_logisimNet27 = ~s_logisimBus9[3];

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_1 (.input1(s_logisimBus9[2]),
               .input2(s_logisimBus9[3]),
               .input3(s_logisimBus9[1]),
               .result(s_logisimNet29));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_2 (.input1(s_logisimNet36),
               .input2(s_logisimNet47),
               .result(s_logisimNet51));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_3 (.input1(s_logisimBus9[2]),
               .input2(s_logisimBus9[3]),
               .input3(s_logisimBus9[1]),
               .input4(s_logisimBus9[0]),
               .result(s_logisimNet15));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_4 (.input1(s_logisimNet22),
               .input2(s_logisimNet33),
               .result(s_logisimNet35));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_5 (.input1(s_logisimBus9[2]),
               .input2(s_logisimBus9[3]),
               .input3(s_logisimBus9[1]),
               .input4(s_logisimNet32),
               .result(s_logisimNet18));

   OR_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_6 (.input1(s_logisimNet29),
               .input2(s_logisimNet30),
               .input3(s_logisimNet21),
               .result(s_logisimNet50));

   OR_GATE #(.BubblesMask(2'b00))
      GATES_7 (.input1(s_logisimNet35),
               .input2(s_logisimNet10),
               .result(s_logisimNet31));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_8 (.input1(s_logisimNet57),
               .input2(s_logisimBus9[1]),
               .input3(s_logisimBus24[15]),
               .result(s_logisimNet10));

   AND_GATE #(.BubblesMask(2'b00))
      GATES_9 (.input1(s_logisimNet20),
               .input2(s_logisimNet42),
               .result(s_logisimNet22));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_10 (.input1(s_logisimBus9[1]),
                .input2(s_logisimNet4),
                .input3(s_logisimBus9[3]),
                .input4(s_logisimBus9[0]),
                .result(s_logisimNet17));

   AND_GATE_3_INPUTS #(.BubblesMask(3'b000))
      GATES_11 (.input1(s_logisimNet54),
                .input2(s_logisimNet43),
                .input3(s_logisimBus9[1]),
                .result(s_logisimNet21));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_12 (.input1(s_logisimBus9[4]),
                .input2(s_logisimBus9[5]),
                .input3(s_logisimBus9[6]),
                .input4(s_logisimBus9[7]),
                .result(s_logisimNet47));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_13 (.input1(s_logisimNet40),
                .input2(s_logisimBus9[1]),
                .input3(s_logisimBus9[2]),
                .input4(s_logisimNet44),
                .result(s_logisimNet30));

   AND_GATE_4_INPUTS #(.BubblesMask(4'h0))
      GATES_14 (.input1(s_logisimNet25),
                .input2(s_logisimBus9[1]),
                .input3(s_logisimBus9[2]),
                .input4(s_logisimNet27),
                .result(s_logisimNet36));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_15 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet15),
                 .q(s_logisimNet46),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_16 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet30),
                 .q(s_logisimNet34),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_17 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet18),
                 .q(s_logisimNet53),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_18 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet51),
                 .q(s_logisimNet19),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_19 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet50),
                 .q(s_logisimNet37),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_20 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet17),
                 .q(s_logisimNet48),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_21 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimNet21),
                 .q(s_logisimNet3),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(2))
      MEMORY_22 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimBus9[5:4]),
                 .q(s_logisimBus39[1:0]),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_23 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimBus9[0]),
                 .q(s_logisimNet58),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(2))
      MEMORY_24 (.clock(logisimClockTree0[4]),
                 .clockEnable(s_logisimNet1),
                 .d(s_logisimBus9[7:6]),
                 .q(s_logisimBus52[1:0]),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));

   D_FLIPFLOP #(.invertClockEnable(0))
      MEMORY_25 (.clock(logisimClockTree0[4]),
                 .d(s_logisimNet11),
                 .preset(1'b0),
                 .q(s_logisimNet33),
                 .qBar(),
                 .reset(s_logisimNet12),
                 .tick(logisimClockTree0[2]));


endmodule
