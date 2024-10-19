// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Sat Oct 19 01:41:12 2024
// Host        : ECEB-4022-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ fifo_generator_0_sim_netlist.v
// Design      : fifo_generator_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_generator_0,fifo_generator_v13_2_7,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_7,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [7:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output prog_full;

  wire [7:0]din;
  wire [7:0]dout;
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
  wire [11:0]NLW_U0_rd_data_count_UNCONNECTED;
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
  (* C_DOUT_WIDTH = "8" *) 
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
  (* C_RD_DATA_COUNT_WIDTH = "12" *) 
  (* C_RD_DEPTH = "4096" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "12" *) 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_generator_v13_2_7 U0
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
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(prog_full),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[11:0]),
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray
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
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[8]_i_1 
       (.I0(src_in_bin[9]),
        .I1(src_in_bin[8]),
        .O(gray_enc[8]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
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
(* VERSION = "0" *) (* WIDTH = "12" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_xpm_cdc_gray__2
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 113808)
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
