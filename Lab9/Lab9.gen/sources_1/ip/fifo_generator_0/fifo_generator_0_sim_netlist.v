// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Oct 19 00:26:26 2024
// Host        : ECEB-4022-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               u:/Desktop/ECE437/Lab9/Lab9.gen/sources_1/ip/fifo_generator_0/fifo_generator_0_sim_netlist.v
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
