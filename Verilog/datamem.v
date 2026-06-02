/******************************************************************************
 ** data_memory                                                               **
 ** Harvard-style data store.                                                 **
 **   - Combinational (async) read at `addr`.                                 **
 **   - CPU write port gated by `we` (MemWr & tick, supplied by LALU).        **
 **   - Independent external write port (ext_we) for host/debug loading.      **
 ** External port takes priority over the CPU port on a same-cycle clash.     **
 *****************************************************************************/
module data_memory #(
    parameter AW = 6,            // address width
    parameter DW = 16            // data width
)(
    input  wire          clk,
    // CPU port
    input  wire [AW-1:0] addr,
    input  wire [DW-1:0] wdata,
    input  wire          we,      // already qualified by MemWr & tick in LALU
    output wire [DW-1:0] rdata,
    // external write port
    input  wire          ext_we,
    input  wire [AW-1:0] ext_addr,
    input  wire [DW-1:0] ext_wdata
);
    localparam DEPTH = (1 << AW);

    reg [DW-1:0] mem [0:DEPTH-1];

    integer i;
    initial
        for (i = 0; i < DEPTH; i = i + 1)
            mem[i] = {DW{1'b0}};

    always @(posedge clk) begin
        if (ext_we)
            mem[ext_addr] <= ext_wdata;
        else if (we)
            mem[addr] <= wdata;
    end

    assign rdata = mem[addr];    // async read -> write-back path
endmodule