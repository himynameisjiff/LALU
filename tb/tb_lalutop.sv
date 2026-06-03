`timescale 1ns/1ps
// System harness for LALUTop.
// TICK_RELOAD is overridden small so the Logisim clock-divider ticks fast in sim
// (the real FPGA value of 50,000,000 would take ~hundreds of millions of edges).
module tb_LALUTop;
  localparam TICK = 2;          // <-- change this to speed up / slow down the CPU clock
  reg fpgaGlobalClock = 0;
  reg rst_0 = 1;

  wire [15:0] reg0_out, reg1_out, reg2_out, reg3_out;
  reg         imem_we=0;  reg [5:0] imem_waddr=0;  reg [7:0]  imem_wdata=0;
  reg         dmem_ext_we=0; reg [5:0] dmem_ext_waddr=0; reg [15:0] dmem_ext_wdata=0;

  LALUTop #(.TICK_BITS(26), .TICK_RELOAD(TICK)) dut (
    .fpgaGlobalClock(fpgaGlobalClock), .rst_0(rst_0),
    .reg0_out(reg0_out), .reg1_out(reg1_out), .reg2_out(reg2_out), .reg3_out(reg3_out),
    .imem_we(imem_we), .imem_waddr(imem_waddr), .imem_wdata(imem_wdata),
    .dmem_ext_we(dmem_ext_we), .dmem_ext_waddr(dmem_ext_waddr), .dmem_ext_wdata(dmem_ext_wdata));

  always #5 fpgaGlobalClock = ~fpgaGlobalClock;   // 100 MHz

  // load one instruction byte into IMEM through the external port
  task load_instr(input [5:0] a, input [7:0] d);
    begin @(negedge fpgaGlobalClock); imem_waddr=a; imem_wdata=d; imem_we=1;
          @(negedge fpgaGlobalClock); imem_we=0; end
  endtask

  integer k;
  initial begin
    $dumpfile("lalutop.vcd"); $dumpvars(0, tb_LALUTop);

    // hold reset a few cycles
    repeat (4) @(negedge fpgaGlobalClock);
    $display("after reset: r0=%04h r1=%04h r2=%04h r3=%04h", reg0_out,reg1_out,reg2_out,reg3_out);

    // load a small program image (encoding TBD - see notes), then release reset
    load_instr(0, 8'h00);
    load_instr(1, 8'h00);
    load_instr(2, 8'h00);
    @(negedge fpgaGlobalClock); rst_0 = 0;

    // run and sample the register file every 20 fpga clocks
    for (k=0; k<10; k=k+1) begin
      repeat (20) @(posedge fpgaGlobalClock);
      $display("t=%0t  r0=%04h r1=%04h r2=%04h r3=%04h", $time, reg0_out,reg1_out,reg2_out,reg3_out);
    end
    $display("done. VCD written to lalutop.vcd");
    $finish;
  end
endmodule