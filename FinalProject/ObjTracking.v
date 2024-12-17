`timescale 1ns / 1ps

module CMV300
(    
    output          [7:0]       led,
    input                       sys_clkn,
    input                       sys_clkp,

    output wire                 PMOD_A1, // M2_EN
    output wire                 PMOD_A2, // M2_Dir
    
    output                      I2C_SCL_1,
    inout                       I2C_SDA_1,  

    output wire                 CVM300_CLK_IN,
    output wire                 CVM300_SPI_EN,
    output wire                 CVM300_SPI_IN,   
    input wire                  CVM300_SPI_OUT,
    output wire                 CVM300_SPI_CLK,

    output wire                 CVM300_SYS_RES_N,
    output wire                 CVM300_FRAME_REQ,
    input wire                  CVM300_Line_valid,
    input wire                  CVM300_Data_valid,   
    input wire      [7:0]       CVM300_D,
    input wire                  CVM300_CLK_OUT,   

    output reg                  SPI_Clk_reg,
    output reg                  I2C_Clk_reg,    
    output reg                  ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // Default ILA Outputs
    //-----------------------------------------------------------------------
    // OK connetions
    input  wire     [4:0]       okUH,
    output wire     [2:0]       okHU,
    inout  wire     [31:0]      okUHU,   
    inout  wire                 okAA
    
    );
    // WireIn Interface
    wire [31:0] spi_pc, img_pc, i2c_pc, pwm_pc; 
    wire spi_start, img_start, i2c_start, pwm_start; // Respective start signals
    wire [31:0] spi_mode, spi_data_out, spi_data_in, spi_slave_reg; // For SPI
    // wire [31:0] num_of_frames; // For IMG_FSM actually hardcode to only 1 frame
    wire [31:0] i2c_mode, i2c_data_out, i2c_data_in, i2c_slave_address, i2c_slave_reg, i2c_num_of_bytes; // For I2C
    wire [31:0] EN, DIR, PULSES; // For PWM
    wire spi_ready, i2c_ready; // Will for Ready {spi_ready, i2c_ready}

    // FIFO Interface
    wire [31:0] FIFO_data_out, num_of_en;
    wire [7:0]  wr_data;
    wire write_reset, read_reset, write_enable, FIFO_read_enable, FIFO_full, FIFO_BT_BlockSize_Full, BT_Strobe;

    // OK Interface
    wire            okClk;
    wire [112:0]    okHE;  //These are FrontPanel wires needed to IO communication    
    wire [64:0]     okEH;  //These are FrontPanel wires needed to IO communication 

    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    // 200 MHz -> 25 MHz with DivThreshold 4 for SPI_CLK = CVM300_CLK_IN 
    // 200 MHz -> 1000 KHz with DivThreshold 100
    // 200 MHz -> 200 Hz with DivThreshold 50000 and 10 cycles for duty cycle
    wire [23:0] SPIDivThreshold = 4;
    wire [23:0] I2CDivThreshold = 250;   
    wire [23:0] PWMDivThreshold = 50000;   
    wire SPI_Clk, I2C_Clk, PWM_Clk, ILA_Clk, pwm, ACK_bit; 
    ClockGenerator ClockGenerator1 (  .sys_clkn(sys_clkn),
                                      .sys_clkp(sys_clkp),                                      
                                      .SPIDivThreshold(SPIDivThreshold),
                                      .I2CDivThreshold(I2CDivThreshold),
                                      .PWMDivThreshold(PWMDivThreshold),
                                      .SPI_Clk(SPI_Clk),
                                      .I2C_Clk(I2C_Clk),
                                      .PWM_Clk(PWM_Clk),                                      
                                      .ILA_Clk(ILA_Clk));
    // Output to Specific Pins
    assign CVM300_CLK_IN = SPI_Clk;
    assign I2C_SCL_1 = SCL;
    assign I2C_SDA_1 = SDA; 
    assign PMOD_A1 = pwm; 
    assign PMOD_A2 = DIR[0]; 

    always @(*) begin         
        SPI_Clk_reg = SPI_Clk;
        I2C_Clk_reg = I2C_Clk;
        ILA_Clk_reg = ILA_Clk;
    end 

    SPI SPI_1 (
        .FSM_Clk(SPI_Clk),
        .slave_reg(spi_slave_reg),
        .start(spi_start),
        .mode(spi_mode),
        .data_in(spi_data_in),

        .SPI_OUT(CVM300_SPI_OUT),
        .SPI_IN(CVM300_SPI_IN),
        .SPI_CLK(CVM300_SPI_CLK),
        .SPI_EN(CVM300_SPI_EN),
        .RES_N(CVM300_SYS_RES_N),
        
        .State(),
        .ready(spi_ready),
        .data_out(spi_data_out)
    );  

    I2C_Read I2C_read (
        .FSM_Clk(I2C_Clk),
        .slave_address(i2c_slave_address),
        .slave_reg(i2c_slave_reg),
        .start(i2c_start),
        .mode(i2c_mode),
        .num_of_bytes(i2c_num_of_bytes),
        .data_in(i2c_data_in),

        .ACK_bit(ACK_bit),
        .SCL(SCL),
        .SDA(SDA),
        .ready(i2c_ready),
        .data_out(i2c_data_out)
    ); 

    img_fsm IMG_FSM(
        .clk(CVM300_CLK_OUT),
        .start(img_start),
        .lval(CVM300_Line_valid),
        .dval(CVM300_Data_valid),
        .data_in(CVM300_D),

        .wr_reset(write_reset),
        .rd_reset(read_reset),
        .wr_en(write_enable),
        .wr_data(wr_data),
        .frame_req(CVM300_FRAME_REQ),  
        .num_of_en(num_of_en)      
    );

    fifo_generator_0 FIFO(
        // .rst(rst),
        .wr_clk(CVM300_CLK_OUT),
        .wr_rst(write_reset),
        .rd_clk(okClk),
        .rd_rst(read_reset),
        .din(wr_data),
        .wr_en(write_enable),
        .rd_en(FIFO_read_enable),
        .dout(FIFO_data_out),
        .full(FIFO_full),
        .empty(FIFO_empty),       
        .prog_full(FIFO_BT_BlockSize_Full)        
    );

    PWMgen PWMgen1 (    
        .clk(PWM_Clk),
        .pwm_start(pwm_start),
        .duty(EN[3:0]),
        .num_of_pulses(PULSES[7:0]),
        .pwm(pwm) 
    );

    One_Cycle_Wire IMG_Start(
        .clk(SPI_Clk),
        .pc_wire(img_pc[0]),
        .pc_cycle(img_start)
    );

    One_Cycle_Wire SPI_Start(
        .clk(SPI_Clk),
        .pc_wire(spi_pc[0]),
        .pc_cycle(spi_start)
    );
    One_Cycle_Wire PWM_Start(
        .clk(PWM_Clk),
        .pc_wire(pwm_pc[0]),
        .pc_cycle(pwm_start)
   );

    One_Cycle_Wire I2C_Start(
        .clk(I2C_Clk),
        .pc_wire(i2c_pc[0]),
        .pc_cycle(i2c_start)
   );
    
    assign led[0] = ~FIFO_empty; 
    assign led[1] = ~FIFO_full;
    assign led[2] = ~FIFO_BT_BlockSize_Full;
    assign led[3] = ~FIFO_read_enable;  
    assign led[7] = ~read_reset;
    assign led[6] = ~write_reset;   
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
    
    localparam end_point = 5;
    wire [end_point*65-1:0] okEHx;
    okWireOR # (.N(end_point)) wireOR (okEH, okEHx);

    okWireIn SPI_input (         .okHE(okHE), 
                                .ep_addr(8'h00),
                                .ep_dataout(spi_pc)); 
    okWireIn I2C_input (         .okHE(okHE), 
                                .ep_addr(8'h0C),
                                .ep_dataout(i2c_pc));
    okWireIn PWM_input (         .okHE(okHE), 
                                .ep_addr(8'h0D),
                                .ep_dataout(pwm_pc)); 
    okWireIn IMG_input (         .okHE(okHE), 
                                .ep_addr(8'h0E),
                                .ep_dataout(img_pc)); 
    // SPI -------------------------------------------------------
    okWireIn SPI_Mode (         .okHE(okHE),
                                .ep_addr(8'h01),
                                .ep_dataout(spi_mode)); // read is 0 and write is 1

    okWireIn SPI_Data_In (      .okHE(okHE),
                                .ep_addr(8'h02),
                                .ep_dataout(spi_data_in));

    okWireIn SPI_Reg_Add (      .okHE(okHE),
                                .ep_addr(8'h03),
                                .ep_dataout(spi_slave_reg)); 

    okWireOut SPI_Data_Out (    .okHE(okHE),
                                .okEH(okEHx[0*65 +:65]),
                                .ep_addr(8'h20),
                                .ep_datain(spi_data_out)); 
    // I2C -------------------------------------------------------
    okWireIn I2C_Mode (         .okHE(okHE),
                                .ep_addr(8'h04),
                                .ep_dataout(i2c_mode)); // read is 1 and write is 0

    okWireIn  I2C_BYTENUM (     .okHE(okHE),
                                .ep_addr(8'h05),
                                .ep_dataout(i2c_num_of_bytes));

    okWireIn  I2C_Data_In (     .okHE(okHE),
                                .ep_addr(8'h06),
                                .ep_dataout(i2c_data_in));

    okWireIn  I2C_Slave_Add (   .okHE(okHE),
                                .ep_addr(8'h07),
                                .ep_dataout(i2c_slave_address));

    okWireIn  I2C_Reg_Add (     .okHE(okHE),
                                .ep_addr(8'h08),
                                .ep_dataout(i2c_slave_reg));

    okWireOut I2C_Data_Out (    .okHE(okHE),
                                .okEH(okEHx[1*65 +:65]),
                                .ep_addr(8'h21),
                                .ep_datain(i2c_data_out)); 
    // PWM -------------------------------------------------------
    okWireIn DC_M2_EN (         .okHE(okHE), 
                                .ep_addr(8'h09),
                                .ep_dataout(EN));

    okWireIn DC_M2_Dir (        .okHE(okHE), 
                                .ep_addr(8'h0A),
                                .ep_dataout(DIR));

    okWireIn DC_M2_pulses (     .okHE(okHE), 
                                .ep_addr(8'h0B),
                                .ep_dataout(PULSES));

    okWireOut trigReady (       .okHE(okHE),
                                .okEH(okEHx[2*65 +:65]),
                                .ep_addr(8'h22),
                                .ep_datain({29'b0, CVM300_Data_valid, spi_ready, i2c_ready}));

    okBTPipeOut IMGtoPC (
        .okHE(okHE), 
        .okEH(okEHx[ 3*65 +: 65 ]),
        .ep_addr(8'ha0), 
        .ep_datain({FIFO_data_out[7:0],FIFO_data_out[15:8],FIFO_data_out[23:16],FIFO_data_out[31:24]}), 
        .ep_read(FIFO_read_enable),
        .ep_blockstrobe(BT_Strobe), 
        .ep_ready(FIFO_BT_BlockSize_Full)
    ); 

    okWireOut EmptyFull     (   .okHE(okHE),
                                .okEH(okEHx[4*65 +:65]),
                                .ep_addr(8'h23),
                                .ep_datain(num_of_en));
endmodule
