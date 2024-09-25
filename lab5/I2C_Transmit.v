`timescale 1ns / 1ps

module I2C_Transmit(    
    output [7:0] led,
    input  sys_clkn,
    input  sys_clkp,
    output ADT7420_A0,
    output ADT7420_A1,
    output I2C_SCL_0,
    inout  I2C_SDA_0,        
    output reg FSM_Clk_reg,    
    output reg ILA_Clk_reg,
    output reg ACK_bit,
    output reg SCL,
    output reg SDA,
    output reg [7:0] State,
    output wire [31:0] PC_control,
    input  wire    [4:0] okUH,
    output wire    [2:0] okHU,
    inout  wire    [31:0] okUHU,   
    inout wire okAA,
    // ---------------------------
    output wire [12:0] temp,
    output wire error
         
    );
    
    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    wire [23:0] ClkDivThreshold = 100;   
    wire FSM_Clk, ILA_Clk; 
    ClockGenerator ClockGenerator1 (  .sys_clkn(sys_clkn),
                                      .sys_clkp(sys_clkp),                                      
                                      .ClkDivThreshold(ClkDivThreshold),
                                      .FSM_Clk(FSM_Clk),                                      
                                      .ILA_Clk(ILA_Clk) );
                                        
    reg [6:0] bus_address_R = 7'b1001_000;        
    reg [7:0] temp_reg_msb =  8'b0000_0000;
    reg [15:0] temp_val = 16'h00;
    reg [2:0] data_state = 3'b000;
    reg error_bit = 1'b1;      
    assign temp = temp_val[15:3];
    assign error = error_bit;
    
    localparam STATE_INIT = 8'd0;    
    assign led[7] = ACK_bit;
    assign led[6] = error_bit;
    assign ADT7420_A0 = 1'b0;
    assign ADT7420_A1 = 1'b0;
    assign I2C_SCL_0 = SCL;
    assign I2C_SDA_0 = SDA; 
    
    initial  begin
        SCL = 1'b1;
        SDA = 1'b1;
        ACK_bit = 1'b1;  
        State = 8'd0; 
    end
    
    always @(*) begin          
        FSM_Clk_reg = FSM_Clk;
        ILA_Clk_reg = ILA_Clk;   
    end   
                               
    always @(posedge FSM_Clk) begin                       
        case (State)
            // Press Button[3] to start the state machine. Otherwise, stay in the STATE_INIT state        
            STATE_INIT : begin
                 if (PC_control[0] == 1'b1) begin
                    State <= 8'd1;   
                    SCL <= 1'b1;
                    SDA <= 1'b1;                 
                 end else begin  
                      SDA <= 1'b1;               
                      SCL <= 1'b1;
                      
                      State <= 8'd0;
                  end
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
                    SDA <= bus_address_R[6];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[7];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[6];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[15] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[7] <= SDA ;
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
                    SDA <= bus_address_R[5];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[6];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[5];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[14] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[6] <= SDA ;
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
                    SDA <= bus_address_R[4];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[5];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[4];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[13] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[5] <= SDA ;
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
                    SDA <= bus_address_R[3];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[4];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[3];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[12] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[4] <= SDA ;
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
                    SDA <= bus_address_R[2];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[3];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[2];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[11] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[3] <= SDA ;
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
                    SDA <= bus_address_R[1];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[2];
                  end  else if (data_state == 2) begin
                    SDA <= bus_address_R[1];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[10] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[2] <= SDA ;
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
                    SDA <= bus_address_R[0];
                  end else if (data_state == 1) begin 
                    SDA <= temp_reg_msb[1];
                  end else if (data_state == 2) begin
                    SDA <= bus_address_R[0];
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[9] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[1] <= SDA ;
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
                    SDA <= temp_reg_msb[0];
                  end  else if (data_state == 2) begin
                    SDA <= 1; // Read
                  end else if (data_state == 3) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state == 3) begin
                    temp_val[8] <= SDA;
                  end else if (data_state == 4) begin
                    temp_val[0] <= SDA ;
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
                  if (data_state != 4) begin
                    SDA <= 1'bz;
                  end else if (data_state == 4) begin
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
                  if (data_state != 4) begin
                    ACK_bit <= SDA;
                  end 
                                   
                  State <= State + 1'b1;
            end   

            8'd38 : begin          
                  data_state <= data_state + 1;
                  if (data_state == 1) begin
                    SCL <= 1'b0;
                    SDA <= 1;
                    State <= STATE_INIT;
                  end if (data_state < 4 && data_state != 1) begin
                    SCL <= 1'b0;
                    SDA <= 0;                    
                    State <= 3;
                  end else if (data_state == 4) begin
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

            8'd41 : begin
                  SCL <= 1'b1;
                  SDA <= 1'b1;
                  //State <= STATE_INIT;                  
            end              
            
            //If the FSM ends up in this state, there was an error in teh FSM code
            //LED[6] will be turned on (signal is active low) in that case.
            default : begin
                  error_bit <= 0;
            end                              
        endcase                           
    end      
    
    
    // OK Interface
    wire [112:0]    okHE;  //These are FrontPanel wires needed to IO communication    
    wire [64:0]     okEH;  //These are FrontPanel wires needed to IO communication 
    
    //This is the OK host that allows data to be sent or recived    
    okHost hostIF (
        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okClk(okClk),
        .okAA(okAA),
        .okHE(okHE),
        .okEH(okEH)
    );
    
    //  PC_controll is a wire that contains data sent from the PC to FPGA.
    //  The data is communicated via memeory location 0x00
    okWireIn wire10 (   .okHE(okHE), 
                        .ep_addr(8'h00), 
                        .ep_dataout(PC_control));            
                   
endmodule
