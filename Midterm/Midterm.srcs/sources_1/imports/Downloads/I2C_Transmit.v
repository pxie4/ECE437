`timescale 1ns / 1ps

module I2C_Transmit

(    
    output          [7:0]       led,
    input                     sys_clkn,
    input                     sys_clkp,
//     output ADT7420_A0,
//     output ADT7420_A1,
    output                    I2C_SCL_1,
    inout                     I2C_SDA_1,        
    output reg                FSM_Clk_reg,    
    output reg                ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // Default ILA Outputs
    output wire                 ACK_bit,
    output wire                 SCL,
    output wire                 SDA,
    output wire     [7:0]       State,
    output wire                 PC_button_ila,
    //-----------------------------------------------------------------------
    // OK connections
    input  wire     [4:0]       okUH,
    output wire     [2:0]       okHU,
    inout  wire     [31:0]      okUHU,   
    inout  wire                 okAA,
    //-----------------------------------------------------------------------
    // DEGUG ILA connections
    output wire                 mode_ila,
    output wire     [31:0]      data_out_ila,
    output wire     [31:0]      data_in_ila,
    output wire     [2:0]       num_of_bytes_ila,
    output wire     [6:0]       slave_address_ila,
    output wire     [7:0]       slave_reg_ila,
    
    output wire                 start_ila,
    output wire                 ready_ila,
    output wire     [7:0]       data_state_ila
    
    );
    
    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    wire [23:0] ClkDivThreshold = 200;   
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

    wire [31:0] mode, data_out, slave_address, slave_reg, data_in, num_of_bytes, PC_control;
    wire start;
    wire ready;
    

    assign mode_ila = mode[0];
    assign data_out_ila = data_out;
    assign data_in_ila = data_in;
    assign num_of_bytes_ila = num_of_bytes[2:0];
    assign slave_address_ila = slave_address[6:0];
    assign slave_reg_ila = slave_reg[7:0];

    assign ready_ila = ready;
    assign start_ila = start;
    assign PC_button_ila = PC_control[0];

    I2C_Read I2C_read (
        .FSM_Clk(FSM_Clk),
        .slave_address(slave_address),
        .slave_reg(slave_reg),
        .start(start),
        .mode(mode),
        .num_of_bytes(num_of_bytes),
        .data_in(data_in),

        .ACK_bit(ACK_bit),
        .SCL(SCL),
        .SDA(SDA),
        .State(State),
        .ready(ready),
        .data_state_ila(data_state_ila),
        .data_out(data_out)
    );  
   
    
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
    // abstract this into firmware
    // localparam STATE_INIT = 8'd0;
    // localparam STATE_ACCEL = 8'd1;
    // localparam STATE_MAG = 8'd2; 
    // always @(posedge FSM_Clk) begin 
    //     case (mode)
    //         STATE_INIT : begin
    //             if (pc_latch) begin
    //                 mode <= STATE_ACCEL;
                    
    //             end else begin
    //                 mode <= STATE_INIT;
    //             end
    //         end
    //         STATE_ACCEL : begin
    //             if (pc_latch && ready) begin
    //                 mode <= STATE_MAG;
    //                 //start <= 1;
    //             end else begin // Currently working on reading accel sensor
    //                 mode <= STATE_ACCEL;
    //                 //start <= 0;

    //                 slave_address <= 7'b001_1001; //ACCEL Slave Address
    //                 slave_reg <= 8'b1010_1000; //base OUT_X_L_A
    //                 out_x_a <= {data_out[(5*8) - 1: 4*8],data_out[(6*8) - 1: 5*8]};
    //                 out_y_a <= {data_out[(3*8) - 1: 2*8],data_out[(4*8) - 1: 3*8]};
    //                 out_z_a <= {data_out[(1*8) - 1: 0],data_out[(2*8) - 1: 1*8]};
    //             end
    //         end
    //         STATE_MAG : begin
    //             if (pc_latch && ready) begin
    //                 mode <= STATE_ACCEL;
    //                 //start <= 1'b1;
    //             end else begin // Currently working on reading magnetic sensor
    //                 mode <= STATE_MAG;
    //                 //start <= 0;

    //                 slave_address <= 7'b001_1110; // MAG Slave Address
    //                 slave_reg <= 8'b1000_0011; // base OUT_X_H_M
    //                 out_x_m <= data_out[(6*8) - 1: 4*8];
    //                 out_y_m <= data_out[(2*8) - 1: 0];
    //                 out_z_m <= data_out[(4*8) - 1: 2*8];
    //             end
    //         end
    //         default : mode <= STATE_INIT;
    //     endcase
    // end



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
    
    localparam end_point = 2;
    wire [end_point*65-1:0] okEHx;
    okWireOR # (.N(end_point)) wireOR (okEH, okEHx);
    // read is 1 and write is 0
    okWireIn Mode (             .okHE(okHE),
                                .ep_addr(8'h00),
                                .ep_dataout(mode));

    okWireIn  BYTENUM (         .okHE(okHE),
                                .ep_addr(8'h01),
                                .ep_dataout(num_of_bytes));
    //used when writing
    okWireIn  Data_In (         .okHE(okHE),
                                .ep_addr(8'h02),
                                .ep_dataout(data_in));

    okWireIn  Slave_Add (         .okHE(okHE),
                                .ep_addr(8'h03),
                                .ep_dataout(slave_address));

    okWireIn  Reg_Add (         .okHE(okHE),
                                .ep_addr(8'h04),
                                .ep_dataout(slave_reg));

    okWireIn PC_input       (   .okHE(okHE), 
                                .ep_addr(8'h05),
                                .ep_dataout(PC_control)); 

    // Can use for loop genvar
    okWireOut   Data_Out     (   .okHE(okHE),
                                .okEH(okEHx[0*65 +:65]),
                                .ep_addr(8'h20),
                                .ep_datain(data_out)); 

    okWireOut trigReady     (   .okHE(okHE),
                                .okEH(okEHx[1*65 +:65]),
                                .ep_addr(8'h21),
                                .ep_datain(ready));
    
endmodule
