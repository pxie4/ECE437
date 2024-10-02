`timescale 1ns / 1ps

module I2C_Transmit(    
    output        [7:0]       led,
    input                     sys_clkn,
    input                     sys_clkp,
//     output ADT7420_A0,
//     output ADT7420_A1,
    output                    I2C_SCL_0,
    inout                     I2C_SDA_0,        
    output reg                FSM_Clk_reg,    
    output reg                ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // ILA Outputs
    output reg                ACK_bit,
    output reg                SCL,
    output reg                SDA,
    output reg    [7:0]       State,
    output wire   [31:0]      PC_control,
    //-----------------------------------------------------------------------
    // OK connections
    input  wire   [4:0]       okUH,
    output wire   [2:0]       okHU,
    inout  wire   [31:0]      okUHU,   
    inout wire                okAA     
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
                                        
       
    assign led[7] = ACK_bit;
    assign I2C_SCL_0 = SCL;
    assign I2C_SDA_0 = SDA; 

    always @(*) begin          
        FSM_Clk_reg = FSM_Clk;
        ILA_Clk_reg = ILA_Clk;   
    end 

    I2C_Read #(.NUM_OF_BYTES(6)) I2C_read (
        .FSM_Clk(FSM_Clk),
        .slave_address(slave_address),
        .slave_reg(slave_reg),
        .start(start),
        .ACK_bit(ACK_bit),
        .SCL(SCL),
        .SDA(SDA),
        .State(State),
        .ready(ready),
        .data_out()
    );
  
    localparam STATE_ACCEL = 8'd0;
    localparam STATE_MAG = 8'd1;    
    reg mode;
    reg start;
    reg [6:0] slave_address;
    reg [7:0] slave_reg;
    wire ready;

    intial begin
        mode = STATE_MAG;
    end

    always @(posedge FSM_Clk) begin 
        case (mode)
            STATE_ACCEL : begin
                if (ready) begin
                    mode <= STATE_MAG;
                    start <= 1'b1;
                    slave_address <= 7'b001_1001; //ACCEL Slave Address
                    slave_reg <= 8'b1010_1000; //base OUT_X_H_A
                end else begin // Currently working on reading magnetic sensor
                    mode <= STATE_ACCEL;
                    start <= 1'b0;
                end
            end
            STATE_MAG : begin
                if (ready) begin
                    mode <= STATE_ACCEL;
                    start <= 1'b1;
                    slave_address <= 7'b001_1110; // MAG Slave Address
                    slave_reg <= 8'b1000_0011; // base OUT_X_H_M
                end else begin // Currently working on reading accelerometer
                    mode <= STATE_ACCEL;
                    start <= 1'b0;
                end
            end
            default : mode <= STATE_ACCEL;
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
    
    localparam end_point = 1;
    wire [end_point*65-1:0] okEHx;
    okWireOR # (.N(end_point)) wireOR (okEH, okEHx);
    

    okBTPipeOut pipeOutA0 (
        .OkHe(), .okEH(),
        .ep_addr(8'hA0), .ep_datain(), .ep_read(),
        .ep_blockstrobe(), .ep_ready()
    );

endmodule
