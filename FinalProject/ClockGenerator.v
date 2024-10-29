`timescale 1ns / 1ps

module ClockGenerator(
    input sys_clkn,
    input sys_clkp,     
    input [23:0] SPIDivThreshold,
    input [23:0] I2CDivThreshold,
    input [23:0] PWMDivThreshold,
    output reg SPI_Clk,
    output reg I2C_Clk,
    output reg PWM_Clk,    
    output reg ILA_Clk
    );

    //Generate high speed main clock from two differential clock signals        
    wire clk;
    reg [23:0] ClkDivSPI = 24'd0;
    reg [23:0] ClkDivI2C = 24'd0; 
    reg [23:0] ClkDivPWM = 24'd0;      
    reg [23:0] ClkDivILA = 24'd0;       

    IBUFGDS osc_clk(
        .O(clk),
        .I(sys_clkp),
        .IB(sys_clkn)
    );    
         
    // Initialize the two registers used in this module  
    initial begin
      FSM_Clk = 1'b0;
      FSM_Clk = 1'b0;
      FSM_Clk = 1'b0;        
      ILA_Clk = 1'b0;
    end
 
    // We derive a clock signal that will be used for sampling signals for the ILA
    // This clock will be 10 times slower than the system clock.    
    // always @(posedge clk) begin        
    //     if (ClkDivILA == 1) begin
    //         ILA_Clk <= !ILA_Clk;                       
    //         ClkDivILA <= 0;
    //     end else begin                        
    //         ClkDivILA <= ClkDivILA + 1'b1;
    //     end
    // end 
    always @(*) begin
        ILA_Clk <= clk;
    end
    // We will derive a clock signal for the finite state machine from the ILA clock
    // This clock signal will be used to run the finite state machine for the I2C protocol
    always @(posedge ILA_Clk) begin        
       if (ClkDivSPI == SPIDivThreshold) begin
         SPI_Clk <= !SPI_Clk;                   
         ClkDivSPI <= 0;
       end else begin
         ClkDivSPI <= ClkDivSPI + 1'b1;             
       end
    end

    always @(posedge clk) begin        
        if (ClkDivI2C == I2CDivThreshold) begin
            I2C_Clk <= !I2C_Clk;                       
            ClkDivI2C <= 0;
        end else begin                        
            ClkDivI2C <= ClkDivI2C + 1'b1;
        end
    end

    always @(posedge clk) begin        
        if (ClkDivPWM == PWMDivThreshold) begin
            PWM_Clk <= !PWM_Clk;                       
            ClkDivPWM <= 0;
        end else begin                        
            ClkDivPWM <= ClkDivPWM + 1'b1;
        end
    end

endmodule
