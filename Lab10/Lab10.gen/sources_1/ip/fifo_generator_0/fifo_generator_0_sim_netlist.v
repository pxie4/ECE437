// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Oct 19 03:04:02 2024
// Host        : ECEB-4022-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Desktop/ECE437/Lab10/Lab10.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
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
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

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
