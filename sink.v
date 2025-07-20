module sink (
    input wire timing,
    output wire opp
);
 not (opp,timing);
endmodule