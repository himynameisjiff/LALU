/******************************************************************************
 ** LALUTop                                                                   **
 ** Top level: clock-tree chain + LALU core + Harvard memory exposure.        **
 **                                                                           **
 ** TICK_RELOAD parameterizes the logisimTickGenerator divider so simulation  **
 ** can run the CPU clock fast (e.g. .TICK_RELOAD(2)) instead of 50,000,000.  **
 *****************************************************************************/
module LALUTop #(
    parameter integer TICK_BITS   = 26,
    parameter integer TICK_RELOAD = 50000000
)(
    input              fpgaGlobalClock,
    input              rst_0,

    // Architectural register-file state (the four 16-bit registers)
    output [15:0]      reg0_out,
    output [15:0]      reg1_out,
    output [15:0]      reg2_out,
    output [15:0]      reg3_out,

    // External instruction-memory load port (program loading)
    input              imem_we,
    input  [5:0]       imem_waddr,
    input  [7:0]       imem_wdata,

    // External data-memory port
    input              dmem_ext_we,
    input  [5:0]       dmem_ext_waddr,
    input  [15:0]      dmem_ext_wdata
);

   /*******************************************************************************
   ** Internal nets                                                              **
   *******************************************************************************/
   wire [15:0]  s_Output_bus_1;          // cyclecounter result (kept internal)
   wire         s_fpgaTick;
   wire [4:0]   s_logisimClockTree0;
   wire [208:0] s_logisimOutputBubbles;
   wire         s_synthesizedClock;

   /*******************************************************************************
   ** Clock-tree chain                                                           **
   *******************************************************************************/
   synthesizedClockGenerator BASE_0 (
       .FPGAClock        (fpgaGlobalClock),
       .SynthesizedClock (s_synthesizedClock)
   );

   logisimTickGenerator #(.nrOfBits(TICK_BITS), .reloadValue(TICK_RELOAD))
      BASE_1 (
          .FPGAClock (s_synthesizedClock),
          .FPGATick  (s_fpgaTick)
      );

   LogisimClockComponent #(.highTicks(1), .lowTicks(1), .nrOfBits(1), .phase(1))
      clk (
          .clockBus    (s_logisimClockTree0),
          .clockTick   (s_fpgaTick),
          .globalClock (s_synthesizedClock)
      );

   /*******************************************************************************
   ** CPU core + memory                                                          **
   *******************************************************************************/
   LALU CIRCUIT_0 (
       .Output_bus_1         (s_Output_bus_1),
       .logisimClockTree0    (s_logisimClockTree0),
       .logisimOutputBubbles (s_logisimOutputBubbles),
       .rst                  (rst_0),
       .clk_in               (fpgaGlobalClock),
       .reg0_out             (reg0_out),
       .reg1_out             (reg1_out),
       .reg2_out             (reg2_out),
       .reg3_out             (reg3_out),
       .imem_we              (imem_we),
       .imem_waddr           (imem_waddr),
       .imem_wdata           (imem_wdata),
       .dmem_ext_we          (dmem_ext_we),
       .dmem_ext_waddr       (dmem_ext_waddr),
       .dmem_ext_wdata       (dmem_ext_wdata)
   );

endmodule