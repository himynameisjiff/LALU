`timescale 1ns/1ps
// Unit test: prove instruction_memory + data_memory write/read correctly.
module tb_mem;
  reg clk=0; always #5 clk=~clk;

  // ---- instruction memory ----
  reg        i_we=0; reg [5:0] i_wa=0; reg [7:0] i_wd=0; reg [5:0] i_ra=0;
  wire [7:0] i_rd;
  instruction_memory #(.AW(6),.DW(8)) IMEM(.clk(clk),.raddr(i_ra),.rdata(i_rd),
                                           .we(i_we),.waddr(i_wa),.wdata(i_wd));

  // ---- data memory ----
  reg        d_we=0; reg [5:0] d_a=0; reg [15:0] d_wd=0;
  reg        d_ewe=0; reg [5:0] d_ea=0; reg [15:0] d_ewd=0;
  wire [15:0] d_rd;
  data_memory #(.AW(6),.DW(16)) DMEM(.clk(clk),.addr(d_a),.wdata(d_wd),.we(d_we),
                                     .rdata(d_rd),.ext_we(d_ewe),.ext_addr(d_ea),.ext_wdata(d_ewd));
  integer errors=0;
  task imem_w(input [5:0] a, input [7:0] d); begin
    @(negedge clk); i_wa=a; i_wd=d; i_we=1; @(negedge clk); i_we=0; end
  endtask
  task chk_i(input [5:0] a, input [7:0] exp); begin
    i_ra=a; #1; if(i_rd!==exp) begin errors=errors+1; $display("IMEM[%0d]=%02h exp %02h FAIL",a,i_rd,exp); end
    else $display("IMEM[%0d]=%02h OK",a,i_rd); end
  endtask

  initial begin
    // load a little program image into IMEM via the external port
    imem_w(0,8'hA5); imem_w(1,8'h3C); imem_w(7,8'hFF);
    chk_i(0,8'hA5); chk_i(1,8'h3C); chk_i(7,8'hFF); chk_i(2,8'h00);

    // data memory: external write then CPU-side read
    @(negedge clk); d_ewe=1; d_ea=10; d_ewd=16'hBEEF; @(negedge clk); d_ewe=0;
    d_a=10; #1;
    if(d_rd!==16'hBEEF) begin errors=errors+1; $display("DMEM ext-write FAIL %04h",d_rd); end
    else $display("DMEM[10]=%04h OK (external write)",d_rd);

    // data memory: CPU write
    @(negedge clk); d_we=1; d_a=20; d_wd=16'h1234; @(negedge clk); d_we=0;
    d_a=20; #1;
    if(d_rd!==16'h1234) begin errors=errors+1; $display("DMEM cpu-write FAIL %04h",d_rd); end
    else $display("DMEM[20]=%04h OK (cpu write)",d_rd);

    $display("\n%s (%0d errors)", errors==0?"ALL MEMORY TESTS PASSED":"TESTS FAILED", errors);
    $finish;
  end
endmodule