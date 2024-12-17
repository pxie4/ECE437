`timescale 1ns / 1ps

module img_fsm(
    input   wire        clk,
    input   wire        start,
    input   wire        lval,
    input   wire        dval,
    input   wire [7:0]  data_in,
    input   wire [15:0] num_of_frames,

    output  reg         wr_reset,
    output  reg         rd_reset, 
    // output  reg         rst,
    output  reg         wr_en,
    output  reg  [7:0]  wr_data, 
    output  reg         frame_req,
    output  wire [31:0]      num_of_en 
           
    );

    reg [7:0] State;
    localparam STATE_INIT                = 8'd0;
    localparam STATE_RESET               = 8'd1;   
    localparam STATE_RESET_FINISHED      = 8'd2;
    localparam STATE_DATA                = 8'd4;  
    reg reset_flag;
    reg line_check;
    reg [9:0] line_cnt, pixel_cnt;
    reg [31:0] enable_count;
    assign num_of_en = enable_count;

    always @(negedge clk) begin 
        line_check <= lval;
        if (lval && !line_check ) begin
            line_cnt <= line_cnt + 1;
        end else if (State == STATE_INIT) line_cnt <= 0;
    end

    always @(negedge  clk) begin     
        case (State)
            STATE_INIT:   begin                              
                wr_en <= 1'b0;
                if (start == 1'b1) begin 
                    State <= STATE_RESET;
                    enable_count <= 0;
                end                
            end
            
            STATE_RESET:   begin
                wr_reset <= 1'b1;
                rd_reset <= 1'b1;
                frame_req <= 1'b1;                
                if (start == 1'b0) State <= STATE_RESET_FINISHED;             
            end                                     
 
           STATE_RESET_FINISHED:   begin
                wr_reset <= 1'b0;
                rd_reset <= 1'b0;
                frame_req <= 1'b0;                    
                State <= STATE_DATA;                                   
            end  
  

            STATE_DATA:   begin
                wr_en <= 0;
                frame_req <= 1'b0;
                if (lval == 0) begin
                    pixel_cnt <= 0;
                end
                if (dval == 1 && pixel_cnt < 640)  begin
                    pixel_cnt <= pixel_cnt + 1;
                    wr_data <= data_in;
                    wr_en <= 1;
                    enable_count <= enable_count + 1;
                end
                if (lval == 0 && line_cnt == 480) begin //configured to read 480 lines
                    State <= STATE_INIT;
                    
                end
            end
            default : State <= STATE_INIT;
        endcase
    end
endmodule