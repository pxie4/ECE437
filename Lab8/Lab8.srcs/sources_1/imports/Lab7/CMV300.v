`timescale 1ns / 1ps

module CMV300
(    
    output          [7:0]       led,
    input                       sys_clkn,
    input                       sys_clkp,

    output wire                 CVM300_CLK_IN,
    output wire                 CVM300_SPI_EN,
    output wire                 CVM300_SPI_IN,   
    input wire                  CVM300_SPI_OUT,
    output wire                 CVM300_SPI_CLK,

    output reg                  FSM_Clk_reg,    
    output reg                  ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // Default ILA Outputs
    output wire     [7:0]       State,
    output wire                 PC_button_ila,
    output wire                 start_ila,
    output wire                 ready_ila,
    output wire     [7:0]       data_state_ila,

    //-----------------------------------------------------------------------
    // OK connections
    input  wire     [4:0]       okUH,
    output wire     [2:0]       okHU,
    inout  wire     [31:0]      okUHU,   
    inout  wire                 okAA
    
    );
    assign led = 0;
    wire [31:0] mode, data_out, data_in, slave_reg, PC_control;
    wire spi_start;
    wire ready;

    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    // 200 MHz -> 20 MHz with DivThreshold 5 for SPI_CLK, FSM_CLK = CVM300_CLK_IN = 40 MHz
    wire [23:0] ClkDivThreshold = 5;   
    wire FSM_Clk, ILA_Clk; 
    ClockGenerator ClockGenerator1 (  .sys_clkn(sys_clkn),
                                      .sys_clkp(sys_clkp),                                      
                                      .ClkDivThreshold(ClkDivThreshold),
                                      .FSM_Clk(FSM_Clk),                                      
                                      .ILA_Clk(ILA_Clk));
    assign CVM300_CLK_IN = FSM_Clk;
    always @(*) begin         
        FSM_Clk_reg = FSM_Clk;
        ILA_Clk_reg = ILA_Clk;
    end 

    assign PC_button_ila = PC_control[0];
    assign start_ila = spi_start;
    assign ready_ila = ready;

    SPI SPI_1 (
        .FSM_Clk(FSM_Clk),
        .slave_reg(slave_reg),
        .start(spi_start),
        .mode(mode),
        //.num_of_bytes(num_of_bytes),
        .data_in(data_in),

        .SPI_OUT(CVM300_SPI_OUT),
        .SPI_IN(CVM300_SPI_IN),
        .SPI_CLK(CVM300_SPI_CLK),
        .SPI_EN(CVM300_SPI_EN),

        .State(State),
        .ready(ready),
        .data_state_ila(data_state_ila),
        .data_out(data_out)
    );  

   One_Cycle_Wire SPI_Start(
        .clk(FSM_Clk),
        .pc_wire(PC_control[0]),
        .pc_cycle(spi_start)
   );

   
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
    // read is 0 and write is 1
    okWireIn Mode (             .okHE(okHE),
                                .ep_addr(8'h00),
                                .ep_dataout(mode));

    // okWireIn  BYTENUM (         .okHE(okHE),
    //                             .ep_addr(8'h01),
    //                             .ep_dataout(num_of_bytes));
    //used when writing
    okWireIn  Data_In (         .okHE(okHE),
                                .ep_addr(8'h02),
                                .ep_dataout(data_in));

    okWireIn  Reg_Add (         .okHE(okHE),
                                .ep_addr(8'h03),
                                .ep_dataout(slave_reg));

    okWireIn PC_input (         .okHE(okHE), 
                                .ep_addr(8'h04),
                                .ep_dataout(PC_control));                         

    // Can use for loop genvar
    okWireOut Data_Out      (   .okHE(okHE),
                                .okEH(okEHx[0*65 +:65]),
                                .ep_addr(8'h20),
                                .ep_datain(data_out)); 

    okWireOut trigReady     (   .okHE(okHE),
                                .okEH(okEHx[1*65 +:65]),
                                .ep_addr(8'h21),
                                .ep_datain(ready));
    
endmodule
