`timescale 1ns / 1ps

module JTEG_Test_File(   
    output [7:0]        led,
    input               sys_clkn,
    input               sys_clkp,  

    // Hopefully PMOD 1 is PMOD A and A1-A2 refers to M2 Dir2 and En2
    // output              PMOD_A1,
    // output              PMOD_A2,

    output              CVM300_CLK_IN,
    output              CVM300_SPI_EN,
    output              CVM300_SPI_IN,   
    input               CVM300_SPI_OUT,
    output              CVM300_SPI_CLK,
    // might need later on
    // output              CVM300_FRAME_REQ,
    // output              CVM300_SYS_RES_N,

    input  [4:0]        okUH,
    output [2:0]        okHU,
    inout  [31:0]       okUHU,
    inout               okAA      
);
    
    wire  ILA_Clk, FSM_Clk;    
    wire [7:0]  State;
    wire        PC_button_ila;
    wire [7:0]  data_state_ila;
    wire        ready_ila;
    wire        start_ila;

    wire SPI_EN = CVM300_SPI_EN;
    wire SPI_CLK = CVM300_SPI_CLK;
    wire SPI_IN = CVM300_SPI_IN;
    wire SPI_out = CVM300_SPI_OUT;

    //Instantiate the module that we like to test
    CMV300 CMV300_1 (        
        .led(led),
        .sys_clkn(sys_clkn),
        .sys_clkp(sys_clkp),
   
        .CVM300_CLK_IN(CVM300_CLK_IN),
        .CVM300_SPI_EN(CVM300_SPI_EN),
        .CVM300_SPI_IN(CVM300_SPI_IN),   
        .CVM300_SPI_OUT(CVM300_SPI_OUT),
        .CVM300_SPI_CLK(CVM300_SPI_CLK),

        .FSM_Clk_reg(FSM_Clk),        
        .ILA_Clk_reg(ILA_Clk),

        .State(State),
        .PC_button_ila(PC_button_ila),
        .start_ila(start_ila),
        .ready_ila(ready_ila),
        .data_state_ila(data_state_ila),

        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA)
        
        );
    
    //Instantiate the ILA module probe0 num of bits - 22
    ila_0 ila_sample12 ( 
        .clk(ILA_Clk),
        .probe0({SPI_EN, SPI_CLK, SPI_IN, CVM300_SPI_OUT, State, start_ila, ready_ila, data_state_ila}),                             
        .probe1({FSM_Clk, PC_button_ila})
        );                        
endmodule