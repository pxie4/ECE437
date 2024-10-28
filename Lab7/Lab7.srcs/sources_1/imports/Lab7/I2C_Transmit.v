`timescale 1ns / 1ps

module I2C_Transmit (    
    output          [7:0]       led,
    input                       sys_clkn,
    input                       sys_clkp,
    output wire                 PMOD_A1, // M2_EN
    output wire                 PMOD_A2, // M2_Dir
    //     output ADT7420_A0,
    //     output ADT7420_A1,
    output                      I2C_SCL_1,
    inout                       I2C_SDA_1,        
    output reg                  FSM_Clk_reg,    
    output reg                  ILA_Clk_reg,
    output reg                  PWM_Clk_reg,
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
    // output wire                 mode_ila,
    // output wire     [31:0]      data_out_ila,
    // output wire     [31:0]      data_in_ila,
    // output wire     [2:0]       num_of_bytes_ila,
    // output wire     [6:0]       slave_address_ila,
    // output wire     [7:0]       slave_reg_ila,
    output wire     [7:0]       num_of_pulses_ila,
    output wire     [3:0]       en_ila,
    output wire                 dir_ila,
    output wire                 pwm_ila,
   
    output wire                 start_ila,
    output wire                 ready_ila,
    output wire     [7:0]       data_state_ila
    
    );

    wire [31:0] mode, data_out, slave_address, slave_reg, data_in, num_of_bytes, PC_control, EN, DIR, PULSES;
    wire i2c_start, pwm_start;
    wire ready;
    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    // 200 MHz -> 1000 KHz with DivThreshold 100
    // 200 MHz -> 200 Hz with DivThreshold 50000 and 10 cycles for duty cycle
    wire [23:0] ClkDivThreshold = 100;   
    wire [23:0] PWMDivThreshold = 500000;
    wire FSM_Clk, ILA_Clk, PWM_Clk, pwm, start_pwm; 
    ClockGenerator ClockGenerator1 (  .sys_clkn(sys_clkn),
                                      .sys_clkp(sys_clkp),                                      
                                      .ClkDivThreshold(ClkDivThreshold),
                                      .PWMDivThreshold(PWMDivThreshold),
                                      .FSM_Clk(FSM_Clk),                                      
                                      .ILA_Clk(ILA_Clk),
                                      .PWM_Clk(PWM_Clk) );


    assign led[7] = ACK_bit;
    assign I2C_SCL_1 = SCL;
    assign I2C_SDA_1 = SDA; 
    assign PMOD_A1 = pwm; 
    assign PMOD_A2 = DIR[0]; 
    
    always @(*) begin          
        FSM_Clk_reg = FSM_Clk;
        ILA_Clk_reg = ILA_Clk;
        PWM_Clk_reg = PWM_Clk;  
    end 

    // assign mode_ila = mode[0];
    // assign data_out_ila = data_out;
    // assign data_in_ila = data_in;
    // assign num_of_bytes_ila = num_of_bytes[2:0];
    // assign slave_address_ila = slave_address[6:0];
    // assign slave_reg_ila = slave_reg[7:0];

    assign num_of_pulses_ila = PULSES[7:0];
    assign en_ila = EN[3:0];
    assign dir_ila = DIR;

    assign ready_ila = ready;
    assign start_ila = pwm_start;
    assign PC_button_ila = PC_control[1];
    assign pwm_ila = pwm;

    I2C_Read I2C_read (
        .FSM_Clk(FSM_Clk),
        .slave_address(slave_address),
        .slave_reg(slave_reg),
        .start(i2c_start),
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

   One_Cycle_Wire I2C_Start(
        .clk(FSM_Clk),
        .pc_wire(PC_control[0]),
        .pc_cycle(i2c_start)
   );

    One_Cycle_Wire PWM_Start(
        .clk(PWM_Clk),
        .pc_wire(PC_control[1]),
        .pc_cycle(pwm_start)
   );
   
    PWMgen PWMgen1 (    .clk(PWM_Clk),
                        .pwm_start(pwm_start),
                        .duty(EN[3:0]),
                        .num_of_pulses(PULSES[7:0]),
                        .pwm(pwm) );
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

    okWireIn PC_input (         .okHE(okHE), 
                                .ep_addr(8'h05),
                                .ep_dataout(PC_control)); 

    okWireIn DC_M2_EN (        .okHE(okHE), 
                                .ep_addr(8'h06),
                                .ep_dataout(EN));

    okWireIn DC_M2_Dir (        .okHE(okHE), 
                                .ep_addr(8'h07),
                                .ep_dataout(DIR));

    okWireIn DC_M2_pulses (     .okHE(okHE), 
                                .ep_addr(8'h08),
                                .ep_dataout(PULSES));                            

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
