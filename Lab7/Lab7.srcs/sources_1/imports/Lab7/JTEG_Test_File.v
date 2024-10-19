`timescale 1ns / 1ps

module JTEG_Test_File(   
    output [7:0]        led,
    input               sys_clkn,
    input               sys_clkp,  
    // output ADT7420_A0,
    // output ADT7420_A1,
    // Hopefully PMOD 1 is PMOD A and A7-A8 refers to M2 Dir2 and En2
    output              PMOD_A1,
    output              PMOD_A2,

    output              I2C_SCL_1,
    inout               I2C_SDA_1,
    input  [4:0]        okUH,
    output [2:0]        okHU,
    inout  [31:0]       okUHU,
    inout               okAA      
);

    wire  ILA_Clk, ACK_bit, FSM_Clk, PWM_Clk;    
    wire [23:0] ClkDivThreshold = 1_000;   
    wire SCL, SDA; 
    wire [7:0]  State;
    wire        PC_button_ila;
    wire [7:0]  data_state_ila;
    wire        ready_ila;
    wire        start_ila;

    // wire        mode_ila;
    // wire [31:0] data_out_ila;
    // wire [31:0] data_in_ila;
    // wire [2:0]  num_of_bytes_ila;
    // wire [6:0]  slave_address_ila;
    // wire [7:0]  slave_reg_ila; 
    wire [7:0]  num_of_pulses_ila;
    wire [3:0]  en_ila;
    wire        dir_ila;
    wire        pwm_ila;

    //Instantiate the module that we like to test
    I2C_Transmit I2C_Test1 (        
        .led(led),
        .sys_clkn(sys_clkn),
        .sys_clkp(sys_clkp),
        // .ADT7420_A0(ADT7420_A0),
        // .ADT7420_A1(ADT7420_A1),
        .PMOD_A1(PMOD_A1),
        .PMOD_A2(PMOD_A2),
        
        .I2C_SCL_1(I2C_SCL_1),
        .I2C_SDA_1(I2C_SDA_1),             
        .FSM_Clk_reg(FSM_Clk),        
        .ILA_Clk_reg(ILA_Clk),
        .PWM_Clk_reg(PWM_Clk),

        .ACK_bit(ACK_bit),
        .SCL(SCL),
        .SDA(SDA),
        .State(State),
        .PC_button_ila(PC_button_ila),
        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA),
        //-----------------
        // .mode_ila(mode_ila),
        // .data_out_ila(data_out_ila),
        // .data_in_ila(data_in_ila),
        // .num_of_bytes_ila(num_of_bytes_ila),
        // .slave_address_ila(slave_address_ila),
        // .slave_reg_ila(slave_reg_ila),
        .num_of_pulses_ila(num_of_pulses_ila),
        .en_ila(en_ila),
        .dir_ila(dir_ila),
        .pwm_ila(pwm_ila),

        .start_ila(start_ila),
        .ready_ila(ready_ila),
        .data_state_ila(data_state_ila)
        );
    
    //Instantiate the ILA module probe0 num of bits - 
    ila_0 ila_sample12 ( 
        .clk(ILA_Clk),
        .probe0({State, SDA, SCL, ACK_bit, dir_ila, en_ila, num_of_pulses_ila, pwm_ila, start_ila, ready_ila, data_state_ila}),                             
        .probe1({PWM_Clk, PC_button_ila})
        );                        
endmodule