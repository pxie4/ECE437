`timescale 1ns / 1ps
module lab3_example(
    // Part of Milestone 2: Enable WireIn
    input wire [4:0] okHU,
    output wire [2:0] okUH,
    inout wire [31:0] okUHU,
    inout wire okAA,
    input wire reset, //not sure if needed
    //
    input [3:0] button,
    output [7:0] led,
    input sys_clkn,
    input sys_clkp  
    );

//    reg [1:0] state = 0;
//    reg [7:0] led_register = 0;
//    reg [3:0] button_reg;    
                
//    wire clk;
//    IBUFGDS osc_clk(
//        .O(clk),
//        .I(sys_clkp),
//        .IB(sys_clkn)
//    );
    
//    assign led = ~led_register; //map led wire to led_register
//    localparam STATE_INIT       = 2'd0;
//    localparam STATE_ALPHA      = 2'd1;
//    localparam STATE_BRAVO      = 2'd2;
//    localparam STATE_CHARLIE    = 2'd3;            
    localparam C1_R     = 3'd0;
    localparam C1_Y     = 3'd1;
    localparam C1_G     = 3'd2;
    localparam C2_R     = 3'd3;
    localparam C2_Y     = 3'd4;
    localparam C2_G     = 3'd5;
    localparam P_R      = 3'd6;
    localparam P_G      = 3'd7;
         
      
//    always @(posedge clk)
//    begin       
//        button_reg = ~button;
//        if (button_reg [3:0] == 4'b1110) state <= STATE_INIT;
//        else
//        begin
//            case (state)
//                STATE_INIT : begin
//                    if (button_reg == (4'b0100)) state <= STATE_ALPHA;                    
//                    else if (button_reg == 4'b1000) state <= STATE_BRAVO;
//                    else led_register <= 8'b00000011;                                                                        
//                end

//                STATE_ALPHA : begin
//                    if (button_reg == 4'b1000) state <= STATE_CHARLIE;                    
//                    else if (button_reg == 4'b0010) state <= STATE_INIT;
//                    else led_register <= 8'b00001111;                                                                        
//                end

//                STATE_BRAVO : begin
//                    if (button_reg == 4'b0100) state <= STATE_CHARLIE;                    
//                    else if (button_reg == 4'b0010) state <= STATE_INIT;
//                    else led_register <= 8'b11110000;                                                                        
//                end

//                STATE_CHARLIE : begin
//                    if (button_reg == 4'b0010) state <= STATE_INIT;                    
//                    else led_register <= 8'b10101010;                                                                        
//                end
                
//                default: state <= STATE_INIT;
                
//            endcase
//        end                           
//    end
// ---------------------------------------------------------------------------------------------
// Milestone 2:
//
    //
//    wire okClk;
//    wire [112:0] okHE;
//    wire [64:0] okEH;
    wire ped_light;
    
//    okHost hostIF (
//        .okUH(okUH),
//        .okHU(okHU),
//        .okUHU(okUHU),
//        .okClk(okClk),
//        .okAA(okAA),
//        .okHE(okHE),
//        .okEH(okEH)
//    );
    
//    okWireIn ped (
//        .okHE(okHE),
//        .ep_addr(8'h00),
//        .ep_dataout(ped_light)
//    );
    
    //
    reg [2:0] cnt; // only needs to count to 6
    reg [7:0] led_reg;
    reg slow_clk;
    reg [31:0] clkdiv;
    wire clk;
    wire state;
    
    
    IBUFGDS osc_clk(
        .O(clk),
        .I(sys_clkp),
        .IB(sys_clkn)
    );    
    
    // assume clk has period of 10 ns
    // we requie slow_clk to have period of .5 secs
    // so clk_div should be 50_000_000
    initial begin
        clkdiv = 0;
        cnt = 0;
        led_reg = 0;
    end
    
    always @(posedge clk) begin
        clkdiv <= clkdiv + 1;
        if (clkdiv == 50000000) begin
            slow_clk <= ~slow_clk;
            clkdiv <= 0;
    end
    
    always @(posedge slow_clk) begin
//        cnt <= cnt + 1;
//        if (cnt == 6) begin
//            cnt <= 0;
//        end
//        if (button) begin
//            cnt <= cnt + 1;
//        end
    end
    
    // led[7:0] {R3, G3, R2, Y2, G2, R1, Y1, G1}
    intial begin
        state <= C1_G;
    end
    always @(posedge slow_clk) begin
        case (state)
            C1_G: begin
                led_reg <= 8'b00100001;
                if (cnt == 2) begin
                    state <= C1_Y;
                    cnt <= 0;
                    end
                if (cnt < 2) begin
                    state <= C1_G;
                    cnt <= cnt + 1;
            end
            C1_Y: begin
                led_reg <= 8'b00100010;
                if (cnt == 2) begin
                    state <= C1_Y;
                    cnt <= 0;
                    end
                if (cnt < 1) begin
                    cnt <= cnt + 1;
            end
            C2_G: begin
                led_reg <= {};
            end
            C2_Y: begin
                led_reg <= {};
            end
            P_G: begin
                led_reg <= {};
            end
          
            
            default:
        endcase
    end
endmodule

