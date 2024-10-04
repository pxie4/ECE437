`timescale 1ns / 1ps

module I2C_Transmit #(parameter NUM_BYTE_READ = 6
)
(    
    output        [7:0]       led,
    input                     sys_clkn,
    input                     sys_clkp,
//     output ADT7420_A0,
//     output ADT7420_A1,
    output                    I2C_SCL_1,
    inout                     I2C_SDA_1,        
    output reg                FSM_Clk_reg,    
    output reg                ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // ILA Outputs
    output wire                ACK_bit,
    output wire                SCL,
    output wire                SDA,
    output wire    [7:0]       State,
    output wire   [31:0]      PC_control,
    //-----------------------------------------------------------------------
    // OK connections
    input  wire   [4:0]       okUH,
    output wire   [2:0]       okHU,
    inout  wire   [31:0]      okUHU,   
    inout  wire               okAA,
    //-----------------------------------------------------------------------
    // DEGUG ILA connections
    output wire     [1:0]     mode_ila,
    output wire  [NUM_BYTE_READ*8-1:0] data_out_ila,
    output wire               start_ila,
    output wire               ready_ila,
    output wire     [7:0]     data_state_ila
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
    assign I2C_SCL_1 = SCL;
    assign I2C_SDA_1 = SDA; 

    always @(*) begin          
        FSM_Clk_reg = FSM_Clk;
        ILA_Clk_reg = ILA_Clk;   
    end 

    reg [1:0] mode;
    wire start;
    reg [6:0] slave_address;
    reg [7:0] slave_reg;
    wire ready;
    reg [15:0] out_x_a, out_y_a, out_z_a, out_x_m, out_y_m, out_z_m;
    wire [NUM_BYTE_READ*8-1:0] data_out;

    assign mode_ila = mode;
    assign data_out_ila = data_out;
    assign ready_ila = ready;
    assign start_ila = start;

    I2C_Read #(.NUM_OF_BYTES(NUM_BYTE_READ)) I2C_read (
        .FSM_Clk(FSM_Clk),
        .slave_address(slave_address),
        .slave_reg(slave_reg),
        .start(start),
        .ACK_bit(ACK_bit),
        .SCL(SCL),
        .SDA(SDA),
        .State(State),
        .ready(ready),
        .data_state_ila(data_state_ila),
        .data_out(data_out)
    );

    localparam STATE_INIT = 8'd0;
    localparam STATE_ACCEL = 8'd1;
    localparam STATE_MAG = 8'd2;    
   
    // initial begin
    //     mode = STATE_INIT;
    //     start = 0;
    // end
    //assign start = PC_control[0];
    reg pc_check, pc_latch;

    always @(posedge FSM_Clk) begin 
        pc_check <= PC_control[0];
        
        if (PC_control[0] && !pc_check ) begin
            pc_latch <= 1;
        end else begin
            pc_latch <= 0;
        end
    end

    assign start = pc_latch;

    always @(posedge FSM_Clk) begin 
        case (mode)
            STATE_INIT : begin
                if (pc_latch) begin
                    mode <= STATE_ACCEL;
                    
                end else begin
                    mode <= STATE_INIT;
                end
            end
            STATE_ACCEL : begin
                if (pc_latch && ready) begin
                    mode <= STATE_MAG;
                    //start <= 1;
                end else begin // Currently working on reading accel sensor
                    mode <= STATE_ACCEL;
                    //start <= 0;

                    slave_address <= 7'b001_1001; //ACCEL Slave Address
                    slave_reg <= 8'b1010_1000; //base OUT_X_H_A
                    out_x_a <= data_out[(6*8) - 1: 4*8];
                    out_y_a <= data_out[(4*8) - 1: 2*8];
                    out_z_a <= data_out[(2*8) - 1: 0];
                end
            end
            STATE_MAG : begin
                if (pc_latch && ready) begin
                    mode <= STATE_ACCEL;
                    //start <= 1'b1;
                end else begin // Currently working on reading magnetic sensor
                    mode <= STATE_MAG;
                    //start <= 0;

                    slave_address <= 7'b001_1110; // MAG Slave Address
                    slave_reg <= 8'b1000_0011; // base OUT_X_H_M
                    out_x_m <= data_out[(6*8) - 1: 4*8];
                    out_y_m <= data_out[(2*8) - 1: 0];
                    out_z_m <= data_out[(4*8) - 1: 2*8];
                end
            end
            default : mode <= STATE_INIT;
        endcase
    end



    // OK Interface
    wire            okClk;
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
    
    localparam end_point = 7;
    wire [end_point*65-1:0] okEHx;
    okWireOR # (.N(end_point)) wireOR (okEH, okEHx);

    okTriggerIn PC_input    (   .okHE(okHE), 
                                .ep_addr(8'h40),
                                .ep_clk(FSM_Clk), 
                                .ep_trigger(PC_control)); 

    okTriggerOut trigReady  (   .okHE(okHE),
                                .okEH(okEHx[6*65 +:65]),
                                .ep_addr(8'h60),
                                .ep_clk(FSM_Clk),
                                .ep_trigger(ready));
    // Can use for loop genvar
    okWireOut OUT_x_a    (   .okHE(okHE),
                            .okEH(okEHx[0*65 +:65]),
                            .ep_addr(8'h20),
                            .ep_datain(out_x_a)); 
    
    okWireOut OUT_y_a    (   .okHE(okHE),
                            .okEH(okEHx[1*65 +:65]),
                            .ep_addr(8'h21),
                            .ep_datain(out_y_a));

    okWireOut OUT_z_a    (   .okHE(okHE),
                            .okEH(okEHx[2*65 +:65]),
                            .ep_addr(8'h22),
                            .ep_datain(out_z_a));

    okWireOut OUT_x_m    (   .okHE(okHE),
                            .okEH(okEHx[3*65 +:65]),
                            .ep_addr(8'h23),
                            .ep_datain(out_x_m));

    okWireOut OUT_y_m    (   .okHE(okHE),
                            .okEH(okEHx[4*65 +:65]),
                            .ep_addr(8'h24),
                            .ep_datain(out_y_m));
                        
    okWireOut OUT_z_m    (   .okHE(okHE),
                            .okEH(okEHx[5*65 +:65]),
                            .ep_addr(8'h25),
                            .ep_datain(out_z_m));

endmodule
