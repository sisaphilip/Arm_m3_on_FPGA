// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module m3_for_arty_a7 (
  TDO,
  sys_clock,
  TDI,
  nTRST,
  reset,
  DAPLink_tri_o,
  usb_uart_txd,
  usb_uart_rxd,
  qspi_flash_io0_i,
  qspi_flash_io0_o,
  qspi_flash_io0_t,
  qspi_flash_io1_i,
  qspi_flash_io1_o,
  qspi_flash_io1_t,
  qspi_flash_ss_i,
  qspi_flash_ss_o,
  qspi_flash_ss_t,
  led_4bits_tri_i,
  led_4bits_tri_o,
  led_4bits_tri_t,
  rgb_led_tri_i,
  rgb_led_tri_o,
  rgb_led_tri_t
);

  (* X_INTERFACE_IGNORE = "true" *)
  inout [0:0]TDO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.SYS_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN m3_for_arty_a7_sys_clock, INSERT_VIP 0" *)
  input sys_clock;
  (* X_INTERFACE_IGNORE = "true" *)
  input TDI;
  (* X_INTERFACE_IGNORE = "true" *)
  input nTRST;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 DAPLink TRI_O" *)
  (* X_INTERFACE_MODE = "master DAPLink" *)
  inout [15:0]DAPLink_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart TxD" *)
  (* X_INTERFACE_MODE = "master usb_uart" *)
  output usb_uart_txd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 usb_uart RxD" *)
  input usb_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_I" *)
  (* X_INTERFACE_MODE = "master qspi_flash" *)
  input qspi_flash_io0_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_O" *)
  output qspi_flash_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO0_T" *)
  output qspi_flash_io0_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_I" *)
  input qspi_flash_io1_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_O" *)
  output qspi_flash_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash IO1_T" *)
  output qspi_flash_io1_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_I" *)
  input [0:0]qspi_flash_ss_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_O" *)
  output [0:0]qspi_flash_ss_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 qspi_flash SS_T" *)
  output qspi_flash_ss_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_I" *)
  (* X_INTERFACE_MODE = "master led_4bits" *)
  input [31:0]led_4bits_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_O" *)
  output [31:0]led_4bits_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 led_4bits TRI_T" *)
  output [31:0]led_4bits_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_I" *)
  (* X_INTERFACE_MODE = "master rgb_led" *)
  input [31:0]rgb_led_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_O" *)
  output [31:0]rgb_led_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 rgb_led TRI_T" *)
  output [31:0]rgb_led_tri_t;

  // stub module has no contents

endmodule
