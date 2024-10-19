`timescale 1ns / 1ps

module PWMgen(
    input wire          clk,
    input wire          pwm_start,
    input wire  [3:0]   duty,
    input wire  [7:0]   num_of_pulses,
    output reg          pwm
    );

reg [3:0] cnt_duty = 0;
reg [7:0] cnt_pulses = 0;
reg [1:0] state;
localparam STATE_OFF = 2'd0;
localparam STATE_ON = 2'd1;

always @(posedge clk) begin
    if (pwm_start) begin
        state <= STATE_ON;
    end
    if (state == STATE_ON) begin 
        if (cnt_pulses < num_of_pulses - 1) begin
            cnt_duty <= cnt_duty + 1;
            if (cnt_duty == 10 - 1) begin
                cnt_duty <= 0;
                cnt_pulses <= cnt_pulses + 1;
            end
            if (cnt_duty < duty) begin
                pwm <= 1;
            end else begin
                pwm <= 0;
            end
        end else if (cnt_pulses == num_of_pulses - 1) begin
            cnt_pulses <= 0;
            pwm <= 0;
            state <= STATE_OFF;
        end
    end
end

endmodule

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