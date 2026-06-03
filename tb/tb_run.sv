`timescale 1ns/1ps
// Execute a real program and trace instruction-by-instruction.
module tb_run;
  localparam TICK = 2;
  reg clk=0, rst=1; always #5 clk=~clk;
  wire [15:0] r0,r1,r2,r3;
  reg iwe=0; reg[5:0] iwa=0; reg[7:0] iwd=0;
  reg dwe=0; reg[5:0] dwa=0; reg[15:0] dwd=0;

  LALUTop #(.TICK_RELOAD(TICK)) dut(.fpgaGlobalClock(clk),.rst_0(rst),
    .reg0_out(r0),.reg1_out(r1),.reg2_out(r2),.reg3_out(r3),
    .imem_we(iwe),.imem_waddr(iwa),.imem_wdata(iwd),
    .dmem_ext_we(dwe),.dmem_ext_waddr(dwa),.dmem_ext_wdata(dwd));

  reg [7:0] prog [0:63]; integer n, j;
  reg [5:0] pcw;
  task load(input [5:0] a, input [7:0] d);
    begin @(negedge clk); iwa=a; iwd=d; iwe=1; @(negedge clk); iwe=0; end
  endtask

  reg [5:0] lastpc; reg [15:0] l0,l1,l2,l3; integer i;
  initial begin
    $dumpfile("run.vcd"); $dumpvars(0, tb_run);
    $readmemh("tb/program.hex", prog);
    repeat(4) @(negedge clk);
    for (j=0;j<64;j=j+1) load(j[5:0], prog[j]);   // load program via external port 64 is current lines, change if needed
    @(negedge clk); rst=0;

    lastpc=6'h3f; l0=0;l1=0;l2=0;l3=0;
    $display(" time     PC  fetched IR  | r0   r1   r2   r3");
    for (i=0;i<160;i=i+1) begin
      @(posedge clk);
      if (dut.CIRCUIT_0.s_logisimBus40 !== lastpc ||
          r0!==l0||r1!==l1||r2!==l2||r3!==l3) begin
        $display("%6t   %02h    %02h   %02h | %04h %04h %04h %04h",
          $time, dut.CIRCUIT_0.s_logisimBus40, dut.CIRCUIT_0.s_logisimBus18,
          dut.CIRCUIT_0.s_logisimBus21, r0,r1,r2,r3);
        lastpc=dut.CIRCUIT_0.s_logisimBus40; l0=r0;l1=r1;l2=r2;l3=r3;
      end
    end
    $display("\nFINAL: r0=%04h r1=%04h r2=%04h r3=%04h", r0,r1,r2,r3);
    $display("\n=== Data memory [0..63] ===");
    for (i=0;i<64;i=i+1) begin
      if (i % 8 == 0) $write("  [%02d] ", i);
      $write("%04h ", dut.CIRCUIT_0.DMEM.mem[i]);
      if (i % 8 == 7) $write("\n");
    end
    $finish;
  end
endmodule