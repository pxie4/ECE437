`timescale 1ns / 1ps

module One_Cycle_Wire(
    input wire          clk,
    input wire          pc_wire,
    output reg          pc_cycle
    );

reg pc_check;

always @(posedge clk) begin 
        pc_check <= pc_wire;

        if (pc_wire && !pc_check ) begin
            pc_cycle <= 1;
        end else begin
            pc_cycle <= 0;
        end
end


endmodule
