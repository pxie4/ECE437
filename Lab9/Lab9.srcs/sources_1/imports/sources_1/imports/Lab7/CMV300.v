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

    output wire                 CVM300_SYS_RES_N,
    output wire                 CVM300_FRAME_REQ,
    input wire                  CVM300_Line_valid,
    input wire                  CVM300_Data_valid,   
    input wire      [7:0]       CVM300_D,
    input wire                  CVM300_CLK_OUT,   

    output reg                  FSM_Clk_reg,    
    output reg                  ILA_Clk_reg,
    //-----------------------------------------------------------------------
    // Default ILA Outputs
    output wire     [7:0]       State,
    output wire                 PC_button_ila,
    output wire                 start_ila,
    output wire                 ready_ila,
    output wire     [7:0]       data_state_ila,
    output wire     [7:0]       wr_data_ila,
    output wire                 wr_en_ila,
    output wire                 rd_en_ila,
    output wire                 bt_full_ila,
    output wire                 line_check_ila,
    //-----------------------------------------------------------------------
    // OK connetions
    input  wire     [4:0]       okUH,
    output wire     [2:0]       okHU,
    inout  wire     [31:0]      okUHU,   
    inout  wire                 okAA
    
    );
    wire [31:0] mode, data_out, data_in, slave_reg, PC_control;
    wire spi_start, img_start;
    wire ready;

    // FIFO Interface
    wire [31:0] FIFO_data_out;
    wire [7:0]  wr_data;
    wire write_reset, read_reset, write_enable, FIFO_read_enable, FIFO_full, FIFO_BT_BlockSize_Full, BT_Strobe;
    // OK Interface
    wire            okClk;
    wire [112:0]    okHE;  //These are FrontPanel wires needed to IO communication    
    wire [64:0]     okEH;  //These are FrontPanel wires needed to IO communication 

    //Instantiate the ClockGenerator module, where three signals are generate:
    //High speed CLK signal, Low speed FSM_Clk signal     
    // 200 MHz -> 25 MHz with DivThreshold 4 for FSM_CLK = CVM300_CLK_IN 
    wire [23:0] ClkDivThreshold = 4;   
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

    assign PC_button_ila = PC_control[1];
    assign start_ila = img_start;
    assign ready_ila = ready;
    assign wr_data_ila = wr_data;
    assign wr_en_ila = write_enable;
    assign rd_en_ila = FIFO_read_enable;
    assign bt_full_ila = FIFO_BT_BlockSize_Full;

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
        .RES_N(CVM300_SYS_RES_N),

        .State(),
        .ready(ready),
        .data_state_ila(data_state_ila),
        .data_out(data_out)
    );  

    One_Cycle_Wire SPI_Start(
        .clk(FSM_Clk),
        .pc_wire(PC_control[0]),
        .pc_cycle(spi_start)
    );

    One_Cycle_Wire IMG_Start(
        .clk(FSM_Clk),
        .pc_wire(PC_control[1]),
        .pc_cycle(img_start)
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
        .State_ila(State),
        .line_check_ila(line_check_ila)
    );

    fifo_generator_0 FIFO(
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
    
    localparam end_point = 3;
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

    okWireOut Data_Out      (   .okHE(okHE),
                                .okEH(okEHx[0*65 +:65]),
                                .ep_addr(8'h20),
                                .ep_datain(data_out)); 

    okWireOut trigReady     (   .okHE(okHE),
                                .okEH(okEHx[1*65 +:65]),
                                .ep_addr(8'h21),
                                .ep_datain(ready));

    okBTPipeOut IMGtoPC (
        .okHE(okHE), 
        .okEH(okEHx[ 2*65 +: 65 ]),
        .ep_addr(8'ha0), 
        .ep_datain({FIFO_data_out[7:0],FIFO_data_out[15:8],FIFO_data_out[23:16],FIFO_data_out[31:24]}), 
        .ep_read(FIFO_read_enable),
        .ep_blockstrobe(BT_Strobe), 
        .ep_ready(FIFO_BT_BlockSize_Full)
    ); 
endmodule
