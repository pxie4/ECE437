`timescale 1ns / 1ps

module I2C_Read #(
        parameter NUM_OF_BYTES = 6
)(
    input wire          FSM_Clk,
    input wire  [6:0]   slave_address,
    input wire  [7:0]   slave_reg,
    input wire          start,

    output reg          ACK_bit,
    output reg          SCL,
    output reg          SDA,

    output reg  [7:0]   State,
    output reg          ready,
    output wire [7:0]   data_state_ila,
    output reg  [8*NUM_OF_BYTES-1:0] data_out

    );
    
    localparam STATE_START = 8'd0;
    localparam STATE_INIT = 8'd42;
    localparam STATE_STOP = 8'd41;    
  
    reg [7:0] data_state;
    assign data_state_ila = data_state;
    // initial  begin
    //     SCL = 1'b1;
    //     SDA = 1'b1;
    //     ACK_bit = 1'b1;  
    //     State = STATE_STOP;
    //     data_state = 8'b0; 
    // end

    always @(*) begin 
        ready = 1'b0;         
        if (State == STATE_START) begin
            ready = 1'b1;
        end 
    end 

    // states explained 0-2: Start, 3-6: bit 7, 7-10: bit 6, 
    //                  11-14: bit 5, 15-18: bit 4, 19-22: bit 3,
    //                  23-26: bit 2, 27-30: bit 1, 31-34: bit 0,
    //                  35-38: ack/nack bit, 39-41: Stop

    always @(posedge FSM_Clk) begin                       
        case (State)
            STATE_START : begin
                if (start) begin
                  data_out <= 0;
                  State <= STATE_INIT;
                end else begin
                  State <= STATE_START;
                end
            end

            STATE_INIT : begin
                
                State <= 8'd1;   
                SCL <= 1'b1;
                SDA <= 1'b1; 
            end            
            
            // This is the Start sequence            
            8'd1 : begin
                SCL <= 1'b1;
                SDA <= 1'b0;
                State <= State + 1'b1;                                
            end   
            
            8'd2 : begin
                  SCL <= 1'b0;
                  SDA <= 1'b0;
                  State <= State + 1'b1;                 
            end   

            // transmit bit 7   
            8'd3 : begin
                  SCL <= 1'b0;
                  
                  if (data_state == 0) begin 
                    SDA <= slave_address[6];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[7];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[6];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end 
                  
                  State <= State + 1'b1;                 
            end   

            8'd4 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd5 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 1] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd6 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end   

            // transmit bit 6
            8'd7 : begin
                  SCL <= 1'b0;
                  
                  if (data_state == 0) begin 
                    SDA <= slave_address[5];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[6];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[5];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  
                  State <= State + 1'b1;               
            end   

            8'd8 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd9 : begin
                  SCL <= 1'b1;

                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 2] <= SDA;
                  end 
                  
                  State <= State + 1'b1;
            end   

            8'd10 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end   

            // transmit bit 5
            8'd11 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= slave_address[4];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[5];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[4];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  State <= State + 1'b1;                
            end   

            8'd12 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd13 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 3] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd14 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end   

            // transmit bit 4
            8'd15 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= slave_address[3];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[4];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[3];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  State <= State + 1'b1;                
            end   

            8'd16 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd17 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 4] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd18 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end   

            // transmit bit 3
            8'd19 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= slave_address[2];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[3];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[2];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  State <= State + 1'b1;                
            end   

            8'd20 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd21 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 5] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd22 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end  
            
            // transmit bit 2
            8'd23 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= slave_address[1];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[2];
                  end  else if (data_state == 2) begin
                    SDA <= slave_address[1];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  State <= State + 1'b1;                
            end   

            8'd24 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd25 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 6] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd26 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end  
 
            // transmit bit 1
            8'd27 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= slave_address[0];
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[1];
                  end else if (data_state == 2) begin
                    SDA <= slave_address[0];
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end
                  State <= State + 1'b1;               
            end   

            8'd28 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd29 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 7] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd30 : begin
                  SCL <= 1'b0;
                  State <= State + 1'b1;
            end
            
            // transmit bit 0
            8'd31 : begin
                  SCL <= 1'b0;
                  if (data_state == 0) begin 
                    SDA <= 0; // Write
                  end else if (data_state == 1) begin 
                    SDA <= slave_reg[0];
                  end  else if (data_state == 2) begin
                    SDA <= 1; // Read
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    SDA <= 1'bz;
                  end      
                  State <= State + 1'b1;           
            end   

            8'd32 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd33 : begin
                  SCL <= 1'b1;
                  if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES) begin
                    data_out[((NUM_OF_BYTES - data_state + 3) * 8) - 8] <= SDA;
                  end 
                  State <= State + 1'b1;
            end   

            8'd34 : begin
                  SCL <= 1'b0;                  
                  State <= State + 1'b1;
            end  
                        
            // read the ACK bit from the sensor and display it on LED[7]
            8'd35 : begin
                  SCL <= 1'b0;
                  if (data_state < 3) begin
                    SDA <= 1'bz;
                  end else if (data_state >= 3 && data_state < 3 + NUM_OF_BYTES - 1) begin // set ACK
                    SDA <= 0;
                  end else if ( data_state == 3 + NUM_OF_BYTES - 1 ) begin // set NACK
                    SDA <= 1;
                  end
                  State <= State + 1'b1;                 
            end   

            8'd36 : begin
                  SCL <= 1'b1;
                  State <= State + 1'b1;
            end   

            8'd37 : begin
                  SCL <= 1'b1;
                  if (data_state  < 3) begin
                    ACK_bit <= SDA;
                  end 
                                   
                  State <= State + 1'b1;
            end   

            8'd38 : begin          
                  data_state <= data_state + 1;
                  if (data_state == 1) begin // after writing reg_address go back to start
                    SCL <= 1'b0;
                    SDA <= 1;
                    State <= STATE_INIT;
                  end if (data_state < 3 + NUM_OF_BYTES - 1 && data_state != 1) begin // read/write next byte
                    SCL <= 1'b0;
                    SDA <= 0;                    
                    State <= 3;
                  end else if (data_state == 3 + NUM_OF_BYTES - 1) begin // last byte has been read
                    SCL <= 1'b0;
                    SDA <= 0;
                    State <= State + 1'b1;
                  end
            end  
            
            //stop bit sequence and go back to STATE_INIT           
            8'd39 : begin
                  SCL <= 1'b0;
                  SDA <= 1'b0;                
                  State <= State + 1'b1;
            end   

            8'd40 : begin
                  SCL <= 1'b1;
                  SDA <= 1'b0;
                  State <= State + 1'b1;
            end                                    

            STATE_STOP : begin
                  SCL <= 1'b1;
                  SDA <= 1'b1;
                  State <= STATE_START;
                  data_state <= 0;
                    
                            
            end
            default : State <= STATE_STOP;              
        endcase                           
    end   



endmodule
