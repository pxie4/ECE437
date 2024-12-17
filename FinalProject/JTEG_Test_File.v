`timescale 1ns / 1ps

module JTEG_Test_File(   
    output [7:0]        led,
    input               sys_clkn,
    input               sys_clkp,  

    // For PMOD
    output              PMOD_A1,
    output              PMOD_A2,
    // For LSM303DLHC
    output              I2C_SCL_1,
    inout               I2C_SDA_1,
    // For CMV300
    output              CVM300_CLK_IN,
    output              CVM300_SPI_EN,
    output              CVM300_SPI_IN,   
    input               CVM300_SPI_OUT,
    output              CVM300_SPI_CLK,
    // output              CVM300_Enable_LVDS, // assign to gnd for parallel
    output              CVM300_FRAME_REQ,
    input               CVM300_Line_valid,
    input               CVM300_Data_valid,
    input [9:0]         CVM300_D,
    output              CVM300_SYS_RES_N,
    input               CVM300_CLK_OUT,

    input  [4:0]        okUH,
    output [2:0]        okHU,
    inout  [31:0]       okUHU,
    inout               okAA      
);

    wire  ILA_Clk, SPI_Clk, I2C_Clk;    
   
    CMV300 CMV300_1 (        
        .led(led),
        .sys_clkn(sys_clkn),
        .sys_clkp(sys_clkp),

        .PMOD_A1(PMOD_A1),
        .PMOD_A2(PMOD_A2),
        
        .I2C_SCL_1(I2C_SCL_1),
        .I2C_SDA_1(I2C_SDA_1), 
        
        .CVM300_CLK_IN(CVM300_CLK_IN),
        .CVM300_SPI_EN(CVM300_SPI_EN),
        .CVM300_SPI_IN(CVM300_SPI_IN),   
        .CVM300_SPI_OUT(CVM300_SPI_OUT),
        .CVM300_SPI_CLK(CVM300_SPI_CLK),

        .CVM300_SYS_RES_N(CVM300_SYS_RES_N),
        .CVM300_FRAME_REQ(CVM300_FRAME_REQ),
        .CVM300_Line_valid(CVM300_Line_valid),
        .CVM300_Data_valid(CVM300_Data_valid),
        .CVM300_D(CVM300_D[7:0]), // expected of 8 bit mode
        .CVM300_CLK_OUT(CVM300_CLK_OUT),
        
        .SPI_Clk_reg(SPI_Clk),
        .I2C_Clk_reg(I2C_Clk),        
        .ILA_Clk_reg(ILA_Clk),

        .okUH(okUH),
        .okHU(okHU),
        .okUHU(okUHU),
        .okAA(okAA)
        );
    
    ila_0 ila_sample12 ( 
        .clk(ILA_Clk),
        .probe0({I2C_Clk}),                             
        .probe1({FSM_Clk})
        );                  
endmodule