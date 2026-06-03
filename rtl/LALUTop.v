/******************************************************************************
 ** LALUTop **
 *****************************************************************************/
module LALUTop #(
    parameter integer BYPASS_DIVIDER = 1,
    parameter integer TICK_BITS      = 26,
    parameter integer TICK_RELOAD    = 50000000
)(
    input              fpgaGlobalClock,
    input              rst_0,
 
    output [15:0]      reg0_out,
    output [15:0]      reg1_out,
    output [15:0]      reg2_out,
    output [15:0]      reg3_out,
 
    input              imem_we,
    input  [5:0]       imem_waddr,
    input  [7:0]       imem_wdata,
 
    input              dmem_ext_we,
    input  [5:0]       dmem_ext_waddr,
    input  [15:0]      dmem_ext_wdata
);
 
   wire [15:0]  s_Output_bus_1;
   wire [208:0] s_logisimOutputBubbles;
   wire [4:0]   s_logisimClockTree0;
 
   generate
   if (BYPASS_DIVIDER) begin : g_fast
      // Full-speed: every sequential element clocks on fpgaGlobalClock
      // (tree[4]/tree[0]) and its tick-enable (tree[2]) is held high, so the
      // datapath steps once per cycle. Divider chain omitted entirely.
      assign s_logisimClockTree0[0] = fpgaGlobalClock; // (dead .clk inputs)
      assign s_logisimClockTree0[1] = 1'b0;
      assign s_logisimClockTree0[2] = 1'b1;            // tick enable: always on
      assign s_logisimClockTree0[3] = 1'b0;
      assign s_logisimClockTree0[4] = fpgaGlobalClock; // datapath/PC clock
   end else begin : g_fpga
      // Original Logisim clock chain (blinking-LED tick on a real FPGA).
      wire s_synthesizedClock, s_fpgaTick;
      synthesizedClockGenerator BASE_0 (
          .FPGAClock(fpgaGlobalClock), .SynthesizedClock(s_synthesizedClock));
      logisimTickGenerator #(.nrOfBits(TICK_BITS), .reloadValue(TICK_RELOAD))
          BASE_1 (.FPGAClock(s_synthesizedClock), .FPGATick(s_fpgaTick));
      LogisimClockComponent #(.highTicks(1), .lowTicks(1), .nrOfBits(1), .phase(1))
          clk (.clockBus(s_logisimClockTree0), .clockTick(s_fpgaTick),
               .globalClock(s_synthesizedClock));
   end
   endgenerate
 
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