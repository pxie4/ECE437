`timescale 1ns / 1ps

module SPI (
    input wire            FSM_Clk,
    input wire  [31:0]    slave_reg,
    input wire            start,
    input wire  [31:0]    mode,
    //input wire  [31:0]    num_of_bytes,
    input wire  [31:0]    data_in,
    
    input wire            SPI_OUT,
    output reg            SPI_IN,
    output reg            SPI_CLK,
    output reg            SPI_EN,
    output reg            RES_N,

    output reg  [7:0]     State,
    output reg            ready,
    output wire [7:0]     data_state_ila,
    output reg  [31:0]    data_out

    );
    
    localparam STATE_IDLE = 8'd0;
    localparam STATE_START = 8'd1;
    localparam STATE_STOP = 8'd17;    
    localparam STATE_POWERUP = 8'd44;

    reg [7:0] data_state;
    reg [7:0] cnt_power;
    assign data_state_ila = data_state;

    always @(*) begin 
        ready = 1'b0;         
        if (State == STATE_IDLE) begin
            ready = 1'b1;
        end 
    end 

    always @(posedge FSM_Clk) begin                       
        case (State)
            STATE_IDLE : begin
                if (start && cnt_power == 200) begin
                    data_out <= 0;
                    State <= STATE_START;
                end else if (start && cnt_power == 0) begin
                    data_out <= 0;
                    cnt_power <= 0;
                    RES_N <= 1;
                    State <= STATE_START;
                end else begin
                    data_out <= data_out;
                    State <= STATE_IDLE;
                    SPI_CLK <= 0;
                    SPI_EN <= 0;
                end
            end
            STATE_POWERUP : begin
                if (cnt_power == 200) begin
                    State <= STATE_START;
                end else begin
                    cnt_power <= cnt_power + 1;
                end
            end
            // transmit bit 7
            STATE_START : begin
                State <= 8'd2;   
                SPI_CLK <= 0;
                SPI_EN <= 1;
                SPI_IN <= 0;
                if (data_state == 0) SPI_IN <= mode;
                if (data_state == 1 && mode) SPI_IN <= data_in[7];
            end            
            8'd2 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1;
                if (data_state == 1 && !mode) begin
                    data_out[7] <= SPI_OUT;
                end
            end
            // transmit bit 6   
            8'd3 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[6];
                if (data_state == 1 && mode) SPI_IN <= data_in[6];
                                 
            end   

            8'd4 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1;
                if (data_state == 1 && !mode) data_out[6] <= SPI_OUT;                 
            end
            // transmit bit 5   
            8'd5 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[5];
                if (data_state == 1 && mode) SPI_IN <= data_in[5];
                    
            end   
            8'd6 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1; 
                if (data_state == 1 && !mode) data_out[5] <= SPI_OUT;
            end
            // transmit bit 4   
            8'd7 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[4];
                if (data_state == 1 && mode) SPI_IN <= data_in[4];
                   
            end   
            8'd8 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1; 
                if (data_state == 1 && !mode) data_out[4] <= SPI_OUT;               
            end 
            // transmit bit 3
            8'd9 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[3];
                if (data_state == 1 && mode) SPI_IN <= data_in[3];
                   
            end   
            8'd10 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1;
                if (data_state == 1 && !mode) data_out[3] <= SPI_OUT;                
            end
            // transmit bit 2
            8'd11 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[2];
                if (data_state == 1 && mode) SPI_IN <= data_in[2];
                   
            end   
            8'd12 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1; 
                if (data_state == 1 && !mode) data_out[2] <= SPI_OUT;               
            end
            // transmit bit 1
            8'd13 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[1];
                if (data_state == 1 && mode) SPI_IN <= data_in[1];
                   
            end   
            8'd14 : begin
                State <= State + 1'b1;
                SPI_CLK <= 1;
                SPI_EN <= 1;
                if (data_state == 1 && !mode) data_out[1] <= SPI_OUT;                
            end
            // tranmit bit 0
            8'd15 : begin
                State <= State + 1'b1;
                SPI_CLK <= 0;
                SPI_EN <= 1;
                if (data_state == 0) SPI_IN <= slave_reg[0];
                if (data_state == 1 && mode) SPI_IN <= data_in[0];
                   
            end   
            8'd16 : begin
                data_state <= data_state + 1;
                if (data_state == 1 && !mode) data_out[0] <= SPI_OUT;
                if (data_state == 0) begin
                    State <= STATE_START;
                end
                if (data_state == 1) State <= STATE_STOP;
                SPI_CLK <= 1;
                SPI_EN <= 1;                
            end

            STATE_STOP : begin
                State <= STATE_IDLE;
                data_state <= 0;
                SPI_CLK <= 0;
                SPI_EN <= 1;
            end
            default : State <= STATE_IDLE;              
        endcase                           
    end   


endmodule