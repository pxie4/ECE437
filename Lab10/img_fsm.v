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
    output  wire [7:0]  State_ila,
    output  wire        line_check_ila,

    output  wire  [9:0] line_cnt_ila,
    output  wire [15:0] frame_cnt_ila,
    output  wire  [9:0] pixel_cnt_ila         
    );

    
    reg [7:0] State = STATE_INIT;
    assign State_ila = State;
    localparam STATE_INIT                = 8'd0;
    localparam STATE_RESET               = 8'd1;   
    localparam STATE_RESET_FINISHED      = 8'd2;
    localparam STATE_DELAY               = 8'd3;
    localparam STATE_DATA                = 8'd4;  
    reg reset_flag;
    reg line_check;
    reg [9:0] line_cnt, pixel_cnt;
    reg [15:0] frame_cnt;
    reg [15:0] counter_delay = 16'd0;
    assign line_check_ila = line_check;
    assign line_cnt_ila = line_cnt;
    assign frame_cnt_ila = frame_cnt;
    assign pixel_cnt_ila = pixel_cnt;

    always @(posedge  clk) begin     
        case (State)
            STATE_INIT:   begin                              
                wr_en <= 1'b0;
                if (start == 1'b1) begin 
                    State <= STATE_RESET;
                    // frame_req <= 1'b1;
                end                
            end
            
            STATE_RESET:   begin
                counter_delay <= 0;
                wr_reset <= 1'b1;
                rd_reset <= 1'b1;
                frame_req <= 1'b1;                
                if (start == 1'b0) State <= STATE_RESET_FINISHED;             
            end                                     
 
           STATE_RESET_FINISHED:   begin
                wr_reset <= 1'b0;
                rd_reset <= 1'b0;
                frame_req <= 1'b0;                    
                State <= STATE_DELAY;                                   
            end  
  
            STATE_DELAY:   begin
                if (counter_delay == 16'b0000_0000_0000_0001)  State <= STATE_DATA;
                else counter_delay <= counter_delay + 1;
            end

            STATE_DATA:   begin
                // wr_reset <= 1'b0;
                // rd_reset <= 1'b0;
                frame_req <= 1'b0;
                wr_en <= 0;
                if (dval == 1 && pixel_cnt < 640)  begin
                    wr_data <= data_in;
                    wr_en <= 1;
                end
                // if (line_cnt == 480 && lval == 0) begin 
                //     wr_reset <= 1'b1;
                //     rd_reset <= 1'b1;
                // end
                if (lval == 0 && frame_cnt == num_of_frames) begin 
                    State <= STATE_INIT;
                end
            end
            default : State <= STATE_INIT;
        endcase
    end
    always @(posedge clk) begin
        
        if (State == STATE_DATA) begin
            if (lval == 0 && pixel_cnt == 640) begin
                pixel_cnt <= 0;
                line_cnt <= line_cnt + 1;
            end else if (dval == 1 && pixel_cnt < 640)  begin
                pixel_cnt <= pixel_cnt + 1;
            end
            if (line_cnt == 480 && lval == 0) begin 
                line_cnt <= 0;
                frame_cnt <= frame_cnt + 1;
            end 
            if (lval == 0 && frame_cnt == num_of_frames ) begin 
                frame_cnt <= 0;
            end 
        end
    end
endmodule