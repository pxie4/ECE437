// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Tue Oct 29 16:49:10 2024
// Host        : PhilsLegion running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/xieph/OneDrive/Desktop/ECE437/FinalProject/FinalProject.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.1" *) 
(* NotValidForBitStream *)
module fifo_generator_0
   (wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    prog_full);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  input wr_rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  input rd_rst;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [7:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [7:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire prog_full;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [11:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [11:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "12" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "8" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "10" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "1" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "4kx9" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "1022" *) 
  (* C_PROG_FULL_TYPE = "1" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "10" *) 
  (* C_RD_DEPTH = "1024" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "10" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "12" *) 
  (* C_WR_DEPTH = "4096" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "12" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_generator_0_fifo_generator_v13_2_7 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[11:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(rd_rst),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(1'b0),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[11:0]),
        .wr_en(wr_en),
        .wr_rst(wr_rst),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [11:0]src_in_bin;
  input dest_clk;
  output [11:0]dest_out_bin;

  wire [11:0]async_path;
  wire [10:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [11:0]\dest_graysync_ff[1] ;
  wire [11:0]dest_out_bin;
  wire [10:0]gray_enc;
  wire src_clk;
  wire [11:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[10]),
        .Q(\dest_graysync_ff[0] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[11]),
        .Q(\dest_graysync_ff[0] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [10]),
        .Q(\dest_graysync_ff[1] [10]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [11]),
        .Q(\dest_graysync_ff[1] [11]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[10]_i_1 
       (.I0(\dest_graysync_ff[1] [10]),
        .I1(\dest_graysync_ff[1] [11]),
        .O(binval[10]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(\dest_graysync_ff[1] [5]),
        .I3(binval[6]),
        .I4(\dest_graysync_ff[1] [4]),
        .I5(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [5]),
        .I4(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(binval[6]),
        .I3(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(binval[6]),
        .I2(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(binval[6]),
        .O(binval[5]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [10]),
        .I3(\dest_graysync_ff[1] [11]),
        .I4(\dest_graysync_ff[1] [9]),
        .I5(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [10]),
        .I4(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [10]),
        .I2(\dest_graysync_ff[1] [11]),
        .I3(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[9]_i_1 
       (.I0(\dest_graysync_ff[1] [9]),
        .I1(\dest_graysync_ff[1] [11]),
        .I2(\dest_graysync_ff[1] [10]),
        .O(binval[9]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[10] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[10]),
        .Q(dest_out_bin[10]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[11] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [11]),
        .Q(dest_out_bin[11]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[10]_i_1 
       (.I0(src_in_bin[11]),
        .I1(src_in_bin[10]),
        .O(gray_enc[10]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[9]_i_1 
       (.I0(src_in_bin[10]),
        .I1(src_in_bin[9]),
        .O(gray_enc[9]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[10] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[10]),
        .Q(async_path[10]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[11] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[11]),
        .Q(async_path[11]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "10" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_generator_0_xpm_cdc_gray__parameterized1
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [9:0]src_in_bin;
  input dest_clk;
  output [9:0]dest_out_bin;

  wire [9:0]async_path;
  wire [8:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [9:0]\dest_graysync_ff[1] ;
  wire [9:0]dest_out_bin;
  wire [8:0]gray_enc;
  wire src_clk;
  wire [9:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[8]),
        .Q(\dest_graysync_ff[0] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[9]),
        .Q(\dest_graysync_ff[0] [9]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [8]),
        .Q(\dest_graysync_ff[1] [8]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [9]),
        .Q(\dest_graysync_ff[1] [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(\dest_graysync_ff[1] [2]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [3]),
        .I4(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(\dest_graysync_ff[1] [3]),
        .I2(binval[4]),
        .I3(\dest_graysync_ff[1] [2]),
        .O(binval[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(binval[4]),
        .I2(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(binval[4]),
        .O(binval[3]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [8]),
        .I3(\dest_graysync_ff[1] [9]),
        .I4(\dest_graysync_ff[1] [7]),
        .I5(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [8]),
        .I4(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [8]),
        .I2(\dest_graysync_ff[1] [9]),
        .I3(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[7]_i_1 
       (.I0(\dest_graysync_ff[1] [7]),
        .I1(\dest_graysync_ff[1] [9]),
        .I2(\dest_graysync_ff[1] [8]),
        .O(binval[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[8]_i_1 
       (.I0(\dest_graysync_ff[1] [8]),
        .I1(\dest_graysync_ff[1] [9]),
        .O(binval[8]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[8] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[8]),
        .Q(dest_out_bin[8]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[9] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [9]),
        .Q(dest_out_bin[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[7]_i_1 
       (.I0(src_in_bin[8]),
        .I1(src_in_bin[7]),
        .O(gray_enc[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[7]),
        .Q(async_path[7]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[8] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[8]),
        .Q(async_path[8]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[9] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[9]),
        .Q(async_path[9]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
RgPKnWr9n0dGgttm3akiFhAlfB96usOQYxnEmPhGyTGg1AbizYAjGPWLXBWl50n/d0IA71ci4aJB
wt6mtfyNADm3ZReK7D3mKu037BOgxryoEwwf1kiC6q/PllxsdAgEMfQrfHJ3E2AzSpdYjoxVYito
y0JW6CUDcWvWa4WV0EA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
M0l6KpOGH3jL8eRt3NCD7e2USYnkg5H9GAnE1PKmnjiouFN3Y8kjWA2PZDAQLm9UW+TsC1HeVlzO
WjNCHkjR/6ubCsIcWfpPZWdIuAenlsyq8Y9l6b8vMj8JSbDEOiFF/GHSbKsn22MJdDJKEhHFK6GV
s8gR2vywRFwG69gIRE4qGhVB+WIg8GJrDpDMYH6lCjMkTrjXuKDUcNlJN3NPLuhJ7tsditwf1pr5
moJRmGpJnip/rGm0g4o4A6ev4CtePjoao8C1wFtzHkERX9oenhh7cGjDMejU5IrLv8NxFnLj1FpB
9MuF1beTU20NI5oAn6zLiLiOtXjf0ghU3AN4DA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
hAsrUfp6Qgjm8yBjNYTEtQmVQmMxzL8TE/3oiQSxSI3+yEkXAbQCXkT9mo+LCdv+fGECOB0istHd
eLtbsiYbxjxNxYkXiUrRE5O+aSxynIray+uF9DJigTEUZu8JJXUbzxK4DDUu1Lm9tpGps4+Prz1m
0gkj13RT/Y/418s2VTw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BP/54Wm/GJmb1jy0bxWJJX4aiKyiWPVh4X3VL30BQrmX4PlEsNKzBJH3Qu8IIYERfnFP0ifAgboa
vypMQ5Ed0BrMePGkWIgT6I8hxJCMFpHdkSK7m1giSKyZzFfTOrVqoNFXE+qdzLfY1J5hBWCvouYo
jllavK4N3gF9FLScH2AUWYVMcVth2QPaTAU2NLnAUNH8kgtBjBfc8/KbPPTznD1QNVqvFstzcbTA
hGQ1ETVPvINQ0KqxxAG5PRhtQD4+pC+hr/Tvk+RSvGyBOfy9zE86OXkJiYs9dSFhNiMFmCPL9DBO
se4OxNNC0/7aBtb1mkSEA9YFDYEb9jS7Jasy2A==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
SnzT9DVH3xlEN8nrr2YrlvTO5qj7L22d7WaBcuKyTaiHoIwwFHrC4HQbfs0TAwkdWcOgmJoATPSF
F6qm0KiddbrlERF3MfKUldeGBJtqLdX+zGw7+3JD7S+HB9dIMOFOHy+IiCZp1/Pz8epKpi238cel
rcVoJQKz406wmXDvOo8KsT+XhRLs9BVCrBErPGGXKYDk6NXAp0duOgQE9DbslzMU83M/kUC7uERV
tQW02240peKQFp2elEZC7Tetvgp0TaFTtJiKN45REi8GQUCKGa85JjNIk1qb/+k95TIIP1xrHirc
6iX7qbwnPetv8TVu2NjkZ0WDEK5RXdOXcxBwHA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
erkR82V0jX8ytva+9MzEs0c75Z7j7TsgxWRLNAUfbbU28i+U9YzuZlSfYU75M0f9jx1gvxtBrfKv
cNHVdkR+i5zfHDZsDwfMEEBhs8wzDCKqe+eex6BBEvlIOesCPXrr2RozQgaQ1PBh/os2Arfu+873
BjsVxFJkbhpzIqlddOo/XZV9Yi+eih7A7pXXEBR6IL7Poo4Ka49MiVQU0xJrDTm+ddOuMPDRRD7g
dsxS/uzdcBcO2myV6g/7YH/C2Ce9s6+UywJN/0JeXSqwA7bsBqqnfFicVAT0lckLopMLiuzK7dsN
EwhFeqoetciFrDIj9+o0xDMWBZhgNP1u68vURA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
R+BI65BKLT0I9hEtsxGnDyM5XY9gzULeTPOSDXvd3KWOzZJAx6C0xlbyZcFZhAEG/QIK2yd0wAi6
IUWxyF/sx3HsqKjhVi5KxnpuXDBOZVoj811O7JukedFVmDW7OHGtBkuiJ5X5irw7mfsEKRQmF/1i
V6lj9HYHZEjxtDeZjACsLY4y1QxWalSKT4HIMOHznBLL8dLbGMlS+ZmFuFn0gcwZavVl7gTkTtkf
W0gn01A9ru7NKsf+iLX0kj4dgItPu9N2g02M1vWQ9UUQEVvfV7lUc7GY1suibrD8aEkhH9S7lZ7n
bFsT4qxyvzg8ML6v4g4v7N6VuyhEtgFgNd725Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
jNUVKiwH68vHsU54idgvKwaVJcoxTUuxfgrQpbpmM/IpesWA3wHsGzYClwAxkKzw3KRnFyQqTWcZ
yj1EQ2CMBxlJ0kyNbZW8OK8pXzeigToZ0U6Aq3Gy+j7wBbhe83wE1Ygn82sK8dHTEulvaRLn/c5r
ispy1s7jMKIvYNzoUuZrgyBQyfaYmdqUia8XlQjFd+VwzhTXKwzvmaqHWyaHjfBKeCooO7+oUxMG
OJg83W54EVe9ronFQ8Wr9EOL8ia7qelCAgyQe/bC0HHCoMAm8apI7sX23iMR/wMiPP5V2bQzycy+
rBX/+SWkqSeIE1FLm+muFPvrE7iLwJaW8d1fzdFFjAZ5aIXArbWNfwbK8S0TczXc9lEzmpb69rwA
UJIrs4alo81qGQ32UFhjuMQjX75O9Od1HWHDj5PFaT/Ja5Ly+bK8Cc3gfO6dCE81m7d+B2JBZ/Hl
tBA19QuOAYwT2EIPOdpaVtCULb33cWODWu3qQFhZMmDzKTb3kwpcr0LL

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MnzcA2swaxH1LRacKDou0ZmiiMRETbWIdHgeBgyQz7ILronsXLoB/C20WuFNGEVSiL2/51EZ6MXZ
vMHI8fFcMQCJcuTBDBibUMKv6bXI9s8fTbtrBZppbF/R1icG5JYhqmX4aRnv4W/dxJRjI2L35nLN
Y48E9OfgfkD1sr+IRwx8WEKFmUhuk8dLe0VOK7ywe3XEcneYvrz+HhPj16bGmNfMwNnDgZ3gKKZD
hRnys+jzvAX3HyISrErWXhMKrhWMxXeTNFJCqNQ0LWAVHQYwyKnF5xVpyXSuGNSIrva+QXqOrZBG
3VNLirNVtMRiKLfwZeMaqvswkqBDAa53utlAAA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
d0xXkKtsKM8GvXhDZr16p1+oE3uBtD04BJ76eGGIEj/CFECfHVy9qsJ43oSKjas0+AJr4GFFnVb6
X7gJV6MmX/OboC9ier5joUCGz0mxVzkRZK9a+LPEDcg0K6+cLE36kr+FfxW9Uk2816EHBCMCf5mK
A4eAhSmAb5Nq74F/q0quiG416npbny7faiQ+xmPDfYYiM3UuMKaD4iE8ODlz1w5xThPllWESf3LZ
NTkw6fozyTqZ47vvE21O3dgIGAY1v+C6BwlCK24VwPJa1xs9csY+qTk31j5jjAc1ExlB6QF7t9UH
lk70qdNPWxT87OH7kFT8UvPO1D6BTC3/WkDZfA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYhdzKTvo93uJrAaiP5OfCDuOnu2BSvPnxlv6I7h2n1+xHtj34LNNKzWEgOg9dUV9cYDaHYUjjEt
DKdWcz6mZ61d5qyxAhpv67fc90v7JVgtOAcT94/Yb+AuLxXFcGA6Gic7uoJtUgz6JmTnb22Dxdjc
KuIewDj4IOTfP8XGXKTaF+cNp0CFrQgTAcVSQFyLFxr0I/9h3S+GZLecA7ntEeHEOfCJzPvy0ddi
7MCdQWECLb+fXC0IAn8V95TumcpINiRAX1BHi9IGJ4QoMrb3jOCrPkFhDMTJj2aiImUWdi/l/0QE
d7wcXlgIEYVeoKYUOJ4mqy+zZPUbLNeOPADUDQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 114112)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
