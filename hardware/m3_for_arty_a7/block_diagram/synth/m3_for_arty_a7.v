//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Mar 24 15:51:08 2025
//Host        : thinkpad-p1-gen-5 running 64-bit Ubuntu 24.10
//Command     : generate_target m3_for_arty_a7.bd
//Design      : m3_for_arty_a7
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Clocks_and_Resets_imp_1WLR2TP
   (aux_reset_in,
    clk_cpu,
    clk_qspi,
    dbgresetn,
    interconnect_aresetn,
    peripheral_aresetn,
    sys_clock,
    sys_reset_n,
    sysresetn,
    sysresetreq);
  input aux_reset_in;
  output clk_cpu;
  output clk_qspi;
  output [0:0]dbgresetn;
  output [0:0]interconnect_aresetn;
  output [0:0]peripheral_aresetn;
  input sys_clock;
  input sys_reset_n;
  output [0:0]sysresetn;
  input sysresetreq;

  wire aux_reset_in;
  wire clk_cpu;
  wire clk_qspi;
  wire [0:0]dbgresetn;
  wire dcm_locked_1;
  wire [0:0]i_sysresetn_or_Res;
  wire [0:0]interconnect_aresetn;
  wire [0:0]peripheral_aresetn;
  wire [0:0]proc_sys_reset_DAPLink_interconnect_aresetn;
  wire proc_sys_reset_DAPLink_mb_reset;
  wire [0:0]proc_sys_reset_DAPLink_peripheral_aresetn;
  wire [0:0]proc_sys_reset_base_interconnect_aresetn;
  wire proc_sys_reset_base_mb_reset;
  wire [0:0]proc_sys_reset_base_peripheral_aresetn;
  wire sys_clock;
  wire sys_reset_n;
  wire [0:0]sysresetn;
  wire sysresetreq;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]NLW_proc_sys_reset_DAPLink_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_DAPLink_peripheral_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_base_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_base_peripheral_reset_UNCONNECTED;

  m3_for_arty_a7_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock),
        .clk_out1(clk_cpu),
        .clk_out2(clk_qspi),
        .locked(dcm_locked_1));
  m3_for_arty_a7_i_interconnect_aresetn_0 i_interconnect_aresetn
       (.Op1(proc_sys_reset_base_interconnect_aresetn),
        .Op2(proc_sys_reset_DAPLink_interconnect_aresetn),
        .Res(interconnect_aresetn));
  m3_for_arty_a7_i_inv_dbgresetn_0 i_inv_dbgresetn
       (.Op1(proc_sys_reset_base_mb_reset),
        .Res(dbgresetn));
  m3_for_arty_a7_i_inv_sysresetn1_0 i_inv_sysresetn1
       (.Op1(i_sysresetn_or_Res),
        .Res(sysresetn));
  m3_for_arty_a7_i_peripheral_aresetn1_0 i_peripheral_aresetn1
       (.Op1(proc_sys_reset_base_peripheral_aresetn),
        .Op2(proc_sys_reset_DAPLink_peripheral_aresetn),
        .Res(peripheral_aresetn));
  m3_for_arty_a7_i_sysresetn_or_0 i_sysresetn_or
       (.Op1(proc_sys_reset_base_mb_reset),
        .Op2(proc_sys_reset_DAPLink_mb_reset),
        .Res(i_sysresetn_or_Res));
  m3_for_arty_a7_proc_sys_reset_DAPLink_0 proc_sys_reset_DAPLink
       (.aux_reset_in(aux_reset_in),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(xlconstant_0_dout),
        .interconnect_aresetn(proc_sys_reset_DAPLink_interconnect_aresetn),
        .mb_debug_sys_rst(sysresetreq),
        .mb_reset(proc_sys_reset_DAPLink_mb_reset),
        .peripheral_aresetn(proc_sys_reset_DAPLink_peripheral_aresetn),
        .slowest_sync_clk(clk_cpu));
  m3_for_arty_a7_proc_sys_reset_base_0 proc_sys_reset_base
       (.aux_reset_in(1'b1),
        .dcm_locked(dcm_locked_1),
        .ext_reset_in(sys_reset_n),
        .interconnect_aresetn(proc_sys_reset_base_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_base_mb_reset),
        .peripheral_aresetn(proc_sys_reset_base_peripheral_aresetn),
        .slowest_sync_clk(clk_cpu));
  m3_for_arty_a7_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_0_dout));
endmodule

module daplink_if_0_imp_5IHHOQ
   (C_AXI_araddr,
    C_AXI_arburst,
    C_AXI_arcache,
    C_AXI_arlen,
    C_AXI_arlock,
    C_AXI_arprot,
    C_AXI_arready,
    C_AXI_arsize,
    C_AXI_arvalid,
    C_AXI_awaddr,
    C_AXI_awburst,
    C_AXI_awcache,
    C_AXI_awlen,
    C_AXI_awlock,
    C_AXI_awprot,
    C_AXI_awready,
    C_AXI_awsize,
    C_AXI_awvalid,
    C_AXI_bready,
    C_AXI_bresp,
    C_AXI_bvalid,
    C_AXI_rdata,
    C_AXI_rlast,
    C_AXI_rready,
    C_AXI_rresp,
    C_AXI_rvalid,
    C_AXI_wdata,
    C_AXI_wlast,
    C_AXI_wready,
    C_AXI_wstrb,
    C_AXI_wvalid,
    DAPLink_fittedn,
    SWCLK,
    SWDI,
    SWDO,
    SWDOEN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid,
    Shield_out_tri_o,
    UART_out_rxd,
    UART_out_txd,
    ext_spi_clk,
    nSRST,
    qspi_irq,
    qspi_xip_irq,
    s_axi_aclk,
    s_axi_aresetn,
    spi_irq,
    uart_rxd_axi,
    uart_txd_axi);
  input [31:0]C_AXI_araddr;
  input [1:0]C_AXI_arburst;
  input [3:0]C_AXI_arcache;
  input [3:0]C_AXI_arlen;
  input [1:0]C_AXI_arlock;
  input [2:0]C_AXI_arprot;
  output C_AXI_arready;
  input [2:0]C_AXI_arsize;
  input C_AXI_arvalid;
  input [31:0]C_AXI_awaddr;
  input [1:0]C_AXI_awburst;
  input [3:0]C_AXI_awcache;
  input [3:0]C_AXI_awlen;
  input [1:0]C_AXI_awlock;
  input [2:0]C_AXI_awprot;
  output C_AXI_awready;
  input [2:0]C_AXI_awsize;
  input C_AXI_awvalid;
  input C_AXI_bready;
  output [1:0]C_AXI_bresp;
  output C_AXI_bvalid;
  output [31:0]C_AXI_rdata;
  output C_AXI_rlast;
  input C_AXI_rready;
  output [1:0]C_AXI_rresp;
  output C_AXI_rvalid;
  input [31:0]C_AXI_wdata;
  input C_AXI_wlast;
  output C_AXI_wready;
  input [3:0]C_AXI_wstrb;
  input C_AXI_wvalid;
  output DAPLink_fittedn;
  output SWCLK;
  output SWDI;
  input SWDO;
  input SWDOEN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;
  inout [15:0]Shield_out_tri_o;
  input UART_out_rxd;
  output UART_out_txd;
  input ext_spi_clk;
  output nSRST;
  output qspi_irq;
  output qspi_xip_irq;
  input s_axi_aclk;
  input s_axi_aresetn;
  output spi_irq;
  output uart_rxd_axi;
  input uart_txd_axi;

  wire [31:0]C_AXI_araddr;
  wire [1:0]C_AXI_arburst;
  wire [3:0]C_AXI_arcache;
  wire [3:0]C_AXI_arlen;
  wire [1:0]C_AXI_arlock;
  wire [2:0]C_AXI_arprot;
  wire C_AXI_arready;
  wire [2:0]C_AXI_arsize;
  wire C_AXI_arvalid;
  wire [31:0]C_AXI_awaddr;
  wire [1:0]C_AXI_awburst;
  wire [3:0]C_AXI_awcache;
  wire [3:0]C_AXI_awlen;
  wire [1:0]C_AXI_awlock;
  wire [2:0]C_AXI_awprot;
  wire C_AXI_awready;
  wire [2:0]C_AXI_awsize;
  wire C_AXI_awvalid;
  wire C_AXI_bready;
  wire [1:0]C_AXI_bresp;
  wire C_AXI_bvalid;
  wire [31:0]C_AXI_rdata;
  wire C_AXI_rlast;
  wire C_AXI_rready;
  wire [1:0]C_AXI_rresp;
  wire C_AXI_rvalid;
  wire [31:0]C_AXI_wdata;
  wire C_AXI_wlast;
  wire C_AXI_wready;
  wire [3:0]C_AXI_wstrb;
  wire C_AXI_wvalid;
  wire DAPLink_fittedn;
  wire SWCLK;
  wire SWDI;
  wire SWDO;
  wire SWDOEN;
  wire [31:0]S_AXI_araddr;
  wire [2:0]S_AXI_arprot;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [2:0]S_AXI_awprot;
  wire [0:0]S_AXI_awready;
  wire [0:0]S_AXI_awvalid;
  wire [0:0]S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [0:0]S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire [0:0]S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire [0:0]S_AXI_wvalid;
  wire [41:26]\^Shield_out_tri_o ;
  wire UART_out_rxd;
  wire UART_out_txd;
  wire [31:0]axi_gpio_0_gpio_io_o;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire axi_interconnect_0_M01_AXI_AWVALID;
  wire axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire axi_interconnect_0_M02_AXI_AWVALID;
  wire axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire axi_interconnect_0_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire axi_interconnect_0_M03_AXI_AWVALID;
  wire axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_ARADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_ARBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_ARCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_ARLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_ARLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARPROT;
  wire axi_protocol_convert_0_M_AXI_ARREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_ARSIZE;
  wire axi_protocol_convert_0_M_AXI_ARVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_AWADDR;
  wire [1:0]axi_protocol_convert_0_M_AXI_AWBURST;
  wire [3:0]axi_protocol_convert_0_M_AXI_AWCACHE;
  wire [7:0]axi_protocol_convert_0_M_AXI_AWLEN;
  wire [0:0]axi_protocol_convert_0_M_AXI_AWLOCK;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWPROT;
  wire axi_protocol_convert_0_M_AXI_AWREADY;
  wire [2:0]axi_protocol_convert_0_M_AXI_AWSIZE;
  wire axi_protocol_convert_0_M_AXI_AWVALID;
  wire axi_protocol_convert_0_M_AXI_BREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_BRESP;
  wire axi_protocol_convert_0_M_AXI_BVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_RDATA;
  wire axi_protocol_convert_0_M_AXI_RLAST;
  wire axi_protocol_convert_0_M_AXI_RREADY;
  wire [1:0]axi_protocol_convert_0_M_AXI_RRESP;
  wire axi_protocol_convert_0_M_AXI_RVALID;
  wire [31:0]axi_protocol_convert_0_M_AXI_WDATA;
  wire axi_protocol_convert_0_M_AXI_WLAST;
  wire axi_protocol_convert_0_M_AXI_WREADY;
  wire [3:0]axi_protocol_convert_0_M_AXI_WSTRB;
  wire axi_protocol_convert_0_M_AXI_WVALID;
  wire axi_quad_spi_1_SPI_0_IO0_I;
  wire axi_quad_spi_1_SPI_0_IO0_O;
  wire axi_quad_spi_1_SPI_0_IO0_T;
  wire axi_quad_spi_1_SPI_0_IO1_I;
  wire axi_quad_spi_1_SPI_0_IO1_O;
  wire axi_quad_spi_1_SPI_0_IO1_T;
  wire axi_quad_spi_1_SPI_0_IO2_I;
  wire axi_quad_spi_1_SPI_0_IO2_O;
  wire axi_quad_spi_1_SPI_0_IO2_T;
  wire axi_quad_spi_1_SPI_0_IO3_I;
  wire axi_quad_spi_1_SPI_0_IO3_O;
  wire axi_quad_spi_1_SPI_0_IO3_T;
  wire axi_quad_spi_1_SPI_0_SCK_O;
  wire [0:0]axi_quad_spi_1_SPI_0_SS_O;
  wire axi_single_spi_0_SPI_0_IO0_I;
  wire axi_single_spi_0_SPI_0_IO0_O;
  wire axi_single_spi_0_SPI_0_IO0_T;
  wire axi_single_spi_0_SPI_0_IO1_I;
  wire axi_single_spi_0_SPI_0_IO1_O;
  wire axi_single_spi_0_SPI_0_IO1_T;
  wire axi_single_spi_0_SPI_0_SCK_O;
  wire [0:0]axi_single_spi_0_SPI_0_SS_O;
  wire axi_xip_quad_spi_0_SPI_0_IO0_I;
  wire axi_xip_quad_spi_0_SPI_0_IO0_O;
  wire axi_xip_quad_spi_0_SPI_0_IO0_T;
  wire axi_xip_quad_spi_0_SPI_0_IO1_I;
  wire axi_xip_quad_spi_0_SPI_0_IO1_O;
  wire axi_xip_quad_spi_0_SPI_0_IO1_T;
  wire axi_xip_quad_spi_0_SPI_0_IO2_I;
  wire axi_xip_quad_spi_0_SPI_0_IO2_O;
  wire axi_xip_quad_spi_0_SPI_0_IO2_T;
  wire axi_xip_quad_spi_0_SPI_0_IO3_I;
  wire axi_xip_quad_spi_0_SPI_0_IO3_O;
  wire axi_xip_quad_spi_0_SPI_0_IO3_T;
  wire axi_xip_quad_spi_0_SPI_0_SCK_O;
  wire [0:0]axi_xip_quad_spi_0_SPI_0_SS_O;
  wire ext_spi_clk;
  wire nSRST;
  wire qspi_irq;
  wire qspi_xip_irq;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire spi_irq;
  wire uart_rxd_axi;
  wire uart_txd_axi;
  wire [31:0]NLW_axi_gpio_0_gpio_io_t_UNCONNECTED;
  wire [3:0]NLW_axi_protocol_convert_0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_axi_protocol_convert_0_m_axi_arregion_UNCONNECTED;
  wire [3:0]NLW_axi_protocol_convert_0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_axi_protocol_convert_0_m_axi_awregion_UNCONNECTED;
  wire NLW_axi_quad_spi_0_sck_t_UNCONNECTED;
  wire NLW_axi_quad_spi_0_ss_t_UNCONNECTED;
  wire NLW_axi_single_spi_0_sck_t_UNCONNECTED;
  wire NLW_axi_single_spi_0_ss_t_UNCONNECTED;
  wire NLW_axi_xip_quad_spi_0_sck_t_UNCONNECTED;
  wire NLW_axi_xip_quad_spi_0_ss_t_UNCONNECTED;

  m3_for_arty_a7_DAPLink_to_Arty_shield_0_0 DAPLink_to_Arty_shield_0
       (.DAPLink_fittedn(DAPLink_fittedn),
        .SWCLK(SWCLK),
        .SWDI(SWDI),
        .SWDO(SWDO),
        .SWDOEN(SWDOEN),
        .SWRSTn(nSRST),
        .ext_spi_clk(ext_spi_clk),
        .qspi_ck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .qspi_q0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .qspi_q0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .qspi_q0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .qspi_q1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .qspi_q1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .qspi_q1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .qspi_q2_i(axi_quad_spi_1_SPI_0_IO2_I),
        .qspi_q2_o(axi_quad_spi_1_SPI_0_IO2_O),
        .qspi_q2_t(axi_quad_spi_1_SPI_0_IO2_T),
        .qspi_q3_i(axi_quad_spi_1_SPI_0_IO3_I),
        .qspi_q3_o(axi_quad_spi_1_SPI_0_IO3_O),
        .qspi_q3_t(axi_quad_spi_1_SPI_0_IO3_T),
        .qspi_sel(axi_gpio_0_gpio_io_o[0]),
        .qspi_ss_o(axi_quad_spi_1_SPI_0_SS_O),
        .qspi_xip_ck_o(axi_xip_quad_spi_0_SPI_0_SCK_O),
        .qspi_xip_q0_i(axi_xip_quad_spi_0_SPI_0_IO0_I),
        .qspi_xip_q0_o(axi_xip_quad_spi_0_SPI_0_IO0_O),
        .qspi_xip_q0_t(axi_xip_quad_spi_0_SPI_0_IO0_T),
        .qspi_xip_q1_i(axi_xip_quad_spi_0_SPI_0_IO1_I),
        .qspi_xip_q1_o(axi_xip_quad_spi_0_SPI_0_IO1_O),
        .qspi_xip_q1_t(axi_xip_quad_spi_0_SPI_0_IO1_T),
        .qspi_xip_q2_i(axi_xip_quad_spi_0_SPI_0_IO2_I),
        .qspi_xip_q2_o(axi_xip_quad_spi_0_SPI_0_IO2_O),
        .qspi_xip_q2_t(axi_xip_quad_spi_0_SPI_0_IO2_T),
        .qspi_xip_q3_i(axi_xip_quad_spi_0_SPI_0_IO3_I),
        .qspi_xip_q3_o(axi_xip_quad_spi_0_SPI_0_IO3_O),
        .qspi_xip_q3_t(axi_xip_quad_spi_0_SPI_0_IO3_T),
        .qspi_xip_ss_o(axi_xip_quad_spi_0_SPI_0_SS_O),
        .shield_41_to_26(Shield_out_tri_o[15:0]),
        .spi_ck_o(axi_single_spi_0_SPI_0_SCK_O),
        .spi_q0_i(axi_single_spi_0_SPI_0_IO0_I),
        .spi_q0_o(axi_single_spi_0_SPI_0_IO0_O),
        .spi_q0_t(axi_single_spi_0_SPI_0_IO0_T),
        .spi_q1_i(axi_single_spi_0_SPI_0_IO1_I),
        .spi_q1_o(axi_single_spi_0_SPI_0_IO1_O),
        .spi_q1_t(axi_single_spi_0_SPI_0_IO1_T),
        .spi_ss_o(axi_single_spi_0_SPI_0_SS_O),
        .uart_rxd_arty(UART_out_rxd),
        .uart_rxd_axi(uart_rxd_axi),
        .uart_txd_arty(UART_out_txd),
        .uart_txd_axi(uart_txd_axi));
  m3_for_arty_a7_axi_gpio_0_1 axi_gpio_0
       (.gpio_io_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  m3_for_arty_a7_axi_interconnect_0_1 axi_interconnect_0
       (.ACLK(s_axi_aclk),
        .ARESETN(s_axi_aresetn),
        .M00_ACLK(s_axi_aclk),
        .M00_ARESETN(s_axi_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(s_axi_aclk),
        .M01_ARESETN(s_axi_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(s_axi_aclk),
        .M02_ARESETN(s_axi_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(s_axi_aclk),
        .M03_ARESETN(s_axi_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .S00_ACLK(s_axi_aclk),
        .S00_ARESETN(s_axi_aresetn),
        .S00_AXI_araddr(S_AXI_araddr),
        .S00_AXI_arprot(S_AXI_arprot),
        .S00_AXI_arready(S_AXI_arready),
        .S00_AXI_arvalid(S_AXI_arvalid),
        .S00_AXI_awaddr(S_AXI_awaddr),
        .S00_AXI_awprot(S_AXI_awprot),
        .S00_AXI_awready(S_AXI_awready),
        .S00_AXI_awvalid(S_AXI_awvalid),
        .S00_AXI_bready(S_AXI_bready),
        .S00_AXI_bresp(S_AXI_bresp),
        .S00_AXI_bvalid(S_AXI_bvalid),
        .S00_AXI_rdata(S_AXI_rdata),
        .S00_AXI_rready(S_AXI_rready),
        .S00_AXI_rresp(S_AXI_rresp),
        .S00_AXI_rvalid(S_AXI_rvalid),
        .S00_AXI_wdata(S_AXI_wdata),
        .S00_AXI_wready(S_AXI_wready),
        .S00_AXI_wstrb(S_AXI_wstrb),
        .S00_AXI_wvalid(S_AXI_wvalid));
  m3_for_arty_a7_axi_protocol_convert_0_0 axi_protocol_convert_0
       (.aclk(s_axi_aclk),
        .aresetn(s_axi_aresetn),
        .m_axi_araddr(axi_protocol_convert_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .m_axi_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .m_axi_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_protocol_convert_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .m_axi_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .m_axi_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .m_axi_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .m_axi_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .m_axi_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .m_axi_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .m_axi_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .m_axi_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .m_axi_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .m_axi_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .m_axi_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_araddr(C_AXI_araddr),
        .s_axi_arburst(C_AXI_arburst),
        .s_axi_arcache(C_AXI_arcache),
        .s_axi_arlen(C_AXI_arlen),
        .s_axi_arlock(C_AXI_arlock),
        .s_axi_arprot(C_AXI_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(C_AXI_arready),
        .s_axi_arsize(C_AXI_arsize),
        .s_axi_arvalid(C_AXI_arvalid),
        .s_axi_awaddr(C_AXI_awaddr),
        .s_axi_awburst(C_AXI_awburst),
        .s_axi_awcache(C_AXI_awcache),
        .s_axi_awlen(C_AXI_awlen),
        .s_axi_awlock(C_AXI_awlock),
        .s_axi_awprot(C_AXI_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(C_AXI_awready),
        .s_axi_awsize(C_AXI_awsize),
        .s_axi_awvalid(C_AXI_awvalid),
        .s_axi_bready(C_AXI_bready),
        .s_axi_bresp(C_AXI_bresp),
        .s_axi_bvalid(C_AXI_bvalid),
        .s_axi_rdata(C_AXI_rdata),
        .s_axi_rlast(C_AXI_rlast),
        .s_axi_rready(C_AXI_rready),
        .s_axi_rresp(C_AXI_rresp),
        .s_axi_rvalid(C_AXI_rvalid),
        .s_axi_wdata(C_AXI_wdata),
        .s_axi_wlast(C_AXI_wlast),
        .s_axi_wready(C_AXI_wready),
        .s_axi_wstrb(C_AXI_wstrb),
        .s_axi_wvalid(C_AXI_wvalid));
  m3_for_arty_a7_axi_quad_spi_0_1 axi_quad_spi_0
       (.ext_spi_clk(ext_spi_clk),
        .io0_i(axi_quad_spi_1_SPI_0_IO0_I),
        .io0_o(axi_quad_spi_1_SPI_0_IO0_O),
        .io0_t(axi_quad_spi_1_SPI_0_IO0_T),
        .io1_i(axi_quad_spi_1_SPI_0_IO1_I),
        .io1_o(axi_quad_spi_1_SPI_0_IO1_O),
        .io1_t(axi_quad_spi_1_SPI_0_IO1_T),
        .io2_i(axi_quad_spi_1_SPI_0_IO2_I),
        .io2_o(axi_quad_spi_1_SPI_0_IO2_O),
        .io2_t(axi_quad_spi_1_SPI_0_IO2_T),
        .io3_i(axi_quad_spi_1_SPI_0_IO3_I),
        .io3_o(axi_quad_spi_1_SPI_0_IO3_O),
        .io3_t(axi_quad_spi_1_SPI_0_IO3_T),
        .ip2intc_irpt(qspi_irq),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(axi_interconnect_0_M03_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M03_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_quad_spi_1_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_quad_spi_1_SPI_0_SS_O));
  m3_for_arty_a7_axi_single_spi_0_0 axi_single_spi_0
       (.ext_spi_clk(ext_spi_clk),
        .io0_i(axi_single_spi_0_SPI_0_IO0_I),
        .io0_o(axi_single_spi_0_SPI_0_IO0_O),
        .io0_t(axi_single_spi_0_SPI_0_IO0_T),
        .io1_i(axi_single_spi_0_SPI_0_IO1_I),
        .io1_o(axi_single_spi_0_SPI_0_IO1_O),
        .io1_t(axi_single_spi_0_SPI_0_IO1_T),
        .ip2intc_irpt(spi_irq),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_single_spi_0_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_single_spi_0_SPI_0_SS_O));
  m3_for_arty_a7_axi_xip_quad_spi_0_0 axi_xip_quad_spi_0
       (.ext_spi_clk(ext_spi_clk),
        .io0_i(axi_xip_quad_spi_0_SPI_0_IO0_I),
        .io0_o(axi_xip_quad_spi_0_SPI_0_IO0_O),
        .io0_t(axi_xip_quad_spi_0_SPI_0_IO0_T),
        .io1_i(axi_xip_quad_spi_0_SPI_0_IO1_I),
        .io1_o(axi_xip_quad_spi_0_SPI_0_IO1_O),
        .io1_t(axi_xip_quad_spi_0_SPI_0_IO1_T),
        .io2_i(axi_xip_quad_spi_0_SPI_0_IO2_I),
        .io2_o(axi_xip_quad_spi_0_SPI_0_IO2_O),
        .io2_t(axi_xip_quad_spi_0_SPI_0_IO2_T),
        .io3_i(axi_xip_quad_spi_0_SPI_0_IO3_I),
        .io3_o(axi_xip_quad_spi_0_SPI_0_IO3_O),
        .io3_t(axi_xip_quad_spi_0_SPI_0_IO3_T),
        .ip2intc_irpt(qspi_xip_irq),
        .s_axi4_aclk(s_axi_aclk),
        .s_axi4_araddr(axi_protocol_convert_0_M_AXI_ARADDR[23:0]),
        .s_axi4_arburst(axi_protocol_convert_0_M_AXI_ARBURST),
        .s_axi4_arcache(axi_protocol_convert_0_M_AXI_ARCACHE),
        .s_axi4_aresetn(s_axi_aresetn),
        .s_axi4_arlen(axi_protocol_convert_0_M_AXI_ARLEN),
        .s_axi4_arlock(axi_protocol_convert_0_M_AXI_ARLOCK),
        .s_axi4_arprot(axi_protocol_convert_0_M_AXI_ARPROT),
        .s_axi4_arready(axi_protocol_convert_0_M_AXI_ARREADY),
        .s_axi4_arsize(axi_protocol_convert_0_M_AXI_ARSIZE),
        .s_axi4_arvalid(axi_protocol_convert_0_M_AXI_ARVALID),
        .s_axi4_awaddr(axi_protocol_convert_0_M_AXI_AWADDR[23:0]),
        .s_axi4_awburst(axi_protocol_convert_0_M_AXI_AWBURST),
        .s_axi4_awcache(axi_protocol_convert_0_M_AXI_AWCACHE),
        .s_axi4_awlen(axi_protocol_convert_0_M_AXI_AWLEN),
        .s_axi4_awlock(axi_protocol_convert_0_M_AXI_AWLOCK),
        .s_axi4_awprot(axi_protocol_convert_0_M_AXI_AWPROT),
        .s_axi4_awready(axi_protocol_convert_0_M_AXI_AWREADY),
        .s_axi4_awsize(axi_protocol_convert_0_M_AXI_AWSIZE),
        .s_axi4_awvalid(axi_protocol_convert_0_M_AXI_AWVALID),
        .s_axi4_bready(axi_protocol_convert_0_M_AXI_BREADY),
        .s_axi4_bresp(axi_protocol_convert_0_M_AXI_BRESP),
        .s_axi4_bvalid(axi_protocol_convert_0_M_AXI_BVALID),
        .s_axi4_rdata(axi_protocol_convert_0_M_AXI_RDATA),
        .s_axi4_rlast(axi_protocol_convert_0_M_AXI_RLAST),
        .s_axi4_rready(axi_protocol_convert_0_M_AXI_RREADY),
        .s_axi4_rresp(axi_protocol_convert_0_M_AXI_RRESP),
        .s_axi4_rvalid(axi_protocol_convert_0_M_AXI_RVALID),
        .s_axi4_wdata(axi_protocol_convert_0_M_AXI_WDATA),
        .s_axi4_wlast(axi_protocol_convert_0_M_AXI_WLAST),
        .s_axi4_wready(axi_protocol_convert_0_M_AXI_WREADY),
        .s_axi4_wstrb(axi_protocol_convert_0_M_AXI_WSTRB),
        .s_axi4_wvalid(axi_protocol_convert_0_M_AXI_WVALID),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[6:0]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .sck_i(1'b0),
        .sck_o(axi_xip_quad_spi_0_SPI_0_SCK_O),
        .ss_i(1'b0),
        .ss_o(axi_xip_quad_spi_0_SPI_0_SS_O));
endmodule

module m00_couplers_imp_13L60SF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m00_couplers_imp_JNWG9E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m01_couplers_imp_1JHKYGL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [0:0]M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule

module m01_couplers_imp_4B5460
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m02_couplers_imp_18D5QAL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [0:0]M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule

module m02_couplers_imp_OAWDIO
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m03_couplers_imp_1NKLPAV
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m03_couplers_imp_8J5MKA
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [2:0]M_AXI_arprot;
  wire [0:0]M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [2:0]M_AXI_awprot;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule

module m04_couplers_imp_D9WIKT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_AXI_arready;
  wire S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arvalid = S_AXI_arvalid;
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awvalid = S_AXI_awvalid;
  assign M_AXI_bready = S_AXI_bready;
  assign M_AXI_rready = S_AXI_rready;
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid;
  assign S_AXI_arready = M_AXI_arready;
  assign S_AXI_awready = M_AXI_awready;
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid;
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid;
  assign S_AXI_wready = M_AXI_wready;
endmodule

module m05_couplers_imp_1CJX44Q
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [2:0]M_AXI_arprot;
  wire [0:0]M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [2:0]M_AXI_awprot;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule

(* CORE_GENERATION_INFO = "m3_for_arty_a7,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=m3_for_arty_a7,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=45,numReposBlks=29,numNonXlnxBlks=2,numHierBlks=16,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "m3_for_arty_a7.hwdef" *) 
module m3_for_arty_a7
   (DAPLink_tri_o,
    TDI,
    TDO,
    led_4bits_tri_i,
    led_4bits_tri_o,
    led_4bits_tri_t,
    nTRST,
    qspi_flash_io0_i,
    qspi_flash_io0_o,
    qspi_flash_io0_t,
    qspi_flash_io1_i,
    qspi_flash_io1_o,
    qspi_flash_io1_t,
    qspi_flash_ss_i,
    qspi_flash_ss_o,
    qspi_flash_ss_t,
    reset,
    rgb_led_tri_i,
    rgb_led_tri_o,
    rgb_led_tri_t,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 DAPLink TRI_O" *) (* X_INTERFACE_MODE = "Master" *) inout [15:0]DAPLink_tri_o;
  input TDI;
  inout [0:0]TDO;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [31:0]led_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_O" *) output [31:0]led_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_T" *) output [31:0]led_4bits_tri_t;
  input nTRST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *) (* X_INTERFACE_MODE = "Master" *) input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *) output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *) output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *) input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *) output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *) output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *) input [0:0]qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *) output [0:0]qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *) output qspi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_I" *) (* X_INTERFACE_MODE = "Master" *) input [31:0]rgb_led_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_O" *) output [31:0]rgb_led_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_T" *) output [31:0]rgb_led_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, CLK_DOMAIN m3_for_arty_a7_sys_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input sys_clock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *) (* X_INTERFACE_MODE = "Master" *) input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *) output usb_uart_txd;

  wire [0:0]Clocks_and_Resets_dbgresetn;
  wire [0:0]Clocks_and_Resets_sysresetn;
  wire CortexM3DbgAXI_0_SWDO;
  wire CortexM3DbgAXI_0_SWDOEN;
  wire CortexM3DbgAXI_0_TDO;
  wire CortexM3DbgAXI_0_nTDOEN;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_ARADDR;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_ARBURST;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_ARCACHE;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_ARLEN;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_ARLOCK;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_ARPROT;
  wire Cortex_M3_0_CM3_CODE_AXI3_ARREADY;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_ARSIZE;
  wire Cortex_M3_0_CM3_CODE_AXI3_ARVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_AWADDR;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_AWBURST;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_AWCACHE;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_AWLEN;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_AWLOCK;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_AWPROT;
  wire Cortex_M3_0_CM3_CODE_AXI3_AWREADY;
  wire [2:0]Cortex_M3_0_CM3_CODE_AXI3_AWSIZE;
  wire Cortex_M3_0_CM3_CODE_AXI3_AWVALID;
  wire Cortex_M3_0_CM3_CODE_AXI3_BREADY;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_BRESP;
  wire Cortex_M3_0_CM3_CODE_AXI3_BVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_RDATA;
  wire Cortex_M3_0_CM3_CODE_AXI3_RLAST;
  wire Cortex_M3_0_CM3_CODE_AXI3_RREADY;
  wire [1:0]Cortex_M3_0_CM3_CODE_AXI3_RRESP;
  wire Cortex_M3_0_CM3_CODE_AXI3_RVALID;
  wire [31:0]Cortex_M3_0_CM3_CODE_AXI3_WDATA;
  wire Cortex_M3_0_CM3_CODE_AXI3_WLAST;
  wire Cortex_M3_0_CM3_CODE_AXI3_WREADY;
  wire [3:0]Cortex_M3_0_CM3_CODE_AXI3_WSTRB;
  wire Cortex_M3_0_CM3_CODE_AXI3_WVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_ARADDR;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_ARBURST;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_ARCACHE;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_ARLEN;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_ARLOCK;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_ARPROT;
  wire Cortex_M3_0_CM3_SYS_AXI3_ARREADY;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_ARSIZE;
  wire Cortex_M3_0_CM3_SYS_AXI3_ARVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_AWADDR;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_AWBURST;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_AWCACHE;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_AWLEN;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_AWLOCK;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_AWPROT;
  wire Cortex_M3_0_CM3_SYS_AXI3_AWREADY;
  wire [2:0]Cortex_M3_0_CM3_SYS_AXI3_AWSIZE;
  wire Cortex_M3_0_CM3_SYS_AXI3_AWVALID;
  wire Cortex_M3_0_CM3_SYS_AXI3_BREADY;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_BRESP;
  wire Cortex_M3_0_CM3_SYS_AXI3_BVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_RDATA;
  wire Cortex_M3_0_CM3_SYS_AXI3_RLAST;
  wire Cortex_M3_0_CM3_SYS_AXI3_RREADY;
  wire [1:0]Cortex_M3_0_CM3_SYS_AXI3_RRESP;
  wire Cortex_M3_0_CM3_SYS_AXI3_RVALID;
  wire [31:0]Cortex_M3_0_CM3_SYS_AXI3_WDATA;
  wire Cortex_M3_0_CM3_SYS_AXI3_WLAST;
  wire Cortex_M3_0_CM3_SYS_AXI3_WREADY;
  wire [3:0]Cortex_M3_0_CM3_SYS_AXI3_WSTRB;
  wire Cortex_M3_0_CM3_SYS_AXI3_WVALID;
  wire Cortex_M3_0_SYSRESETREQ;
  wire [15:0]DAPLink_tri_o;
  wire [31:0]S_AXI_1_ARADDR;
  wire [2:0]S_AXI_1_ARPROT;
  wire [0:0]S_AXI_1_ARREADY;
  wire [0:0]S_AXI_1_ARVALID;
  wire [31:0]S_AXI_1_AWADDR;
  wire [2:0]S_AXI_1_AWPROT;
  wire [0:0]S_AXI_1_AWREADY;
  wire [0:0]S_AXI_1_AWVALID;
  wire [0:0]S_AXI_1_BREADY;
  wire [1:0]S_AXI_1_BRESP;
  wire [0:0]S_AXI_1_BVALID;
  wire [31:0]S_AXI_1_RDATA;
  wire [0:0]S_AXI_1_RREADY;
  wire [1:0]S_AXI_1_RRESP;
  wire [0:0]S_AXI_1_RVALID;
  wire [31:0]S_AXI_1_WDATA;
  wire [0:0]S_AXI_1_WREADY;
  wire [3:0]S_AXI_1_WSTRB;
  wire [0:0]S_AXI_1_WVALID;
  wire TDI;
  wire [0:0]TDO;
  wire V2C_DAPLink_interface_DAPLink_fittedn;
  wire V2C_DAPLink_interface_qspi_irq;
  wire V2C_DAPLink_interface_qspi_xip_irq;
  wire V2C_DAPLink_interface_spi_irq;
  wire V2C_DAPLink_interface_uart_rxd_axi;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire axi_gpio_0_ip2intc_irpt;
  wire axi_gpio_1_ip2intc_irpt;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_ARADDR;
  wire axi_interconnect_0_M01_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_AWADDR;
  wire axi_interconnect_0_M01_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M01_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M01_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_BRESP;
  wire axi_interconnect_0_M01_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M01_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M01_AXI_RRESP;
  wire axi_interconnect_0_M01_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M01_AXI_WDATA;
  wire axi_interconnect_0_M01_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M01_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M01_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_ARADDR;
  wire axi_interconnect_0_M02_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M02_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_AWADDR;
  wire axi_interconnect_0_M02_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M02_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M02_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_BRESP;
  wire axi_interconnect_0_M02_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M02_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M02_AXI_RRESP;
  wire axi_interconnect_0_M02_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M02_AXI_WDATA;
  wire axi_interconnect_0_M02_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M02_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M02_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_ARADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_ARPROT;
  wire axi_interconnect_0_M03_AXI_ARREADY;
  wire [0:0]axi_interconnect_0_M03_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_AWADDR;
  wire [2:0]axi_interconnect_0_M03_AXI_AWPROT;
  wire axi_interconnect_0_M03_AXI_AWREADY;
  wire [0:0]axi_interconnect_0_M03_AXI_AWVALID;
  wire [0:0]axi_interconnect_0_M03_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_BRESP;
  wire axi_interconnect_0_M03_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_RDATA;
  wire [0:0]axi_interconnect_0_M03_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M03_AXI_RRESP;
  wire axi_interconnect_0_M03_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M03_AXI_WDATA;
  wire axi_interconnect_0_M03_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M03_AXI_WSTRB;
  wire [0:0]axi_interconnect_0_M03_AXI_WVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_ARADDR;
  wire axi_interconnect_0_M04_AXI_ARREADY;
  wire axi_interconnect_0_M04_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_AWADDR;
  wire axi_interconnect_0_M04_AXI_AWREADY;
  wire axi_interconnect_0_M04_AXI_AWVALID;
  wire axi_interconnect_0_M04_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_BRESP;
  wire axi_interconnect_0_M04_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_RDATA;
  wire axi_interconnect_0_M04_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M04_AXI_RRESP;
  wire axi_interconnect_0_M04_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M04_AXI_WDATA;
  wire axi_interconnect_0_M04_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M04_AXI_WSTRB;
  wire axi_interconnect_0_M04_AXI_WVALID;
  wire axi_quad_spi_0_ip2intc_irpt;
  wire axi_uartlite_0_interrupt;
  wire axi_uartlite_0_tx;
  wire clk_wiz_0_clk_out1;
  wire daplink_if_0_SWCLK;
  wire daplink_if_0_SWDI;
  wire daplink_if_0_nSRST;
  wire ext_spi_clk_1;
  wire [31:0]led_4bits_tri_i;
  wire [31:0]led_4bits_tri_o;
  wire [31:0]led_4bits_tri_t;
  wire nTRST;
  wire [0:0]proc_sys_reset_1_interconnect_aresetn;
  wire [0:0]proc_sys_reset_1_peripheral_aresetn;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire [0:0]qspi_flash_ss_i;
  wire [0:0]qspi_flash_ss_o;
  wire qspi_flash_ss_t;
  wire reset;
  wire [31:0]rgb_led_tri_i;
  wire [31:0]rgb_led_tri_o;
  wire [31:0]rgb_led_tri_t;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;
  wire [7:0]xlconcat_0_dout;
  wire [1:0]xlconcat_1_dout;
  wire [0:0]xlconstant_1_dout;
  wire NLW_Cortex_M3_0_DBGRESTARTED_UNCONNECTED;
  wire NLW_Cortex_M3_0_HALTED_UNCONNECTED;
  wire NLW_Cortex_M3_0_JTAGNSW_UNCONNECTED;
  wire NLW_Cortex_M3_0_JTAGTOP_UNCONNECTED;
  wire NLW_Cortex_M3_0_LOCKUP_UNCONNECTED;
  wire NLW_Cortex_M3_0_SWV_UNCONNECTED;
  wire NLW_Cortex_M3_0_TRACECLK_UNCONNECTED;
  wire NLW_Cortex_M3_0_TRCENA_UNCONNECTED;
  wire [0:0]NLW_Cortex_M3_0_ARUSERC_UNCONNECTED;
  wire [0:0]NLW_Cortex_M3_0_ARUSERS_UNCONNECTED;
  wire [0:0]NLW_Cortex_M3_0_AWUSERC_UNCONNECTED;
  wire [0:0]NLW_Cortex_M3_0_AWUSERS_UNCONNECTED;
  wire [3:0]NLW_Cortex_M3_0_TRACEDATA_UNCONNECTED;
  wire NLW_axi_quad_spi_0_cfgclk_UNCONNECTED;
  wire NLW_axi_quad_spi_0_cfgmclk_UNCONNECTED;
  wire NLW_axi_quad_spi_0_eos_UNCONNECTED;
  wire NLW_axi_quad_spi_0_preq_UNCONNECTED;
  wire [0:0]NLW_tri_io_buf_0_dout_UNCONNECTED;

  Clocks_and_Resets_imp_1WLR2TP Clocks_and_Resets
       (.aux_reset_in(daplink_if_0_nSRST),
        .clk_cpu(clk_wiz_0_clk_out1),
        .clk_qspi(ext_spi_clk_1),
        .dbgresetn(Clocks_and_Resets_dbgresetn),
        .interconnect_aresetn(proc_sys_reset_1_peripheral_aresetn),
        .peripheral_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .sys_clock(sys_clock),
        .sys_reset_n(reset),
        .sysresetn(Clocks_and_Resets_sysresetn),
        .sysresetreq(Cortex_M3_0_SYSRESETREQ));
  m3_for_arty_a7_Cortex_M3_0_0 Cortex_M3_0
       (.ARADDRC(Cortex_M3_0_CM3_CODE_AXI3_ARADDR),
        .ARADDRS(Cortex_M3_0_CM3_SYS_AXI3_ARADDR),
        .ARBURSTC(Cortex_M3_0_CM3_CODE_AXI3_ARBURST),
        .ARBURSTS(Cortex_M3_0_CM3_SYS_AXI3_ARBURST),
        .ARCACHEC(Cortex_M3_0_CM3_CODE_AXI3_ARCACHE),
        .ARCACHES(Cortex_M3_0_CM3_SYS_AXI3_ARCACHE),
        .ARLENC(Cortex_M3_0_CM3_CODE_AXI3_ARLEN),
        .ARLENS(Cortex_M3_0_CM3_SYS_AXI3_ARLEN),
        .ARLOCKC(Cortex_M3_0_CM3_CODE_AXI3_ARLOCK),
        .ARLOCKS(Cortex_M3_0_CM3_SYS_AXI3_ARLOCK),
        .ARPROTC(Cortex_M3_0_CM3_CODE_AXI3_ARPROT),
        .ARPROTS(Cortex_M3_0_CM3_SYS_AXI3_ARPROT),
        .ARREADYC(Cortex_M3_0_CM3_CODE_AXI3_ARREADY),
        .ARREADYS(Cortex_M3_0_CM3_SYS_AXI3_ARREADY),
        .ARSIZEC(Cortex_M3_0_CM3_CODE_AXI3_ARSIZE),
        .ARSIZES(Cortex_M3_0_CM3_SYS_AXI3_ARSIZE),
        .ARVALIDC(Cortex_M3_0_CM3_CODE_AXI3_ARVALID),
        .ARVALIDS(Cortex_M3_0_CM3_SYS_AXI3_ARVALID),
        .AWADDRC(Cortex_M3_0_CM3_CODE_AXI3_AWADDR),
        .AWADDRS(Cortex_M3_0_CM3_SYS_AXI3_AWADDR),
        .AWBURSTC(Cortex_M3_0_CM3_CODE_AXI3_AWBURST),
        .AWBURSTS(Cortex_M3_0_CM3_SYS_AXI3_AWBURST),
        .AWCACHEC(Cortex_M3_0_CM3_CODE_AXI3_AWCACHE),
        .AWCACHES(Cortex_M3_0_CM3_SYS_AXI3_AWCACHE),
        .AWLENC(Cortex_M3_0_CM3_CODE_AXI3_AWLEN),
        .AWLENS(Cortex_M3_0_CM3_SYS_AXI3_AWLEN),
        .AWLOCKC(Cortex_M3_0_CM3_CODE_AXI3_AWLOCK),
        .AWLOCKS(Cortex_M3_0_CM3_SYS_AXI3_AWLOCK),
        .AWPROTC(Cortex_M3_0_CM3_CODE_AXI3_AWPROT),
        .AWPROTS(Cortex_M3_0_CM3_SYS_AXI3_AWPROT),
        .AWREADYC(Cortex_M3_0_CM3_CODE_AXI3_AWREADY),
        .AWREADYS(Cortex_M3_0_CM3_SYS_AXI3_AWREADY),
        .AWSIZEC(Cortex_M3_0_CM3_CODE_AXI3_AWSIZE),
        .AWSIZES(Cortex_M3_0_CM3_SYS_AXI3_AWSIZE),
        .AWVALIDC(Cortex_M3_0_CM3_CODE_AXI3_AWVALID),
        .AWVALIDS(Cortex_M3_0_CM3_SYS_AXI3_AWVALID),
        .BREADYC(Cortex_M3_0_CM3_CODE_AXI3_BREADY),
        .BREADYS(Cortex_M3_0_CM3_SYS_AXI3_BREADY),
        .BRESPC(Cortex_M3_0_CM3_CODE_AXI3_BRESP),
        .BRESPS(Cortex_M3_0_CM3_SYS_AXI3_BRESP),
        .BVALIDC(Cortex_M3_0_CM3_CODE_AXI3_BVALID),
        .BVALIDS(Cortex_M3_0_CM3_SYS_AXI3_BVALID),
        .CFGITCMEN(xlconcat_1_dout),
        .DBGRESETn(Clocks_and_Resets_dbgresetn),
        .DBGRESTART(1'b0),
        .EDBGRQ(1'b0),
        .HCLK(clk_wiz_0_clk_out1),
        .HRDATAC(Cortex_M3_0_CM3_CODE_AXI3_RDATA),
        .HRDATAS(Cortex_M3_0_CM3_SYS_AXI3_RDATA),
        .HWDATAC(Cortex_M3_0_CM3_CODE_AXI3_WDATA),
        .HWDATAS(Cortex_M3_0_CM3_SYS_AXI3_WDATA),
        .IRQ(xlconcat_0_dout),
        .NMI(1'b0),
        .RLASTC(Cortex_M3_0_CM3_CODE_AXI3_RLAST),
        .RLASTS(Cortex_M3_0_CM3_SYS_AXI3_RLAST),
        .RREADYC(Cortex_M3_0_CM3_CODE_AXI3_RREADY),
        .RREADYS(Cortex_M3_0_CM3_SYS_AXI3_RREADY),
        .RRESPC(Cortex_M3_0_CM3_CODE_AXI3_RRESP),
        .RRESPS(Cortex_M3_0_CM3_SYS_AXI3_RRESP),
        .RVALIDC(Cortex_M3_0_CM3_CODE_AXI3_RVALID),
        .RVALIDS(Cortex_M3_0_CM3_SYS_AXI3_RVALID),
        .STCLK(1'b0),
        .SWCLKTCK(daplink_if_0_SWCLK),
        .SWDITMS(daplink_if_0_SWDI),
        .SWDO(CortexM3DbgAXI_0_SWDO),
        .SWDOEN(CortexM3DbgAXI_0_SWDOEN),
        .SYSRESETREQ(Cortex_M3_0_SYSRESETREQ),
        .SYSRESETn(Clocks_and_Resets_sysresetn),
        .TDI(TDI),
        .TDO(CortexM3DbgAXI_0_TDO),
        .WLASTC(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .WLASTS(Cortex_M3_0_CM3_SYS_AXI3_WLAST),
        .WREADYC(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .WREADYS(Cortex_M3_0_CM3_SYS_AXI3_WREADY),
        .WSTRBC(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .WSTRBS(Cortex_M3_0_CM3_SYS_AXI3_WSTRB),
        .WVALIDC(Cortex_M3_0_CM3_CODE_AXI3_WVALID),
        .WVALIDS(Cortex_M3_0_CM3_SYS_AXI3_WVALID),
        .nTDOEN(CortexM3DbgAXI_0_nTDOEN),
        .nTRST(nTRST));
  m3_for_arty_a7_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M03_AXI_ARADDR[12:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .s_axi_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M03_AXI_AWADDR[12:0]),
        .s_axi_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .s_axi_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M03_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M03_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M03_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M03_AXI_WVALID));
  m3_for_arty_a7_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_i(led_4bits_tri_i),
        .gpio_io_o(led_4bits_tri_o),
        .gpio_io_t(led_4bits_tri_t),
        .ip2intc_irpt(axi_gpio_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M01_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M01_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M01_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M01_AXI_WVALID));
  m3_for_arty_a7_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_i(rgb_led_tri_i),
        .gpio_io_o(rgb_led_tri_o),
        .gpio_io_t(rgb_led_tri_t),
        .ip2intc_irpt(axi_gpio_1_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M02_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M02_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M02_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M02_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M02_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M02_AXI_WVALID));
  m3_for_arty_a7_axi_interconnect_0_0 axi_interconnect_0
       (.ACLK(clk_wiz_0_clk_out1),
        .ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_ACLK(clk_wiz_0_clk_out1),
        .M00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_0_clk_out1),
        .M01_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M01_AXI_araddr(axi_interconnect_0_M01_AXI_ARADDR),
        .M01_AXI_arready(axi_interconnect_0_M01_AXI_ARREADY),
        .M01_AXI_arvalid(axi_interconnect_0_M01_AXI_ARVALID),
        .M01_AXI_awaddr(axi_interconnect_0_M01_AXI_AWADDR),
        .M01_AXI_awready(axi_interconnect_0_M01_AXI_AWREADY),
        .M01_AXI_awvalid(axi_interconnect_0_M01_AXI_AWVALID),
        .M01_AXI_bready(axi_interconnect_0_M01_AXI_BREADY),
        .M01_AXI_bresp(axi_interconnect_0_M01_AXI_BRESP),
        .M01_AXI_bvalid(axi_interconnect_0_M01_AXI_BVALID),
        .M01_AXI_rdata(axi_interconnect_0_M01_AXI_RDATA),
        .M01_AXI_rready(axi_interconnect_0_M01_AXI_RREADY),
        .M01_AXI_rresp(axi_interconnect_0_M01_AXI_RRESP),
        .M01_AXI_rvalid(axi_interconnect_0_M01_AXI_RVALID),
        .M01_AXI_wdata(axi_interconnect_0_M01_AXI_WDATA),
        .M01_AXI_wready(axi_interconnect_0_M01_AXI_WREADY),
        .M01_AXI_wstrb(axi_interconnect_0_M01_AXI_WSTRB),
        .M01_AXI_wvalid(axi_interconnect_0_M01_AXI_WVALID),
        .M02_ACLK(clk_wiz_0_clk_out1),
        .M02_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M02_AXI_araddr(axi_interconnect_0_M02_AXI_ARADDR),
        .M02_AXI_arready(axi_interconnect_0_M02_AXI_ARREADY),
        .M02_AXI_arvalid(axi_interconnect_0_M02_AXI_ARVALID),
        .M02_AXI_awaddr(axi_interconnect_0_M02_AXI_AWADDR),
        .M02_AXI_awready(axi_interconnect_0_M02_AXI_AWREADY),
        .M02_AXI_awvalid(axi_interconnect_0_M02_AXI_AWVALID),
        .M02_AXI_bready(axi_interconnect_0_M02_AXI_BREADY),
        .M02_AXI_bresp(axi_interconnect_0_M02_AXI_BRESP),
        .M02_AXI_bvalid(axi_interconnect_0_M02_AXI_BVALID),
        .M02_AXI_rdata(axi_interconnect_0_M02_AXI_RDATA),
        .M02_AXI_rready(axi_interconnect_0_M02_AXI_RREADY),
        .M02_AXI_rresp(axi_interconnect_0_M02_AXI_RRESP),
        .M02_AXI_rvalid(axi_interconnect_0_M02_AXI_RVALID),
        .M02_AXI_wdata(axi_interconnect_0_M02_AXI_WDATA),
        .M02_AXI_wready(axi_interconnect_0_M02_AXI_WREADY),
        .M02_AXI_wstrb(axi_interconnect_0_M02_AXI_WSTRB),
        .M02_AXI_wvalid(axi_interconnect_0_M02_AXI_WVALID),
        .M03_ACLK(clk_wiz_0_clk_out1),
        .M03_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M03_AXI_araddr(axi_interconnect_0_M03_AXI_ARADDR),
        .M03_AXI_arprot(axi_interconnect_0_M03_AXI_ARPROT),
        .M03_AXI_arready(axi_interconnect_0_M03_AXI_ARREADY),
        .M03_AXI_arvalid(axi_interconnect_0_M03_AXI_ARVALID),
        .M03_AXI_awaddr(axi_interconnect_0_M03_AXI_AWADDR),
        .M03_AXI_awprot(axi_interconnect_0_M03_AXI_AWPROT),
        .M03_AXI_awready(axi_interconnect_0_M03_AXI_AWREADY),
        .M03_AXI_awvalid(axi_interconnect_0_M03_AXI_AWVALID),
        .M03_AXI_bready(axi_interconnect_0_M03_AXI_BREADY),
        .M03_AXI_bresp(axi_interconnect_0_M03_AXI_BRESP),
        .M03_AXI_bvalid(axi_interconnect_0_M03_AXI_BVALID),
        .M03_AXI_rdata(axi_interconnect_0_M03_AXI_RDATA),
        .M03_AXI_rready(axi_interconnect_0_M03_AXI_RREADY),
        .M03_AXI_rresp(axi_interconnect_0_M03_AXI_RRESP),
        .M03_AXI_rvalid(axi_interconnect_0_M03_AXI_RVALID),
        .M03_AXI_wdata(axi_interconnect_0_M03_AXI_WDATA),
        .M03_AXI_wready(axi_interconnect_0_M03_AXI_WREADY),
        .M03_AXI_wstrb(axi_interconnect_0_M03_AXI_WSTRB),
        .M03_AXI_wvalid(axi_interconnect_0_M03_AXI_WVALID),
        .M04_ACLK(clk_wiz_0_clk_out1),
        .M04_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M04_AXI_araddr(axi_interconnect_0_M04_AXI_ARADDR),
        .M04_AXI_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .M04_AXI_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .M04_AXI_awaddr(axi_interconnect_0_M04_AXI_AWADDR),
        .M04_AXI_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .M04_AXI_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .M04_AXI_bready(axi_interconnect_0_M04_AXI_BREADY),
        .M04_AXI_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .M04_AXI_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .M04_AXI_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .M04_AXI_rready(axi_interconnect_0_M04_AXI_RREADY),
        .M04_AXI_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .M04_AXI_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .M04_AXI_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .M04_AXI_wready(axi_interconnect_0_M04_AXI_WREADY),
        .M04_AXI_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .M04_AXI_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .M05_ACLK(clk_wiz_0_clk_out1),
        .M05_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .M05_AXI_araddr(S_AXI_1_ARADDR),
        .M05_AXI_arprot(S_AXI_1_ARPROT),
        .M05_AXI_arready(S_AXI_1_ARREADY),
        .M05_AXI_arvalid(S_AXI_1_ARVALID),
        .M05_AXI_awaddr(S_AXI_1_AWADDR),
        .M05_AXI_awprot(S_AXI_1_AWPROT),
        .M05_AXI_awready(S_AXI_1_AWREADY),
        .M05_AXI_awvalid(S_AXI_1_AWVALID),
        .M05_AXI_bready(S_AXI_1_BREADY),
        .M05_AXI_bresp(S_AXI_1_BRESP),
        .M05_AXI_bvalid(S_AXI_1_BVALID),
        .M05_AXI_rdata(S_AXI_1_RDATA),
        .M05_AXI_rready(S_AXI_1_RREADY),
        .M05_AXI_rresp(S_AXI_1_RRESP),
        .M05_AXI_rvalid(S_AXI_1_RVALID),
        .M05_AXI_wdata(S_AXI_1_WDATA),
        .M05_AXI_wready(S_AXI_1_WREADY),
        .M05_AXI_wstrb(S_AXI_1_WSTRB),
        .M05_AXI_wvalid(S_AXI_1_WVALID),
        .S00_ACLK(clk_wiz_0_clk_out1),
        .S00_ARESETN(proc_sys_reset_1_peripheral_aresetn),
        .S00_AXI_araddr(Cortex_M3_0_CM3_SYS_AXI3_ARADDR),
        .S00_AXI_arburst(Cortex_M3_0_CM3_SYS_AXI3_ARBURST),
        .S00_AXI_arcache(Cortex_M3_0_CM3_SYS_AXI3_ARCACHE),
        .S00_AXI_arlen(Cortex_M3_0_CM3_SYS_AXI3_ARLEN),
        .S00_AXI_arlock(Cortex_M3_0_CM3_SYS_AXI3_ARLOCK),
        .S00_AXI_arprot(Cortex_M3_0_CM3_SYS_AXI3_ARPROT),
        .S00_AXI_arready(Cortex_M3_0_CM3_SYS_AXI3_ARREADY),
        .S00_AXI_arsize(Cortex_M3_0_CM3_SYS_AXI3_ARSIZE),
        .S00_AXI_arvalid(Cortex_M3_0_CM3_SYS_AXI3_ARVALID),
        .S00_AXI_awaddr(Cortex_M3_0_CM3_SYS_AXI3_AWADDR),
        .S00_AXI_awburst(Cortex_M3_0_CM3_SYS_AXI3_AWBURST),
        .S00_AXI_awcache(Cortex_M3_0_CM3_SYS_AXI3_AWCACHE),
        .S00_AXI_awlen(Cortex_M3_0_CM3_SYS_AXI3_AWLEN),
        .S00_AXI_awlock(Cortex_M3_0_CM3_SYS_AXI3_AWLOCK),
        .S00_AXI_awprot(Cortex_M3_0_CM3_SYS_AXI3_AWPROT),
        .S00_AXI_awready(Cortex_M3_0_CM3_SYS_AXI3_AWREADY),
        .S00_AXI_awsize(Cortex_M3_0_CM3_SYS_AXI3_AWSIZE),
        .S00_AXI_awvalid(Cortex_M3_0_CM3_SYS_AXI3_AWVALID),
        .S00_AXI_bready(Cortex_M3_0_CM3_SYS_AXI3_BREADY),
        .S00_AXI_bresp(Cortex_M3_0_CM3_SYS_AXI3_BRESP),
        .S00_AXI_bvalid(Cortex_M3_0_CM3_SYS_AXI3_BVALID),
        .S00_AXI_rdata(Cortex_M3_0_CM3_SYS_AXI3_RDATA),
        .S00_AXI_rlast(Cortex_M3_0_CM3_SYS_AXI3_RLAST),
        .S00_AXI_rready(Cortex_M3_0_CM3_SYS_AXI3_RREADY),
        .S00_AXI_rresp(Cortex_M3_0_CM3_SYS_AXI3_RRESP),
        .S00_AXI_rvalid(Cortex_M3_0_CM3_SYS_AXI3_RVALID),
        .S00_AXI_wdata(Cortex_M3_0_CM3_SYS_AXI3_WDATA),
        .S00_AXI_wlast(Cortex_M3_0_CM3_SYS_AXI3_WLAST),
        .S00_AXI_wready(Cortex_M3_0_CM3_SYS_AXI3_WREADY),
        .S00_AXI_wstrb(Cortex_M3_0_CM3_SYS_AXI3_WSTRB),
        .S00_AXI_wvalid(Cortex_M3_0_CM3_SYS_AXI3_WVALID));
  m3_for_arty_a7_axi_quad_spi_0_0 axi_quad_spi_0
       (.ext_spi_clk(ext_spi_clk_1),
        .io0_i(qspi_flash_io0_i),
        .io0_o(qspi_flash_io0_o),
        .io0_t(qspi_flash_io0_t),
        .io1_i(qspi_flash_io1_i),
        .io1_o(qspi_flash_io1_o),
        .io1_t(qspi_flash_io1_t),
        .ip2intc_irpt(axi_quad_spi_0_ip2intc_irpt),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M04_AXI_ARADDR[6:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M04_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M04_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M04_AXI_AWADDR[6:0]),
        .s_axi_awready(axi_interconnect_0_M04_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M04_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M04_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M04_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M04_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M04_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M04_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M04_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M04_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M04_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M04_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M04_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M04_AXI_WVALID),
        .ss_i(qspi_flash_ss_i),
        .ss_o(qspi_flash_ss_o),
        .ss_t(qspi_flash_ss_t));
  m3_for_arty_a7_axi_uartlite_0_0 axi_uartlite_0
       (.interrupt(axi_uartlite_0_interrupt),
        .rx(V2C_DAPLink_interface_uart_rxd_axi),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[3:0]),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[3:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .tx(axi_uartlite_0_tx));
  m3_for_arty_a7_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(axi_bram_ctrl_0_BRAM_PORTA_WE));
  daplink_if_0_imp_5IHHOQ daplink_if_0
       (.C_AXI_araddr(Cortex_M3_0_CM3_CODE_AXI3_ARADDR),
        .C_AXI_arburst(Cortex_M3_0_CM3_CODE_AXI3_ARBURST),
        .C_AXI_arcache(Cortex_M3_0_CM3_CODE_AXI3_ARCACHE),
        .C_AXI_arlen(Cortex_M3_0_CM3_CODE_AXI3_ARLEN),
        .C_AXI_arlock(Cortex_M3_0_CM3_CODE_AXI3_ARLOCK),
        .C_AXI_arprot(Cortex_M3_0_CM3_CODE_AXI3_ARPROT),
        .C_AXI_arready(Cortex_M3_0_CM3_CODE_AXI3_ARREADY),
        .C_AXI_arsize(Cortex_M3_0_CM3_CODE_AXI3_ARSIZE),
        .C_AXI_arvalid(Cortex_M3_0_CM3_CODE_AXI3_ARVALID),
        .C_AXI_awaddr(Cortex_M3_0_CM3_CODE_AXI3_AWADDR),
        .C_AXI_awburst(Cortex_M3_0_CM3_CODE_AXI3_AWBURST),
        .C_AXI_awcache(Cortex_M3_0_CM3_CODE_AXI3_AWCACHE),
        .C_AXI_awlen(Cortex_M3_0_CM3_CODE_AXI3_AWLEN),
        .C_AXI_awlock(Cortex_M3_0_CM3_CODE_AXI3_AWLOCK),
        .C_AXI_awprot(Cortex_M3_0_CM3_CODE_AXI3_AWPROT),
        .C_AXI_awready(Cortex_M3_0_CM3_CODE_AXI3_AWREADY),
        .C_AXI_awsize(Cortex_M3_0_CM3_CODE_AXI3_AWSIZE),
        .C_AXI_awvalid(Cortex_M3_0_CM3_CODE_AXI3_AWVALID),
        .C_AXI_bready(Cortex_M3_0_CM3_CODE_AXI3_BREADY),
        .C_AXI_bresp(Cortex_M3_0_CM3_CODE_AXI3_BRESP),
        .C_AXI_bvalid(Cortex_M3_0_CM3_CODE_AXI3_BVALID),
        .C_AXI_rdata(Cortex_M3_0_CM3_CODE_AXI3_RDATA),
        .C_AXI_rlast(Cortex_M3_0_CM3_CODE_AXI3_RLAST),
        .C_AXI_rready(Cortex_M3_0_CM3_CODE_AXI3_RREADY),
        .C_AXI_rresp(Cortex_M3_0_CM3_CODE_AXI3_RRESP),
        .C_AXI_rvalid(Cortex_M3_0_CM3_CODE_AXI3_RVALID),
        .C_AXI_wdata(Cortex_M3_0_CM3_CODE_AXI3_WDATA),
        .C_AXI_wlast(Cortex_M3_0_CM3_CODE_AXI3_WLAST),
        .C_AXI_wready(Cortex_M3_0_CM3_CODE_AXI3_WREADY),
        .C_AXI_wstrb(Cortex_M3_0_CM3_CODE_AXI3_WSTRB),
        .C_AXI_wvalid(Cortex_M3_0_CM3_CODE_AXI3_WVALID),
        .DAPLink_fittedn(V2C_DAPLink_interface_DAPLink_fittedn),
        .SWCLK(daplink_if_0_SWCLK),
        .SWDI(daplink_if_0_SWDI),
        .SWDO(CortexM3DbgAXI_0_SWDO),
        .SWDOEN(CortexM3DbgAXI_0_SWDOEN),
        .S_AXI_araddr(S_AXI_1_ARADDR),
        .S_AXI_arprot(S_AXI_1_ARPROT),
        .S_AXI_arready(S_AXI_1_ARREADY),
        .S_AXI_arvalid(S_AXI_1_ARVALID),
        .S_AXI_awaddr(S_AXI_1_AWADDR),
        .S_AXI_awprot(S_AXI_1_AWPROT),
        .S_AXI_awready(S_AXI_1_AWREADY),
        .S_AXI_awvalid(S_AXI_1_AWVALID),
        .S_AXI_bready(S_AXI_1_BREADY),
        .S_AXI_bresp(S_AXI_1_BRESP),
        .S_AXI_bvalid(S_AXI_1_BVALID),
        .S_AXI_rdata(S_AXI_1_RDATA),
        .S_AXI_rready(S_AXI_1_RREADY),
        .S_AXI_rresp(S_AXI_1_RRESP),
        .S_AXI_rvalid(S_AXI_1_RVALID),
        .S_AXI_wdata(S_AXI_1_WDATA),
        .S_AXI_wready(S_AXI_1_WREADY),
        .S_AXI_wstrb(S_AXI_1_WSTRB),
        .S_AXI_wvalid(S_AXI_1_WVALID),
        .Shield_out_tri_o(DAPLink_tri_o),
        .UART_out_rxd(usb_uart_rxd),
        .UART_out_txd(usb_uart_txd),
        .ext_spi_clk(ext_spi_clk_1),
        .nSRST(daplink_if_0_nSRST),
        .qspi_irq(V2C_DAPLink_interface_qspi_irq),
        .qspi_xip_irq(V2C_DAPLink_interface_qspi_xip_irq),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_aresetn(proc_sys_reset_1_interconnect_aresetn),
        .spi_irq(V2C_DAPLink_interface_spi_irq),
        .uart_rxd_axi(V2C_DAPLink_interface_uart_rxd_axi),
        .uart_txd_axi(axi_uartlite_0_tx));
  m3_for_arty_a7_tri_io_buf_0_0 tri_io_buf_0
       (.din(CortexM3DbgAXI_0_TDO),
        .io_pad(TDO),
        .oen_N(CortexM3DbgAXI_0_nTDOEN));
  m3_for_arty_a7_xlconcat_0_0 xlconcat_0
       (.In0(axi_uartlite_0_interrupt),
        .In1(axi_gpio_0_ip2intc_irpt),
        .In2(axi_gpio_1_ip2intc_irpt),
        .In3(axi_quad_spi_0_ip2intc_irpt),
        .In4(V2C_DAPLink_interface_qspi_irq),
        .In5(V2C_DAPLink_interface_spi_irq),
        .In6(V2C_DAPLink_interface_qspi_xip_irq),
        .In7(V2C_DAPLink_interface_DAPLink_fittedn),
        .dout(xlconcat_0_dout));
  m3_for_arty_a7_xlconcat_1_0 xlconcat_1
       (.In0(V2C_DAPLink_interface_DAPLink_fittedn),
        .In1(xlconstant_1_dout),
        .dout(xlconcat_1_dout));
  m3_for_arty_a7_xlconstant_1_1 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

module m3_for_arty_a7_axi_interconnect_0_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    M04_ACLK,
    M04_ARESETN,
    M04_AXI_araddr,
    M04_AXI_arready,
    M04_AXI_arvalid,
    M04_AXI_awaddr,
    M04_AXI_awready,
    M04_AXI_awvalid,
    M04_AXI_bready,
    M04_AXI_bresp,
    M04_AXI_bvalid,
    M04_AXI_rdata,
    M04_AXI_rready,
    M04_AXI_rresp,
    M04_AXI_rvalid,
    M04_AXI_wdata,
    M04_AXI_wready,
    M04_AXI_wstrb,
    M04_AXI_wvalid,
    M05_ACLK,
    M05_ARESETN,
    M05_AXI_araddr,
    M05_AXI_arprot,
    M05_AXI_arready,
    M05_AXI_arvalid,
    M05_AXI_awaddr,
    M05_AXI_awprot,
    M05_AXI_awready,
    M05_AXI_awvalid,
    M05_AXI_bready,
    M05_AXI_bresp,
    M05_AXI_bvalid,
    M05_AXI_rdata,
    M05_AXI_rready,
    M05_AXI_rresp,
    M05_AXI_rvalid,
    M05_AXI_wdata,
    M05_AXI_wready,
    M05_AXI_wstrb,
    M05_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input [0:0]M02_AXI_arready;
  output [0:0]M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input [0:0]M02_AXI_awready;
  output [0:0]M02_AXI_awvalid;
  output [0:0]M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input [0:0]M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output [0:0]M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input [0:0]M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input [0:0]M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output [0:0]M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input [0:0]M03_AXI_arready;
  output [0:0]M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input [0:0]M03_AXI_awready;
  output [0:0]M03_AXI_awvalid;
  output [0:0]M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input [0:0]M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output [0:0]M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input [0:0]M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input [0:0]M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output [0:0]M03_AXI_wvalid;
  input M04_ACLK;
  input M04_ARESETN;
  output [31:0]M04_AXI_araddr;
  input M04_AXI_arready;
  output M04_AXI_arvalid;
  output [31:0]M04_AXI_awaddr;
  input M04_AXI_awready;
  output M04_AXI_awvalid;
  output M04_AXI_bready;
  input [1:0]M04_AXI_bresp;
  input M04_AXI_bvalid;
  input [31:0]M04_AXI_rdata;
  output M04_AXI_rready;
  input [1:0]M04_AXI_rresp;
  input M04_AXI_rvalid;
  output [31:0]M04_AXI_wdata;
  input M04_AXI_wready;
  output [3:0]M04_AXI_wstrb;
  output M04_AXI_wvalid;
  input M05_ACLK;
  input M05_ARESETN;
  output [31:0]M05_AXI_araddr;
  output [2:0]M05_AXI_arprot;
  input [0:0]M05_AXI_arready;
  output [0:0]M05_AXI_arvalid;
  output [31:0]M05_AXI_awaddr;
  output [2:0]M05_AXI_awprot;
  input [0:0]M05_AXI_awready;
  output [0:0]M05_AXI_awvalid;
  output [0:0]M05_AXI_bready;
  input [1:0]M05_AXI_bresp;
  input [0:0]M05_AXI_bvalid;
  input [31:0]M05_AXI_rdata;
  output [0:0]M05_AXI_rready;
  input [1:0]M05_AXI_rresp;
  input [0:0]M05_AXI_rvalid;
  output [31:0]M05_AXI_wdata;
  input [0:0]M05_AXI_wready;
  output [3:0]M05_AXI_wstrb;
  output [0:0]M05_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [31:0]M01_AXI_araddr;
  wire [0:0]M01_AXI_arready;
  wire [0:0]M01_AXI_arvalid;
  wire [31:0]M01_AXI_awaddr;
  wire [0:0]M01_AXI_awready;
  wire [0:0]M01_AXI_awvalid;
  wire [0:0]M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire [0:0]M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire [0:0]M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire [0:0]M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire [0:0]M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire [0:0]M01_AXI_wvalid;
  wire [31:0]M02_AXI_araddr;
  wire [0:0]M02_AXI_arready;
  wire [0:0]M02_AXI_arvalid;
  wire [31:0]M02_AXI_awaddr;
  wire [0:0]M02_AXI_awready;
  wire [0:0]M02_AXI_awvalid;
  wire [0:0]M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire [0:0]M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire [0:0]M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire [0:0]M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire [0:0]M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire [0:0]M02_AXI_wvalid;
  wire [31:0]M03_AXI_araddr;
  wire [2:0]M03_AXI_arprot;
  wire [0:0]M03_AXI_arready;
  wire [0:0]M03_AXI_arvalid;
  wire [31:0]M03_AXI_awaddr;
  wire [2:0]M03_AXI_awprot;
  wire [0:0]M03_AXI_awready;
  wire [0:0]M03_AXI_awvalid;
  wire [0:0]M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire [0:0]M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire [0:0]M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire [0:0]M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire [0:0]M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire [0:0]M03_AXI_wvalid;
  wire [31:0]M04_AXI_araddr;
  wire M04_AXI_arready;
  wire M04_AXI_arvalid;
  wire [31:0]M04_AXI_awaddr;
  wire M04_AXI_awready;
  wire M04_AXI_awvalid;
  wire M04_AXI_bready;
  wire [1:0]M04_AXI_bresp;
  wire M04_AXI_bvalid;
  wire [31:0]M04_AXI_rdata;
  wire M04_AXI_rready;
  wire [1:0]M04_AXI_rresp;
  wire M04_AXI_rvalid;
  wire [31:0]M04_AXI_wdata;
  wire M04_AXI_wready;
  wire [3:0]M04_AXI_wstrb;
  wire M04_AXI_wvalid;
  wire [31:0]M05_AXI_araddr;
  wire [2:0]M05_AXI_arprot;
  wire [0:0]M05_AXI_arready;
  wire [0:0]M05_AXI_arvalid;
  wire [31:0]M05_AXI_awaddr;
  wire [2:0]M05_AXI_awprot;
  wire [0:0]M05_AXI_awready;
  wire [0:0]M05_AXI_awvalid;
  wire [0:0]M05_AXI_bready;
  wire [1:0]M05_AXI_bresp;
  wire [0:0]M05_AXI_bvalid;
  wire [31:0]M05_AXI_rdata;
  wire [0:0]M05_AXI_rready;
  wire [1:0]M05_AXI_rresp;
  wire [0:0]M05_AXI_rvalid;
  wire [31:0]M05_AXI_wdata;
  wire [0:0]M05_AXI_wready;
  wire [3:0]M05_AXI_wstrb;
  wire [0:0]M05_AXI_wvalid;
  wire [31:0]S00_AXI_araddr;
  wire [1:0]S00_AXI_arburst;
  wire [3:0]S00_AXI_arcache;
  wire [3:0]S00_AXI_arlen;
  wire [1:0]S00_AXI_arlock;
  wire [2:0]S00_AXI_arprot;
  wire S00_AXI_arready;
  wire [2:0]S00_AXI_arsize;
  wire S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [1:0]S00_AXI_awburst;
  wire [3:0]S00_AXI_awcache;
  wire [3:0]S00_AXI_awlen;
  wire [1:0]S00_AXI_awlock;
  wire [2:0]S00_AXI_awprot;
  wire S00_AXI_awready;
  wire [2:0]S00_AXI_awsize;
  wire S00_AXI_awvalid;
  wire S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire S00_AXI_rlast;
  wire S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire S00_AXI_wlast;
  wire S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire S00_AXI_wvalid;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [0:0]xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [0:0]xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire [0:0]xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire [0:0]xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [0:0]xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [0:0]xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire [0:0]xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire [0:0]xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire [0:0]xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire [0:0]xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [159:128]xbar_to_m04_couplers_ARADDR;
  wire xbar_to_m04_couplers_ARREADY;
  wire [4:4]xbar_to_m04_couplers_ARVALID;
  wire [159:128]xbar_to_m04_couplers_AWADDR;
  wire xbar_to_m04_couplers_AWREADY;
  wire [4:4]xbar_to_m04_couplers_AWVALID;
  wire [4:4]xbar_to_m04_couplers_BREADY;
  wire [1:0]xbar_to_m04_couplers_BRESP;
  wire xbar_to_m04_couplers_BVALID;
  wire [31:0]xbar_to_m04_couplers_RDATA;
  wire [4:4]xbar_to_m04_couplers_RREADY;
  wire [1:0]xbar_to_m04_couplers_RRESP;
  wire xbar_to_m04_couplers_RVALID;
  wire [159:128]xbar_to_m04_couplers_WDATA;
  wire xbar_to_m04_couplers_WREADY;
  wire [19:16]xbar_to_m04_couplers_WSTRB;
  wire [4:4]xbar_to_m04_couplers_WVALID;
  wire [191:160]xbar_to_m05_couplers_ARADDR;
  wire [17:15]xbar_to_m05_couplers_ARPROT;
  wire [0:0]xbar_to_m05_couplers_ARREADY;
  wire [5:5]xbar_to_m05_couplers_ARVALID;
  wire [191:160]xbar_to_m05_couplers_AWADDR;
  wire [17:15]xbar_to_m05_couplers_AWPROT;
  wire [0:0]xbar_to_m05_couplers_AWREADY;
  wire [5:5]xbar_to_m05_couplers_AWVALID;
  wire [5:5]xbar_to_m05_couplers_BREADY;
  wire [1:0]xbar_to_m05_couplers_BRESP;
  wire [0:0]xbar_to_m05_couplers_BVALID;
  wire [31:0]xbar_to_m05_couplers_RDATA;
  wire [5:5]xbar_to_m05_couplers_RREADY;
  wire [1:0]xbar_to_m05_couplers_RRESP;
  wire [0:0]xbar_to_m05_couplers_RVALID;
  wire [191:160]xbar_to_m05_couplers_WDATA;
  wire [0:0]xbar_to_m05_couplers_WREADY;
  wire [23:20]xbar_to_m05_couplers_WSTRB;
  wire [5:5]xbar_to_m05_couplers_WVALID;
  wire [17:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [17:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  m00_couplers_imp_JNWG9E m00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1JHKYGL m01_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M01_AXI_araddr),
        .M_AXI_arready(M01_AXI_arready),
        .M_AXI_arvalid(M01_AXI_arvalid),
        .M_AXI_awaddr(M01_AXI_awaddr),
        .M_AXI_awready(M01_AXI_awready),
        .M_AXI_awvalid(M01_AXI_awvalid),
        .M_AXI_bready(M01_AXI_bready),
        .M_AXI_bresp(M01_AXI_bresp),
        .M_AXI_bvalid(M01_AXI_bvalid),
        .M_AXI_rdata(M01_AXI_rdata),
        .M_AXI_rready(M01_AXI_rready),
        .M_AXI_rresp(M01_AXI_rresp),
        .M_AXI_rvalid(M01_AXI_rvalid),
        .M_AXI_wdata(M01_AXI_wdata),
        .M_AXI_wready(M01_AXI_wready),
        .M_AXI_wstrb(M01_AXI_wstrb),
        .M_AXI_wvalid(M01_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_18D5QAL m02_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M02_AXI_araddr),
        .M_AXI_arready(M02_AXI_arready),
        .M_AXI_arvalid(M02_AXI_arvalid),
        .M_AXI_awaddr(M02_AXI_awaddr),
        .M_AXI_awready(M02_AXI_awready),
        .M_AXI_awvalid(M02_AXI_awvalid),
        .M_AXI_bready(M02_AXI_bready),
        .M_AXI_bresp(M02_AXI_bresp),
        .M_AXI_bvalid(M02_AXI_bvalid),
        .M_AXI_rdata(M02_AXI_rdata),
        .M_AXI_rready(M02_AXI_rready),
        .M_AXI_rresp(M02_AXI_rresp),
        .M_AXI_rvalid(M02_AXI_rvalid),
        .M_AXI_wdata(M02_AXI_wdata),
        .M_AXI_wready(M02_AXI_wready),
        .M_AXI_wstrb(M02_AXI_wstrb),
        .M_AXI_wvalid(M02_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_8J5MKA m03_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M03_AXI_araddr),
        .M_AXI_arprot(M03_AXI_arprot),
        .M_AXI_arready(M03_AXI_arready),
        .M_AXI_arvalid(M03_AXI_arvalid),
        .M_AXI_awaddr(M03_AXI_awaddr),
        .M_AXI_awprot(M03_AXI_awprot),
        .M_AXI_awready(M03_AXI_awready),
        .M_AXI_awvalid(M03_AXI_awvalid),
        .M_AXI_bready(M03_AXI_bready),
        .M_AXI_bresp(M03_AXI_bresp),
        .M_AXI_bvalid(M03_AXI_bvalid),
        .M_AXI_rdata(M03_AXI_rdata),
        .M_AXI_rready(M03_AXI_rready),
        .M_AXI_rresp(M03_AXI_rresp),
        .M_AXI_rvalid(M03_AXI_rvalid),
        .M_AXI_wdata(M03_AXI_wdata),
        .M_AXI_wready(M03_AXI_wready),
        .M_AXI_wstrb(M03_AXI_wstrb),
        .M_AXI_wvalid(M03_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  m04_couplers_imp_D9WIKT m04_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M04_AXI_araddr),
        .M_AXI_arready(M04_AXI_arready),
        .M_AXI_arvalid(M04_AXI_arvalid),
        .M_AXI_awaddr(M04_AXI_awaddr),
        .M_AXI_awready(M04_AXI_awready),
        .M_AXI_awvalid(M04_AXI_awvalid),
        .M_AXI_bready(M04_AXI_bready),
        .M_AXI_bresp(M04_AXI_bresp),
        .M_AXI_bvalid(M04_AXI_bvalid),
        .M_AXI_rdata(M04_AXI_rdata),
        .M_AXI_rready(M04_AXI_rready),
        .M_AXI_rresp(M04_AXI_rresp),
        .M_AXI_rvalid(M04_AXI_rvalid),
        .M_AXI_wdata(M04_AXI_wdata),
        .M_AXI_wready(M04_AXI_wready),
        .M_AXI_wstrb(M04_AXI_wstrb),
        .M_AXI_wvalid(M04_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m04_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m04_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m04_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m04_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m04_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m04_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m04_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m04_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m04_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m04_couplers_RDATA),
        .S_AXI_rready(xbar_to_m04_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m04_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m04_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m04_couplers_WDATA),
        .S_AXI_wready(xbar_to_m04_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m04_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m04_couplers_WVALID));
  m05_couplers_imp_1CJX44Q m05_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M05_AXI_araddr),
        .M_AXI_arprot(M05_AXI_arprot),
        .M_AXI_arready(M05_AXI_arready),
        .M_AXI_arvalid(M05_AXI_arvalid),
        .M_AXI_awaddr(M05_AXI_awaddr),
        .M_AXI_awprot(M05_AXI_awprot),
        .M_AXI_awready(M05_AXI_awready),
        .M_AXI_awvalid(M05_AXI_awvalid),
        .M_AXI_bready(M05_AXI_bready),
        .M_AXI_bresp(M05_AXI_bresp),
        .M_AXI_bvalid(M05_AXI_bvalid),
        .M_AXI_rdata(M05_AXI_rdata),
        .M_AXI_rready(M05_AXI_rready),
        .M_AXI_rresp(M05_AXI_rresp),
        .M_AXI_rvalid(M05_AXI_rvalid),
        .M_AXI_wdata(M05_AXI_wdata),
        .M_AXI_wready(M05_AXI_wready),
        .M_AXI_wstrb(M05_AXI_wstrb),
        .M_AXI_wvalid(M05_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m05_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m05_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m05_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m05_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m05_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m05_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m05_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m05_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m05_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m05_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m05_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m05_couplers_RDATA),
        .S_AXI_rready(xbar_to_m05_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m05_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m05_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m05_couplers_WDATA),
        .S_AXI_wready(xbar_to_m05_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m05_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m05_couplers_WVALID));
  s00_couplers_imp_11BAHIF s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arburst(S00_AXI_arburst),
        .S_AXI_arcache(S00_AXI_arcache),
        .S_AXI_arlen(S00_AXI_arlen),
        .S_AXI_arlock(S00_AXI_arlock),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arsize(S00_AXI_arsize),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awburst(S00_AXI_awburst),
        .S_AXI_awcache(S00_AXI_awcache),
        .S_AXI_awlen(S00_AXI_awlen),
        .S_AXI_awlock(S00_AXI_awlock),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awsize(S00_AXI_awsize),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rlast(S00_AXI_rlast),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wlast(S00_AXI_wlast),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
  m3_for_arty_a7_axi_interconnect_0_upgraded_ipi_imp_xbar_0 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_to_m05_couplers_ARADDR,xbar_to_m04_couplers_ARADDR,xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m05_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[14:12],xbar_to_m03_couplers_ARPROT,NLW_xbar_m_axi_arprot_UNCONNECTED[8:0]}),
        .m_axi_arready({xbar_to_m05_couplers_ARREADY,xbar_to_m04_couplers_ARREADY,xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m05_couplers_ARVALID,xbar_to_m04_couplers_ARVALID,xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m05_couplers_AWADDR,xbar_to_m04_couplers_AWADDR,xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m05_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[14:12],xbar_to_m03_couplers_AWPROT,NLW_xbar_m_axi_awprot_UNCONNECTED[8:0]}),
        .m_axi_awready({xbar_to_m05_couplers_AWREADY,xbar_to_m04_couplers_AWREADY,xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m05_couplers_AWVALID,xbar_to_m04_couplers_AWVALID,xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m05_couplers_BREADY,xbar_to_m04_couplers_BREADY,xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m05_couplers_BRESP,xbar_to_m04_couplers_BRESP,xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m05_couplers_BVALID,xbar_to_m04_couplers_BVALID,xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m05_couplers_RDATA,xbar_to_m04_couplers_RDATA,xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m05_couplers_RREADY,xbar_to_m04_couplers_RREADY,xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m05_couplers_RRESP,xbar_to_m04_couplers_RRESP,xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m05_couplers_RVALID,xbar_to_m04_couplers_RVALID,xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m05_couplers_WDATA,xbar_to_m04_couplers_WDATA,xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m05_couplers_WREADY,xbar_to_m04_couplers_WREADY,xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m05_couplers_WSTRB,xbar_to_m04_couplers_WSTRB,xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m05_couplers_WVALID,xbar_to_m04_couplers_WVALID,xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m3_for_arty_a7_axi_interconnect_0_1
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [31:0]M03_AXI_awaddr;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M00_AXI_araddr;
  wire M00_AXI_arready;
  wire M00_AXI_arvalid;
  wire [31:0]M00_AXI_awaddr;
  wire M00_AXI_awready;
  wire M00_AXI_awvalid;
  wire M00_AXI_bready;
  wire [1:0]M00_AXI_bresp;
  wire M00_AXI_bvalid;
  wire [31:0]M00_AXI_rdata;
  wire M00_AXI_rready;
  wire [1:0]M00_AXI_rresp;
  wire M00_AXI_rvalid;
  wire [31:0]M00_AXI_wdata;
  wire M00_AXI_wready;
  wire [3:0]M00_AXI_wstrb;
  wire M00_AXI_wvalid;
  wire [31:0]M01_AXI_araddr;
  wire M01_AXI_arready;
  wire M01_AXI_arvalid;
  wire [31:0]M01_AXI_awaddr;
  wire M01_AXI_awready;
  wire M01_AXI_awvalid;
  wire M01_AXI_bready;
  wire [1:0]M01_AXI_bresp;
  wire M01_AXI_bvalid;
  wire [31:0]M01_AXI_rdata;
  wire M01_AXI_rready;
  wire [1:0]M01_AXI_rresp;
  wire M01_AXI_rvalid;
  wire [31:0]M01_AXI_wdata;
  wire M01_AXI_wready;
  wire [3:0]M01_AXI_wstrb;
  wire M01_AXI_wvalid;
  wire [31:0]M02_AXI_araddr;
  wire M02_AXI_arready;
  wire M02_AXI_arvalid;
  wire [31:0]M02_AXI_awaddr;
  wire M02_AXI_awready;
  wire M02_AXI_awvalid;
  wire M02_AXI_bready;
  wire [1:0]M02_AXI_bresp;
  wire M02_AXI_bvalid;
  wire [31:0]M02_AXI_rdata;
  wire M02_AXI_rready;
  wire [1:0]M02_AXI_rresp;
  wire M02_AXI_rvalid;
  wire [31:0]M02_AXI_wdata;
  wire M02_AXI_wready;
  wire [3:0]M02_AXI_wstrb;
  wire M02_AXI_wvalid;
  wire [31:0]M03_AXI_araddr;
  wire M03_AXI_arready;
  wire M03_AXI_arvalid;
  wire [31:0]M03_AXI_awaddr;
  wire M03_AXI_awready;
  wire M03_AXI_awvalid;
  wire M03_AXI_bready;
  wire [1:0]M03_AXI_bresp;
  wire M03_AXI_bvalid;
  wire [31:0]M03_AXI_rdata;
  wire M03_AXI_rready;
  wire [1:0]M03_AXI_rresp;
  wire M03_AXI_rvalid;
  wire [31:0]M03_AXI_wdata;
  wire M03_AXI_wready;
  wire [3:0]M03_AXI_wstrb;
  wire M03_AXI_wvalid;
  wire [31:0]S00_AXI_araddr;
  wire [2:0]S00_AXI_arprot;
  wire [0:0]S00_AXI_arready;
  wire [0:0]S00_AXI_arvalid;
  wire [31:0]S00_AXI_awaddr;
  wire [2:0]S00_AXI_awprot;
  wire [0:0]S00_AXI_awready;
  wire [0:0]S00_AXI_awvalid;
  wire [0:0]S00_AXI_bready;
  wire [1:0]S00_AXI_bresp;
  wire [0:0]S00_AXI_bvalid;
  wire [31:0]S00_AXI_rdata;
  wire [0:0]S00_AXI_rready;
  wire [1:0]S00_AXI_rresp;
  wire [0:0]S00_AXI_rvalid;
  wire [31:0]S00_AXI_wdata;
  wire [0:0]S00_AXI_wready;
  wire [3:0]S00_AXI_wstrb;
  wire [0:0]S00_AXI_wvalid;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;
  wire [11:0]NLW_xbar_m_axi_arprot_UNCONNECTED;
  wire [11:0]NLW_xbar_m_axi_awprot_UNCONNECTED;

  m00_couplers_imp_13L60SF m00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M00_AXI_araddr),
        .M_AXI_arready(M00_AXI_arready),
        .M_AXI_arvalid(M00_AXI_arvalid),
        .M_AXI_awaddr(M00_AXI_awaddr),
        .M_AXI_awready(M00_AXI_awready),
        .M_AXI_awvalid(M00_AXI_awvalid),
        .M_AXI_bready(M00_AXI_bready),
        .M_AXI_bresp(M00_AXI_bresp),
        .M_AXI_bvalid(M00_AXI_bvalid),
        .M_AXI_rdata(M00_AXI_rdata),
        .M_AXI_rready(M00_AXI_rready),
        .M_AXI_rresp(M00_AXI_rresp),
        .M_AXI_rvalid(M00_AXI_rvalid),
        .M_AXI_wdata(M00_AXI_wdata),
        .M_AXI_wready(M00_AXI_wready),
        .M_AXI_wstrb(M00_AXI_wstrb),
        .M_AXI_wvalid(M00_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_4B5460 m01_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M01_AXI_araddr),
        .M_AXI_arready(M01_AXI_arready),
        .M_AXI_arvalid(M01_AXI_arvalid),
        .M_AXI_awaddr(M01_AXI_awaddr),
        .M_AXI_awready(M01_AXI_awready),
        .M_AXI_awvalid(M01_AXI_awvalid),
        .M_AXI_bready(M01_AXI_bready),
        .M_AXI_bresp(M01_AXI_bresp),
        .M_AXI_bvalid(M01_AXI_bvalid),
        .M_AXI_rdata(M01_AXI_rdata),
        .M_AXI_rready(M01_AXI_rready),
        .M_AXI_rresp(M01_AXI_rresp),
        .M_AXI_rvalid(M01_AXI_rvalid),
        .M_AXI_wdata(M01_AXI_wdata),
        .M_AXI_wready(M01_AXI_wready),
        .M_AXI_wstrb(M01_AXI_wstrb),
        .M_AXI_wvalid(M01_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_OAWDIO m02_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M02_AXI_araddr),
        .M_AXI_arready(M02_AXI_arready),
        .M_AXI_arvalid(M02_AXI_arvalid),
        .M_AXI_awaddr(M02_AXI_awaddr),
        .M_AXI_awready(M02_AXI_awready),
        .M_AXI_awvalid(M02_AXI_awvalid),
        .M_AXI_bready(M02_AXI_bready),
        .M_AXI_bresp(M02_AXI_bresp),
        .M_AXI_bvalid(M02_AXI_bvalid),
        .M_AXI_rdata(M02_AXI_rdata),
        .M_AXI_rready(M02_AXI_rready),
        .M_AXI_rresp(M02_AXI_rresp),
        .M_AXI_rvalid(M02_AXI_rvalid),
        .M_AXI_wdata(M02_AXI_wdata),
        .M_AXI_wready(M02_AXI_wready),
        .M_AXI_wstrb(M02_AXI_wstrb),
        .M_AXI_wvalid(M02_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1NKLPAV m03_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(M03_AXI_araddr),
        .M_AXI_arready(M03_AXI_arready),
        .M_AXI_arvalid(M03_AXI_arvalid),
        .M_AXI_awaddr(M03_AXI_awaddr),
        .M_AXI_awready(M03_AXI_awready),
        .M_AXI_awvalid(M03_AXI_awvalid),
        .M_AXI_bready(M03_AXI_bready),
        .M_AXI_bresp(M03_AXI_bresp),
        .M_AXI_bvalid(M03_AXI_bvalid),
        .M_AXI_rdata(M03_AXI_rdata),
        .M_AXI_rready(M03_AXI_rready),
        .M_AXI_rresp(M03_AXI_rresp),
        .M_AXI_rvalid(M03_AXI_rvalid),
        .M_AXI_wdata(M03_AXI_wdata),
        .M_AXI_wready(M03_AXI_wready),
        .M_AXI_wstrb(M03_AXI_wstrb),
        .M_AXI_wvalid(M03_AXI_wvalid),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_LNGPOQ s00_couplers
       (.M_ACLK(ACLK),
        .M_ARESETN(ARESETN),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(ACLK),
        .S_ARESETN(ARESETN),
        .S_AXI_araddr(S00_AXI_araddr),
        .S_AXI_arprot(S00_AXI_arprot),
        .S_AXI_arready(S00_AXI_arready),
        .S_AXI_arvalid(S00_AXI_arvalid),
        .S_AXI_awaddr(S00_AXI_awaddr),
        .S_AXI_awprot(S00_AXI_awprot),
        .S_AXI_awready(S00_AXI_awready),
        .S_AXI_awvalid(S00_AXI_awvalid),
        .S_AXI_bready(S00_AXI_bready),
        .S_AXI_bresp(S00_AXI_bresp),
        .S_AXI_bvalid(S00_AXI_bvalid),
        .S_AXI_rdata(S00_AXI_rdata),
        .S_AXI_rready(S00_AXI_rready),
        .S_AXI_rresp(S00_AXI_rresp),
        .S_AXI_rvalid(S00_AXI_rvalid),
        .S_AXI_wdata(S00_AXI_wdata),
        .S_AXI_wready(S00_AXI_wready),
        .S_AXI_wstrb(S00_AXI_wstrb),
        .S_AXI_wvalid(S00_AXI_wvalid));
  m3_for_arty_a7_axi_interconnect_0_upgraded_ipi_imp_xbar_1 xbar
       (.aclk(ACLK),
        .aresetn(ARESETN),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module s00_couplers_imp_11BAHIF
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [2:0]M_AXI_arprot;
  wire M_AXI_arready;
  wire M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [2:0]M_AXI_awprot;
  wire M_AXI_awready;
  wire M_AXI_awvalid;
  wire M_AXI_bready;
  wire [1:0]M_AXI_bresp;
  wire M_AXI_bvalid;
  wire [31:0]M_AXI_rdata;
  wire M_AXI_rready;
  wire [1:0]M_AXI_rresp;
  wire M_AXI_rvalid;
  wire [31:0]M_AXI_wdata;
  wire M_AXI_wready;
  wire [3:0]M_AXI_wstrb;
  wire M_AXI_wvalid;
  wire S_ACLK;
  wire S_ARESETN;
  wire [31:0]S_AXI_araddr;
  wire [1:0]S_AXI_arburst;
  wire [3:0]S_AXI_arcache;
  wire [3:0]S_AXI_arlen;
  wire [1:0]S_AXI_arlock;
  wire [2:0]S_AXI_arprot;
  wire S_AXI_arready;
  wire [2:0]S_AXI_arsize;
  wire S_AXI_arvalid;
  wire [31:0]S_AXI_awaddr;
  wire [1:0]S_AXI_awburst;
  wire [3:0]S_AXI_awcache;
  wire [3:0]S_AXI_awlen;
  wire [1:0]S_AXI_awlock;
  wire [2:0]S_AXI_awprot;
  wire S_AXI_awready;
  wire [2:0]S_AXI_awsize;
  wire S_AXI_awvalid;
  wire S_AXI_bready;
  wire [1:0]S_AXI_bresp;
  wire S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire S_AXI_rlast;
  wire S_AXI_rready;
  wire [1:0]S_AXI_rresp;
  wire S_AXI_rvalid;
  wire [31:0]S_AXI_wdata;
  wire S_AXI_wlast;
  wire S_AXI_wready;
  wire [3:0]S_AXI_wstrb;
  wire S_AXI_wvalid;

  m3_for_arty_a7_axi_interconnect_0_imp_auto_pc_0 auto_pc
       (.aclk(S_ACLK),
        .aresetn(S_ARESETN),
        .m_axi_araddr(M_AXI_araddr),
        .m_axi_arprot(M_AXI_arprot),
        .m_axi_arready(M_AXI_arready),
        .m_axi_arvalid(M_AXI_arvalid),
        .m_axi_awaddr(M_AXI_awaddr),
        .m_axi_awprot(M_AXI_awprot),
        .m_axi_awready(M_AXI_awready),
        .m_axi_awvalid(M_AXI_awvalid),
        .m_axi_bready(M_AXI_bready),
        .m_axi_bresp(M_AXI_bresp),
        .m_axi_bvalid(M_AXI_bvalid),
        .m_axi_rdata(M_AXI_rdata),
        .m_axi_rready(M_AXI_rready),
        .m_axi_rresp(M_AXI_rresp),
        .m_axi_rvalid(M_AXI_rvalid),
        .m_axi_wdata(M_AXI_wdata),
        .m_axi_wready(M_AXI_wready),
        .m_axi_wstrb(M_AXI_wstrb),
        .m_axi_wvalid(M_AXI_wvalid),
        .s_axi_araddr(S_AXI_araddr),
        .s_axi_arburst(S_AXI_arburst),
        .s_axi_arcache(S_AXI_arcache),
        .s_axi_arlen(S_AXI_arlen),
        .s_axi_arlock(S_AXI_arlock),
        .s_axi_arprot(S_AXI_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(S_AXI_arready),
        .s_axi_arsize(S_AXI_arsize),
        .s_axi_arvalid(S_AXI_arvalid),
        .s_axi_awaddr(S_AXI_awaddr),
        .s_axi_awburst(S_AXI_awburst),
        .s_axi_awcache(S_AXI_awcache),
        .s_axi_awlen(S_AXI_awlen),
        .s_axi_awlock(S_AXI_awlock),
        .s_axi_awprot(S_AXI_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(S_AXI_awready),
        .s_axi_awsize(S_AXI_awsize),
        .s_axi_awvalid(S_AXI_awvalid),
        .s_axi_bready(S_AXI_bready),
        .s_axi_bresp(S_AXI_bresp),
        .s_axi_bvalid(S_AXI_bvalid),
        .s_axi_rdata(S_AXI_rdata),
        .s_axi_rlast(S_AXI_rlast),
        .s_axi_rready(S_AXI_rready),
        .s_axi_rresp(S_AXI_rresp),
        .s_axi_rvalid(S_AXI_rvalid),
        .s_axi_wdata(S_AXI_wdata),
        .s_axi_wlast(S_AXI_wlast),
        .s_axi_wready(S_AXI_wready),
        .s_axi_wstrb(S_AXI_wstrb),
        .s_axi_wvalid(S_AXI_wvalid));
endmodule

module s00_couplers_imp_LNGPOQ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]M_AXI_araddr;
  wire [2:0]M_AXI_arprot;
  wire [0:0]M_AXI_arvalid;
  wire [31:0]M_AXI_awaddr;
  wire [2:0]M_AXI_awprot;
  wire [0:0]M_AXI_awvalid;
  wire [0:0]M_AXI_bready;
  wire [0:0]M_AXI_rready;
  wire [31:0]M_AXI_wdata;
  wire [3:0]M_AXI_wstrb;
  wire [0:0]M_AXI_wvalid;
  wire [0:0]S_AXI_arready;
  wire [0:0]S_AXI_awready;
  wire [1:0]S_AXI_bresp;
  wire [0:0]S_AXI_bvalid;
  wire [31:0]S_AXI_rdata;
  wire [1:0]S_AXI_rresp;
  wire [0:0]S_AXI_rvalid;
  wire [0:0]S_AXI_wready;

  assign M_AXI_araddr = S_AXI_araddr[31:0];
  assign M_AXI_arprot = S_AXI_arprot[2:0];
  assign M_AXI_arvalid = S_AXI_arvalid[0];
  assign M_AXI_awaddr = S_AXI_awaddr[31:0];
  assign M_AXI_awprot = S_AXI_awprot[2:0];
  assign M_AXI_awvalid = S_AXI_awvalid[0];
  assign M_AXI_bready = S_AXI_bready[0];
  assign M_AXI_rready = S_AXI_rready[0];
  assign M_AXI_wdata = S_AXI_wdata[31:0];
  assign M_AXI_wstrb = S_AXI_wstrb[3:0];
  assign M_AXI_wvalid = S_AXI_wvalid[0];
  assign S_AXI_arready = M_AXI_arready[0];
  assign S_AXI_awready = M_AXI_awready[0];
  assign S_AXI_bresp = M_AXI_bresp[1:0];
  assign S_AXI_bvalid = M_AXI_bvalid[0];
  assign S_AXI_rdata = M_AXI_rdata[31:0];
  assign S_AXI_rresp = M_AXI_rresp[1:0];
  assign S_AXI_rvalid = M_AXI_rvalid[0];
  assign S_AXI_wready = M_AXI_wready[0];
endmodule
