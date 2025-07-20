/******************************************************************************
 ** Logisim-evolution goes FPGA automatic generated Verilog code             **
 ** https://github.com/logisim-evolution/                                    **
 **                                                                          **
 ** Component : LALU                                                         **
 **                                                                          **
 *****************************************************************************/

module LALU( Output_bus_1,
             logisimClockTree0,
             logisimOutputBubbles,
             rst,
             clk_in );

   /*******************************************************************************
   ** The inputs are defined here                                                **
   *******************************************************************************/
   input [4:0] logisimClockTree0;
   input       rst;
   input       clk_in;
   /*******************************************************************************
   ** The outputs are defined here                                               **
   *******************************************************************************/
   output [15:0]  Output_bus_1;
   output [208:0] logisimOutputBubbles;

   /*******************************************************************************
   ** The wires are defined here                                                 **
   *******************************************************************************/
   wire [15:0] s_logisimBus1;
   wire [7:0]  s_logisimBus10;
   wire [15:0] s_logisimBus11;
   wire [7:0]  s_logisimBus18;
   wire [7:0]  s_logisimBus21;
   wire [15:0] s_logisimBus23;
   wire [15:0] s_logisimBus26;
   wire [7:0]  s_logisimBus33;
   wire [5:0]  s_logisimBus36;
   wire [15:0] s_logisimBus4;
   wire [5:0]  s_logisimBus40;
   wire [15:0] s_logisimBus42;
   wire [1:0]  s_logisimBus45;
   wire [15:0] s_logisimBus48;
   wire [15:0] s_logisimBus53;
   wire [15:0] s_logisimBus55;
   wire [15:0] s_logisimBus6;
   wire [15:0] s_logisimBus60;
   wire [15:0] s_logisimBus66;
   wire [15:0] s_logisimBus67;
   wire [15:0] s_logisimBus70;
   wire [1:0]  s_logisimBus71;
   wire        s_logisimNet14;
   wire        s_logisimNet16;
   wire        s_logisimNet22;
   wire        s_logisimNet25;
   wire        s_logisimNet27;
   wire        s_logisimNet30;
   wire        s_logisimNet31;
   wire        s_logisimNet35;
   wire        s_logisimNet37;
   wire        s_logisimNet39;
   wire        s_logisimNet41;
   wire        s_logisimNet46;
   wire        s_logisimNet49;
   wire        s_logisimNet5;
   wire        s_logisimNet54;
   wire        s_logisimNet57;
   wire        s_logisimNet61;
   (*keep*) wire        s_logisimNet62;
   wire        s_logisimNet64;
   wire        s_logisimNet65;
   wire        s_logisimNet68;
   wire        s_logisimNet69;
   wire        s_logisimNet7;
   wire        s_logisimNet72;
   wire        s_logisimNet73;
   wire        clkWire;

// Fix for "Warning: Wire LALU.\s_logisimBus42 [X] is used but has no driver."
    // Connect s_logisimBus42 to a 16-bit constant zero (ground)
    assign s_logisimBus42 = 16'h0000; // or 16'b0; or 16'd0; for a 16-bit zero

    // Fix for "Warning: Wire LALU.\s_logisimBus18 [X] is used but has no driver."
    // Connect s_logisimBus18 to an 8-bit constant zero (ground)
    assign s_logisimBus18 = 8'h00;    // or 8'b0; or 8'd0; for an 8-bit zero

    // Fix for "Warning: Wire LALU.\s_logisimNet22 is used but has no driver."
    // Connect s_logisimNet22 to a single-bit constant zero (ground)
    assign s_logisimNet22 = 1'b0;
    assign clkWire = clk_in;
   /*******************************************************************************
   ** The module functionality is described here                                 **
   *******************************************************************************/

   /*******************************************************************************
   ** All clock generator connections are defined here                           **
   *******************************************************************************/
   assign s_logisimNet65 = logisimClockTree0[0];

   /*******************************************************************************
   ** Here all input connections are defined                                     **
   *******************************************************************************/
    assign s_logisimNet62 = rst;

   /*******************************************************************************
   ** Here all output connections are defined                                    **
   *******************************************************************************/
   assign Output_bus_1 = s_logisimBus11[15:0];

   /*******************************************************************************
   ** Here all in-lined components are defined                                   **
   *******************************************************************************/

   // Power
   assign  s_logisimNet31  =  1'b1;


   // Power
   assign  s_logisimNet69  =  1'b1;


   // Power
   assign  s_logisimNet14  =  1'b1;


   // Bit Extender
   assign  s_logisimBus1[0]  =  s_logisimBus45[0];
   assign  s_logisimBus1[1]  =  s_logisimBus45[1];
   assign  s_logisimBus1[2]  =  1'b0;
   assign  s_logisimBus1[3]  =  1'b0;
   assign  s_logisimBus1[4]  =  1'b0;
   assign  s_logisimBus1[5]  =  1'b0;
   assign  s_logisimBus1[6]  =  1'b0;
   assign  s_logisimBus1[7]  =  1'b0;
   assign  s_logisimBus1[8]  =  1'b0;
   assign  s_logisimBus1[9]  =  1'b0;
   assign  s_logisimBus1[10]  =  1'b0;
   assign  s_logisimBus1[11]  =  1'b0;
   assign  s_logisimBus1[12]  =  1'b0;
   assign  s_logisimBus1[13]  =  1'b0;
   assign  s_logisimBus1[14]  =  1'b0;
   assign  s_logisimBus1[15]  =  1'b0;


   // Power

   // Power
   assign  s_logisimNet25  =  1'b1;


   // Power
   assign  s_logisimNet5  =  1'b1;


   // Ground
   assign  s_logisimNet16  =  1'b0;


   // Hex Digit Display: Hex_Digit_Display_8
   reg[6:0] s_Hex_Digit_Display_8_reg;
      always @(*)
      begin
         case (s_logisimBus48[3:0])
         4'h0 : s_Hex_Digit_Display_8_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_8_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_8_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_8_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_8_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_8_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_8_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_8_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_8_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_8_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_8_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_8_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_8_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_8_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_8_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_8_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[6:0] = s_Hex_Digit_Display_8_reg;
   assign logisimOutputBubbles[7] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_12
   reg[6:0] s_Hex_Digit_Display_12_reg;
      always @(*)
      begin
         case (s_logisimBus66[3:0])
         4'h0 : s_Hex_Digit_Display_12_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_12_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_12_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_12_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_12_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_12_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_12_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_12_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_12_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_12_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_12_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_12_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_12_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_12_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_12_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_12_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[14:8] = s_Hex_Digit_Display_12_reg;
   assign logisimOutputBubbles[15] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_15
   reg[6:0] s_Hex_Digit_Display_15_reg;
      always @(*)
      begin
         case (s_logisimBus67[7:4])
         4'h0 : s_Hex_Digit_Display_15_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_15_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_15_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_15_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_15_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_15_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_15_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_15_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_15_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_15_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_15_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_15_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_15_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_15_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_15_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_15_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[22:16] = s_Hex_Digit_Display_15_reg;
   assign logisimOutputBubbles[23] = 1'b0;

   // LED: LED_1
   assign logisimOutputBubbles[24] = s_logisimNet49;

   // Hex Digit Display: Hex_Digit_Display_16
   reg[6:0] s_Hex_Digit_Display_16_reg;
      always @(*)
      begin
         case (s_logisimBus67[3:0])
         4'h0 : s_Hex_Digit_Display_16_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_16_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_16_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_16_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_16_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_16_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_16_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_16_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_16_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_16_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_16_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_16_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_16_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_16_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_16_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_16_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[31:25] = s_Hex_Digit_Display_16_reg;
   assign logisimOutputBubbles[32] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_21
   reg[6:0] s_Hex_Digit_Display_21_reg;
      always @(*)
      begin
         case (s_logisimBus21[7:4])
         4'h0 : s_Hex_Digit_Display_21_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_21_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_21_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_21_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_21_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_21_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_21_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_21_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_21_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_21_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_21_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_21_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_21_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_21_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_21_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_21_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[39:33] = s_Hex_Digit_Display_21_reg;
   assign logisimOutputBubbles[40] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_22
   reg[6:0] s_Hex_Digit_Display_22_reg;
      always @(*)
      begin
         case (s_logisimBus21[3:0])
         4'h0 : s_Hex_Digit_Display_22_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_22_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_22_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_22_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_22_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_22_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_22_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_22_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_22_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_22_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_22_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_22_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_22_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_22_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_22_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_22_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[47:41] = s_Hex_Digit_Display_22_reg;
   assign logisimOutputBubbles[48] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_17
   reg[6:0] s_Hex_Digit_Display_17_reg;
      always @(*)
      begin
         case (s_logisimBus33[7:4])
         4'h0 : s_Hex_Digit_Display_17_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_17_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_17_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_17_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_17_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_17_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_17_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_17_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_17_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_17_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_17_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_17_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_17_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_17_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_17_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_17_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[55:49] = s_Hex_Digit_Display_17_reg;
   assign logisimOutputBubbles[56] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_18
   reg[6:0] s_Hex_Digit_Display_18_reg;
      always @(*)
      begin
         case (s_logisimBus33[3:0])
         4'h0 : s_Hex_Digit_Display_18_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_18_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_18_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_18_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_18_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_18_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_18_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_18_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_18_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_18_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_18_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_18_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_18_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_18_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_18_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_18_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[63:57] = s_Hex_Digit_Display_18_reg;
   assign logisimOutputBubbles[64] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_19
   reg[6:0] s_Hex_Digit_Display_19_reg;
      always @(*)
      begin
         case (s_logisimBus10[7:4])
         4'h0 : s_Hex_Digit_Display_19_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_19_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_19_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_19_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_19_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_19_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_19_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_19_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_19_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_19_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_19_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_19_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_19_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_19_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_19_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_19_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[71:65] = s_Hex_Digit_Display_19_reg;
   assign logisimOutputBubbles[72] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_20
   reg[6:0] s_Hex_Digit_Display_20_reg;
      always @(*)
      begin
         case (s_logisimBus10[3:0])
         4'h0 : s_Hex_Digit_Display_20_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_20_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_20_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_20_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_20_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_20_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_20_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_20_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_20_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_20_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_20_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_20_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_20_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_20_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_20_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_20_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[79:73] = s_Hex_Digit_Display_20_reg;
   assign logisimOutputBubbles[80] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_23
   reg[6:0] s_Hex_Digit_Display_23_reg;
      always @(*)
      begin
         case (s_logisimBus4[15:12])
         4'h0 : s_Hex_Digit_Display_23_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_23_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_23_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_23_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_23_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_23_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_23_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_23_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_23_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_23_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_23_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_23_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_23_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_23_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_23_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_23_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[87:81] = s_Hex_Digit_Display_23_reg;
   assign logisimOutputBubbles[88] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_4
   reg[6:0] s_Hex_Digit_Display_4_reg;
      always @(*)
      begin
         case (s_logisimBus55[15:12])
         4'h0 : s_Hex_Digit_Display_4_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_4_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_4_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_4_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_4_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_4_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_4_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_4_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_4_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_4_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_4_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_4_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_4_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_4_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_4_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_4_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[95:89] = s_Hex_Digit_Display_4_reg;
   assign logisimOutputBubbles[96] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_24
   reg[6:0] s_Hex_Digit_Display_24_reg;
      always @(*)
      begin
         case (s_logisimBus4[11:8])
         4'h0 : s_Hex_Digit_Display_24_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_24_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_24_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_24_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_24_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_24_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_24_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_24_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_24_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_24_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_24_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_24_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_24_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_24_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_24_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_24_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[103:97] = s_Hex_Digit_Display_24_reg;
   assign logisimOutputBubbles[104] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_1
   reg[6:0] s_Hex_Digit_Display_1_reg;
      always @(*)
      begin
         case (s_logisimBus55[11:8])
         4'h0 : s_Hex_Digit_Display_1_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_1_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_1_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_1_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_1_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_1_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_1_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_1_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_1_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_1_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_1_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_1_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_1_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_1_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_1_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_1_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[111:105] = s_Hex_Digit_Display_1_reg;
   assign logisimOutputBubbles[112] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_25
   reg[6:0] s_Hex_Digit_Display_25_reg;
      always @(*)
      begin
         case (s_logisimBus4[7:4])
         4'h0 : s_Hex_Digit_Display_25_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_25_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_25_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_25_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_25_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_25_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_25_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_25_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_25_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_25_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_25_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_25_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_25_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_25_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_25_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_25_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[119:113] = s_Hex_Digit_Display_25_reg;
   assign logisimOutputBubbles[120] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_26
   reg[6:0] s_Hex_Digit_Display_26_reg;
      always @(*)
      begin
         case (s_logisimBus4[3:0])
         4'h0 : s_Hex_Digit_Display_26_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_26_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_26_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_26_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_26_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_26_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_26_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_26_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_26_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_26_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_26_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_26_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_26_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_26_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_26_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_26_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[127:121] = s_Hex_Digit_Display_26_reg;
   assign logisimOutputBubbles[128] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_2
   reg[6:0] s_Hex_Digit_Display_2_reg;
      always @(*)
      begin
         case (s_logisimBus55[7:4])
         4'h0 : s_Hex_Digit_Display_2_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_2_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_2_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_2_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_2_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_2_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_2_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_2_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_2_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_2_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_2_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_2_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_2_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_2_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_2_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_2_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[135:129] = s_Hex_Digit_Display_2_reg;
   assign logisimOutputBubbles[136] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_3
   reg[6:0] s_Hex_Digit_Display_3_reg;
      always @(*)
      begin
         case (s_logisimBus55[3:0])
         4'h0 : s_Hex_Digit_Display_3_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_3_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_3_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_3_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_3_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_3_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_3_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_3_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_3_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_3_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_3_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_3_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_3_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_3_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_3_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_3_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[143:137] = s_Hex_Digit_Display_3_reg;
   assign logisimOutputBubbles[144] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_6
   reg[6:0] s_Hex_Digit_Display_6_reg;
      always @(*)
      begin
         case (s_logisimBus48[15:12])
         4'h0 : s_Hex_Digit_Display_6_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_6_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_6_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_6_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_6_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_6_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_6_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_6_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_6_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_6_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_6_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_6_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_6_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_6_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_6_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_6_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[151:145] = s_Hex_Digit_Display_6_reg;
   assign logisimOutputBubbles[152] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_5
   reg[6:0] s_Hex_Digit_Display_5_reg;
      always @(*)
      begin
         case (s_logisimBus48[11:8])
         4'h0 : s_Hex_Digit_Display_5_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_5_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_5_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_5_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_5_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_5_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_5_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_5_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_5_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_5_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_5_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_5_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_5_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_5_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_5_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_5_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[159:153] = s_Hex_Digit_Display_5_reg;
   assign logisimOutputBubbles[160] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_9
   reg[6:0] s_Hex_Digit_Display_9_reg;
      always @(*)
      begin
         case (s_logisimBus66[15:12])
         4'h0 : s_Hex_Digit_Display_9_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_9_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_9_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_9_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_9_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_9_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_9_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_9_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_9_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_9_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_9_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_9_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_9_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_9_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_9_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_9_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[167:161] = s_Hex_Digit_Display_9_reg;
   assign logisimOutputBubbles[168] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_10
   reg[6:0] s_Hex_Digit_Display_10_reg;
      always @(*)
      begin
         case (s_logisimBus66[11:8])
         4'h0 : s_Hex_Digit_Display_10_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_10_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_10_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_10_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_10_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_10_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_10_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_10_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_10_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_10_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_10_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_10_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_10_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_10_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_10_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_10_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[175:169] = s_Hex_Digit_Display_10_reg;
   assign logisimOutputBubbles[176] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_13
   reg[6:0] s_Hex_Digit_Display_13_reg;
      always @(*)
      begin
         case (s_logisimBus67[15:12])
         4'h0 : s_Hex_Digit_Display_13_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_13_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_13_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_13_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_13_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_13_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_13_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_13_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_13_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_13_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_13_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_13_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_13_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_13_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_13_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_13_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[183:177] = s_Hex_Digit_Display_13_reg;
   assign logisimOutputBubbles[184] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_7
   reg[6:0] s_Hex_Digit_Display_7_reg;
      always @(*)
      begin
         case (s_logisimBus48[7:4])
         4'h0 : s_Hex_Digit_Display_7_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_7_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_7_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_7_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_7_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_7_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_7_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_7_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_7_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_7_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_7_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_7_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_7_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_7_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_7_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_7_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[191:185] = s_Hex_Digit_Display_7_reg;
   assign logisimOutputBubbles[192] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_11
   reg[6:0] s_Hex_Digit_Display_11_reg;
      always @(*)
      begin
         case (s_logisimBus66[7:4])
         4'h0 : s_Hex_Digit_Display_11_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_11_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_11_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_11_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_11_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_11_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_11_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_11_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_11_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_11_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_11_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_11_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_11_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_11_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_11_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_11_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[199:193] = s_Hex_Digit_Display_11_reg;
   assign logisimOutputBubbles[200] = 1'b0;

   // Hex Digit Display: Hex_Digit_Display_14
   reg[6:0] s_Hex_Digit_Display_14_reg;
      always @(*)
      begin
         case (s_logisimBus67[11:8])
         4'h0 : s_Hex_Digit_Display_14_reg = {3'b011, 4'hF};
         4'h1 : s_Hex_Digit_Display_14_reg = {3'b000, 4'h6};
         4'h2 : s_Hex_Digit_Display_14_reg = {3'b101, 4'hB};
         4'h3 : s_Hex_Digit_Display_14_reg = {3'b100, 4'hF};
         4'h4 : s_Hex_Digit_Display_14_reg = {3'b110, 4'h6};
         4'h5 : s_Hex_Digit_Display_14_reg = {3'b110, 4'hD};
         4'h6 : s_Hex_Digit_Display_14_reg = {3'b111, 4'hD};
         4'h7 : s_Hex_Digit_Display_14_reg = {3'b000, 4'h7};
         4'h8 : s_Hex_Digit_Display_14_reg = {3'b111, 4'hF};
         4'h9 : s_Hex_Digit_Display_14_reg = {3'b110, 4'h7};
         4'hA : s_Hex_Digit_Display_14_reg = {3'b111, 4'h7};
         4'hB : s_Hex_Digit_Display_14_reg = {3'b111, 4'hC};
         4'hC : s_Hex_Digit_Display_14_reg = {3'b011, 4'h9};
         4'hD : s_Hex_Digit_Display_14_reg = {3'b101, 4'hE};
         4'hE : s_Hex_Digit_Display_14_reg = {3'b111, 4'h9};
         default : s_Hex_Digit_Display_14_reg = {3'b111, 4'h1};
      endcase
   end

   assign logisimOutputBubbles[207:201] = s_Hex_Digit_Display_14_reg;
   assign logisimOutputBubbles[208] = 1'b0;

   /*******************************************************************************
   ** Here all normal components are defined                                     **
   *******************************************************************************/
   AND_GATE #(.BubblesMask(2'b00))
      GATES_1 (.input1(s_logisimNet64),
               .input2(s_logisimNet72),
               .result(s_logisimNet7));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_2 (.enable(1'b1),
                 .muxIn_0(s_logisimBus42[15:0]),
                 .muxIn_1(s_logisimBus1[15:0]),
                 .muxOut(s_logisimBus23[15:0]),
                 .sel(s_logisimNet41));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_3 (.enable(1'b1),
                 .muxIn_0(s_logisimBus23[15:0]),
                 .muxIn_1(s_logisimBus70[15:0]),
                 .muxOut(s_logisimBus26[15:0]),
                 .sel(s_logisimNet64));

   Multiplexer_bus_2 #(.nrOfBits(16))
      PLEXERS_4 (.enable(1'b1),
                 .muxIn_0(s_logisimBus26[15:0]),
                 .muxIn_1(s_logisimBus53[15:0]),
                 .muxOut(s_logisimBus4[15:0]),
                 .sel(s_logisimNet57));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_5 (.clock(clkWire),
                .clockEnable(s_logisimNet69),
                .d(s_logisimBus18[7:0]),
                .q(s_logisimBus21[7:0]),
                .reset(s_logisimNet62),
                .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_6 (.clock(clkWire),
                .clockEnable(s_logisimNet14),
                .d(s_logisimBus21[7:0]),
                .q(s_logisimBus33[7:0]),
                .reset(s_logisimNet62),
                .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(8))
      MEMORY_7 (.clock(clkWire),
                .clockEnable(s_logisimNet14),
                .d(s_logisimBus33[7:0]),
                .q(s_logisimBus10[7:0]),
                .reset(s_logisimNet62),
                .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_8 (.clock(clkWire),
                .clockEnable(s_logisimNet46),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus55[15:0]),
                .reset(s_logisimNet62),
                .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_9 (.clock(clkWire),
                .clockEnable(s_logisimNet39),
                .d(s_logisimBus4[15:0]),
                .q(s_logisimBus48[15:0]),
                .reset(s_logisimNet62),
                .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_10 (.clock(clkWire),
                 .clockEnable(s_logisimNet35),
                 .d(s_logisimBus4[15:0]),
                 .q(s_logisimBus66[15:0]),
                 .reset(s_logisimNet62),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(16))
      MEMORY_11 (.clock(clkWire),
                 .clockEnable(s_logisimNet54),
                 .d(s_logisimBus4[15:0]),
                 .q(s_logisimBus67[15:0]),
                 .reset(s_logisimNet62),
                 .tick(logisimClockTree0[2]));

   REGISTER_FLIP_FLOP #(.invertClock(0),
                        .nrOfBits(1))
      MEMORY_12 (.clock(clkWire),
                 .clockEnable(s_logisimNet7),
                 .d(s_logisimNet25),
                 .q(s_logisimNet49),
                 .reset(s_logisimNet62),
                 .tick(logisimClockTree0[2]));


   /*******************************************************************************
   ** Here all sub-circuits are defined                                          **
   *******************************************************************************/

   Sourcesel   Sourcesel_3 (.logisimClockTree0(logisimClockTree0),
                            .reg0(s_logisimBus55[15:0]),
                            .reg1(s_logisimBus48[15:0]),
                            .reg2(s_logisimBus66[15:0]),
                            .reg3(s_logisimBus67[15:0]),
                            .regOut(s_logisimBus6[15:0]),
                            .sel(s_logisimBus45[1:0]));

   addsubcheck   addsubcheck_1 (.Halt(s_logisimNet30),
                                .MemWr(s_logisimNet37),
                                .Output_1(s_logisimNet64),
                                .Rd(s_logisimBus71[1:0]),
                                .RgWR(s_logisimNet73),
                                .Rs(s_logisimBus45[1:0]),
                                .clk(s_logisimNet65),
                                .inputIn(s_logisimBus21[7:0]),
                                .jmpAdrs(s_logisimBus36[5:0]),
                                .jump(s_logisimNet27),
                                .ld(s_logisimNet68),
                                .ldi(s_logisimNet41),
                                .logisimClockTree0(logisimClockTree0),
                                .mov(s_logisimNet57),
                                .rst(s_logisimNet62),
                                .sub(s_logisimNet61),
                                .sum(s_logisimBus70[15:0]));

   cyclecounter   cyclecounter_1 (.Output_bus_1(s_logisimBus11[15:0]),
                                  .clk(1'b0),
                                  .halt(1'b0),
                                  .logisimClockTree0(logisimClockTree0),
                                  .rst(s_logisimNet62));

   Sourcesel   Sourcesel_1 (.logisimClockTree0(logisimClockTree0),
                            .reg0(s_logisimBus55[15:0]),
                            .reg1(s_logisimBus48[15:0]),
                            .reg2(s_logisimBus66[15:0]),
                            .reg3(s_logisimBus67[15:0]),
                            .regOut(s_logisimBus60[15:0]),
                            .sel(s_logisimBus71[1:0]));

   Sourcesel   Sourcesel_2 (.logisimClockTree0(logisimClockTree0),
                            .reg0(s_logisimBus55[15:0]),
                            .reg1(s_logisimBus48[15:0]),
                            .reg2(s_logisimBus66[15:0]),
                            .reg3(s_logisimBus67[15:0]),
                            .regOut(s_logisimBus53[15:0]),
                            .sel(s_logisimBus45[1:0]));

   SixteenAdderAndSubtract   SixteenAdderAndSubtract_1 (.Output_bus_1(s_logisimBus70[15:0]),
                                                        .a(s_logisimBus60[15:0]),
                                                        .b(s_logisimBus53[15:0]),
                                                        .logisimClockTree0(logisimClockTree0),
                                                        .o(s_logisimNet61),
                                                        .overflow(s_logisimNet72));

   WriteEnable   WriteEnable_1 (.Rd(s_logisimBus71[1:0]),
                                .logisimClockTree0(logisimClockTree0),
                                .reg0WE(s_logisimNet46),
                                .reg1WE(s_logisimNet39),
                                .reg2WE(s_logisimNet35),
                                .reg3WE(s_logisimNet54),
                                .regWrite(s_logisimNet73));

   PC   PC_1 (.clk(s_logisimNet65),
              .jmp(s_logisimNet27),
              .jmpAdrs(s_logisimBus36[5:0]),
              .logisimClockTree0(logisimClockTree0),
              .pcout(s_logisimBus40[5:0]),
              .rst(s_logisimNet62));

endmodule
