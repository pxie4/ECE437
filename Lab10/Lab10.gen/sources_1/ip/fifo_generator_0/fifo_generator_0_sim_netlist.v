// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Oct 19 03:04:00 2024
// Host        : ECEB-4022-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top fifo_generator_0 -prefix
//               fifo_generator_0_ fifo_generator_0_sim_netlist.v
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

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* REG_OUTPUT = "1" *) 
(* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) (* VERSION = "0" *) 
(* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 113216)
`pragma protect data_block
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
b3Varfez+lWZ4YQ7U0c=
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
