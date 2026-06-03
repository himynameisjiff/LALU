/******************************************************************************
 ** instruction_memory                                                        **
 ** Harvard-style instruction store.                                          **
 **   - Combinational (async) read, addressed by the PC.                      **
 **   - Synchronous external write port used to load a program.              **
 **   - Optional $readmemh preload for simulation via +IMEM_INIT=<file>.      **
 ** Synthesizes to a flip-flop array + read mux on sky130 (no hard SRAM).     **
 *****************************************************************************/
module instruction_memory #(
    parameter AW = 6,            // address width (PC is 6 bits -> 64 words)
    parameter DW = 8             // instruction width
)(
    input  wire          clk,
    // CPU read port (from PC)
    input  wire [AW-1:0] raddr,
    output wire [DW-1:0] rdata,
    // external program-load (write) port
    input  wire          we,
    input  wire [AW-1:0] waddr,
    input  wire [DW-1:0] wdata
);
    localparam DEPTH = (1 << AW);

    reg [DW-1:0] mem [0:DEPTH-1];

    integer i;
    initial begin
        for (i = 0; i < DEPTH; i = i + 1)
            mem[i] = {DW{1'b0}};
    end

    always @(posedge clk)
        if (we)
            mem[waddr] <= wdata;

    assign rdata = mem[raddr];   // async read
endmodule