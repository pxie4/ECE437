`timescale 1ns / 1ps

module img_fsm(
    input   wire        clk,
    input   wire        start,
    input   wire        lval,
    input   wire        dval,
    input   wire [7:0]  data_in,

    output  reg         wr_reset,
    output  reg         rd_reset, 
    output  reg         wr_en,
    output  reg [7:0]   wr_data, 
    output  reg         frame_req,
    output  wire [7:0]  State_ila,
    output  wire        line_check_ila                
    );

    
    reg [7:0] State;
    assign State_ila = State;
    localparam STATE_INIT                = 8'd0;
    localparam STATE_RESET               = 8'd1;   
    localparam STATE_RESET_FINISHED      = 8'd2;
    //localparam STATE_DELAY               = 8'd3;
    localparam STATE_DATA                = 8'd4;  
    reg line_check;
    reg [9:0] line_cnt, pixel_cnt;
    // reg [15:0] counter_delay = 16'd0;
    assign line_check_ila = (line_cnt == 480) ? 1 : 0;
    always @(negedge clk) begin 
        line_check <= lval;
        if (lval && !line_check ) begin
            line_cnt <= line_cnt + 1;
        end else if (State == STATE_INIT) line_cnt <= 0;
    end

    always @(negedge clk) begin     
        case (State)
            STATE_INIT:   begin                              
                wr_en <= 1'b0;
                if (start == 1'b1) State <= STATE_RESET;                
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
                if (lval == 0) begin
                    pixel_cnt <= 0;
                end
                if (dval == 1 && pixel_cnt < 640)  begin
                    pixel_cnt <= pixel_cnt + 1;
                    wr_data <= data_in;
                    wr_en <= 1;
                end
                if (lval == 0 && line_cnt == 480) begin //configured to read 480 lines
                    State <= STATE_INIT;
                    
                end
            end
            default : State <= STATE_INIT;
        endcase
    end

endmodule
