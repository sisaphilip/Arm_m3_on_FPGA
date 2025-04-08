//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Mon Mar 24 15:51:08 2025
//Host        : thinkpad-p1-gen-5 running 64-bit Ubuntu 24.10
//Command     : generate_target m3_for_arty_a7_wrapper.bd
//Design      : m3_for_arty_a7_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module m3_for_arty_a7_wrapper
   (DAPLink_tri_o,
    TDI,
    TDO,
    led_4bits_tri_io,
    nTRST,
    qspi_flash_io0_io,
    qspi_flash_io1_io,
    qspi_flash_ss_io,
    reset,
    rgb_led_tri_io,
    sys_clock,
    usb_uart_rxd,
    usb_uart_txd);
  inout [15:0]DAPLink_tri_o;
  input TDI;
  inout [0:0]TDO;
  inout [31:0]led_4bits_tri_io;
  input nTRST;
  inout qspi_flash_io0_io;
  inout qspi_flash_io1_io;
  inout [0:0]qspi_flash_ss_io;
  input reset;
  inout [31:0]rgb_led_tri_io;
  input sys_clock;
  input usb_uart_rxd;
  output usb_uart_txd;

  wire [15:0]DAPLink_tri_o;
  wire TDI;
  wire [0:0]TDO;
  wire [0:0]led_4bits_tri_i_0;
  wire [1:1]led_4bits_tri_i_1;
  wire [10:10]led_4bits_tri_i_10;
  wire [11:11]led_4bits_tri_i_11;
  wire [12:12]led_4bits_tri_i_12;
  wire [13:13]led_4bits_tri_i_13;
  wire [14:14]led_4bits_tri_i_14;
  wire [15:15]led_4bits_tri_i_15;
  wire [16:16]led_4bits_tri_i_16;
  wire [17:17]led_4bits_tri_i_17;
  wire [18:18]led_4bits_tri_i_18;
  wire [19:19]led_4bits_tri_i_19;
  wire [2:2]led_4bits_tri_i_2;
  wire [20:20]led_4bits_tri_i_20;
  wire [21:21]led_4bits_tri_i_21;
  wire [22:22]led_4bits_tri_i_22;
  wire [23:23]led_4bits_tri_i_23;
  wire [24:24]led_4bits_tri_i_24;
  wire [25:25]led_4bits_tri_i_25;
  wire [26:26]led_4bits_tri_i_26;
  wire [27:27]led_4bits_tri_i_27;
  wire [28:28]led_4bits_tri_i_28;
  wire [29:29]led_4bits_tri_i_29;
  wire [3:3]led_4bits_tri_i_3;
  wire [30:30]led_4bits_tri_i_30;
  wire [31:31]led_4bits_tri_i_31;
  wire [4:4]led_4bits_tri_i_4;
  wire [5:5]led_4bits_tri_i_5;
  wire [6:6]led_4bits_tri_i_6;
  wire [7:7]led_4bits_tri_i_7;
  wire [8:8]led_4bits_tri_i_8;
  wire [9:9]led_4bits_tri_i_9;
  wire [0:0]led_4bits_tri_io_0;
  wire [1:1]led_4bits_tri_io_1;
  wire [10:10]led_4bits_tri_io_10;
  wire [11:11]led_4bits_tri_io_11;
  wire [12:12]led_4bits_tri_io_12;
  wire [13:13]led_4bits_tri_io_13;
  wire [14:14]led_4bits_tri_io_14;
  wire [15:15]led_4bits_tri_io_15;
  wire [16:16]led_4bits_tri_io_16;
  wire [17:17]led_4bits_tri_io_17;
  wire [18:18]led_4bits_tri_io_18;
  wire [19:19]led_4bits_tri_io_19;
  wire [2:2]led_4bits_tri_io_2;
  wire [20:20]led_4bits_tri_io_20;
  wire [21:21]led_4bits_tri_io_21;
  wire [22:22]led_4bits_tri_io_22;
  wire [23:23]led_4bits_tri_io_23;
  wire [24:24]led_4bits_tri_io_24;
  wire [25:25]led_4bits_tri_io_25;
  wire [26:26]led_4bits_tri_io_26;
  wire [27:27]led_4bits_tri_io_27;
  wire [28:28]led_4bits_tri_io_28;
  wire [29:29]led_4bits_tri_io_29;
  wire [3:3]led_4bits_tri_io_3;
  wire [30:30]led_4bits_tri_io_30;
  wire [31:31]led_4bits_tri_io_31;
  wire [4:4]led_4bits_tri_io_4;
  wire [5:5]led_4bits_tri_io_5;
  wire [6:6]led_4bits_tri_io_6;
  wire [7:7]led_4bits_tri_io_7;
  wire [8:8]led_4bits_tri_io_8;
  wire [9:9]led_4bits_tri_io_9;
  wire [0:0]led_4bits_tri_o_0;
  wire [1:1]led_4bits_tri_o_1;
  wire [10:10]led_4bits_tri_o_10;
  wire [11:11]led_4bits_tri_o_11;
  wire [12:12]led_4bits_tri_o_12;
  wire [13:13]led_4bits_tri_o_13;
  wire [14:14]led_4bits_tri_o_14;
  wire [15:15]led_4bits_tri_o_15;
  wire [16:16]led_4bits_tri_o_16;
  wire [17:17]led_4bits_tri_o_17;
  wire [18:18]led_4bits_tri_o_18;
  wire [19:19]led_4bits_tri_o_19;
  wire [2:2]led_4bits_tri_o_2;
  wire [20:20]led_4bits_tri_o_20;
  wire [21:21]led_4bits_tri_o_21;
  wire [22:22]led_4bits_tri_o_22;
  wire [23:23]led_4bits_tri_o_23;
  wire [24:24]led_4bits_tri_o_24;
  wire [25:25]led_4bits_tri_o_25;
  wire [26:26]led_4bits_tri_o_26;
  wire [27:27]led_4bits_tri_o_27;
  wire [28:28]led_4bits_tri_o_28;
  wire [29:29]led_4bits_tri_o_29;
  wire [3:3]led_4bits_tri_o_3;
  wire [30:30]led_4bits_tri_o_30;
  wire [31:31]led_4bits_tri_o_31;
  wire [4:4]led_4bits_tri_o_4;
  wire [5:5]led_4bits_tri_o_5;
  wire [6:6]led_4bits_tri_o_6;
  wire [7:7]led_4bits_tri_o_7;
  wire [8:8]led_4bits_tri_o_8;
  wire [9:9]led_4bits_tri_o_9;
  wire [0:0]led_4bits_tri_t_0;
  wire [1:1]led_4bits_tri_t_1;
  wire [10:10]led_4bits_tri_t_10;
  wire [11:11]led_4bits_tri_t_11;
  wire [12:12]led_4bits_tri_t_12;
  wire [13:13]led_4bits_tri_t_13;
  wire [14:14]led_4bits_tri_t_14;
  wire [15:15]led_4bits_tri_t_15;
  wire [16:16]led_4bits_tri_t_16;
  wire [17:17]led_4bits_tri_t_17;
  wire [18:18]led_4bits_tri_t_18;
  wire [19:19]led_4bits_tri_t_19;
  wire [2:2]led_4bits_tri_t_2;
  wire [20:20]led_4bits_tri_t_20;
  wire [21:21]led_4bits_tri_t_21;
  wire [22:22]led_4bits_tri_t_22;
  wire [23:23]led_4bits_tri_t_23;
  wire [24:24]led_4bits_tri_t_24;
  wire [25:25]led_4bits_tri_t_25;
  wire [26:26]led_4bits_tri_t_26;
  wire [27:27]led_4bits_tri_t_27;
  wire [28:28]led_4bits_tri_t_28;
  wire [29:29]led_4bits_tri_t_29;
  wire [3:3]led_4bits_tri_t_3;
  wire [30:30]led_4bits_tri_t_30;
  wire [31:31]led_4bits_tri_t_31;
  wire [4:4]led_4bits_tri_t_4;
  wire [5:5]led_4bits_tri_t_5;
  wire [6:6]led_4bits_tri_t_6;
  wire [7:7]led_4bits_tri_t_7;
  wire [8:8]led_4bits_tri_t_8;
  wire [9:9]led_4bits_tri_t_9;
  wire nTRST;
  wire qspi_flash_io0_i;
  wire qspi_flash_io0_io;
  wire qspi_flash_io0_o;
  wire qspi_flash_io0_t;
  wire qspi_flash_io1_i;
  wire qspi_flash_io1_io;
  wire qspi_flash_io1_o;
  wire qspi_flash_io1_t;
  wire [0:0]qspi_flash_ss_i_0;
  wire [0:0]qspi_flash_ss_io_0;
  wire [0:0]qspi_flash_ss_o_0;
  wire qspi_flash_ss_t;
  wire reset;
  wire [0:0]rgb_led_tri_i_0;
  wire [1:1]rgb_led_tri_i_1;
  wire [10:10]rgb_led_tri_i_10;
  wire [11:11]rgb_led_tri_i_11;
  wire [12:12]rgb_led_tri_i_12;
  wire [13:13]rgb_led_tri_i_13;
  wire [14:14]rgb_led_tri_i_14;
  wire [15:15]rgb_led_tri_i_15;
  wire [16:16]rgb_led_tri_i_16;
  wire [17:17]rgb_led_tri_i_17;
  wire [18:18]rgb_led_tri_i_18;
  wire [19:19]rgb_led_tri_i_19;
  wire [2:2]rgb_led_tri_i_2;
  wire [20:20]rgb_led_tri_i_20;
  wire [21:21]rgb_led_tri_i_21;
  wire [22:22]rgb_led_tri_i_22;
  wire [23:23]rgb_led_tri_i_23;
  wire [24:24]rgb_led_tri_i_24;
  wire [25:25]rgb_led_tri_i_25;
  wire [26:26]rgb_led_tri_i_26;
  wire [27:27]rgb_led_tri_i_27;
  wire [28:28]rgb_led_tri_i_28;
  wire [29:29]rgb_led_tri_i_29;
  wire [3:3]rgb_led_tri_i_3;
  wire [30:30]rgb_led_tri_i_30;
  wire [31:31]rgb_led_tri_i_31;
  wire [4:4]rgb_led_tri_i_4;
  wire [5:5]rgb_led_tri_i_5;
  wire [6:6]rgb_led_tri_i_6;
  wire [7:7]rgb_led_tri_i_7;
  wire [8:8]rgb_led_tri_i_8;
  wire [9:9]rgb_led_tri_i_9;
  wire [0:0]rgb_led_tri_io_0;
  wire [1:1]rgb_led_tri_io_1;
  wire [10:10]rgb_led_tri_io_10;
  wire [11:11]rgb_led_tri_io_11;
  wire [12:12]rgb_led_tri_io_12;
  wire [13:13]rgb_led_tri_io_13;
  wire [14:14]rgb_led_tri_io_14;
  wire [15:15]rgb_led_tri_io_15;
  wire [16:16]rgb_led_tri_io_16;
  wire [17:17]rgb_led_tri_io_17;
  wire [18:18]rgb_led_tri_io_18;
  wire [19:19]rgb_led_tri_io_19;
  wire [2:2]rgb_led_tri_io_2;
  wire [20:20]rgb_led_tri_io_20;
  wire [21:21]rgb_led_tri_io_21;
  wire [22:22]rgb_led_tri_io_22;
  wire [23:23]rgb_led_tri_io_23;
  wire [24:24]rgb_led_tri_io_24;
  wire [25:25]rgb_led_tri_io_25;
  wire [26:26]rgb_led_tri_io_26;
  wire [27:27]rgb_led_tri_io_27;
  wire [28:28]rgb_led_tri_io_28;
  wire [29:29]rgb_led_tri_io_29;
  wire [3:3]rgb_led_tri_io_3;
  wire [30:30]rgb_led_tri_io_30;
  wire [31:31]rgb_led_tri_io_31;
  wire [4:4]rgb_led_tri_io_4;
  wire [5:5]rgb_led_tri_io_5;
  wire [6:6]rgb_led_tri_io_6;
  wire [7:7]rgb_led_tri_io_7;
  wire [8:8]rgb_led_tri_io_8;
  wire [9:9]rgb_led_tri_io_9;
  wire [0:0]rgb_led_tri_o_0;
  wire [1:1]rgb_led_tri_o_1;
  wire [10:10]rgb_led_tri_o_10;
  wire [11:11]rgb_led_tri_o_11;
  wire [12:12]rgb_led_tri_o_12;
  wire [13:13]rgb_led_tri_o_13;
  wire [14:14]rgb_led_tri_o_14;
  wire [15:15]rgb_led_tri_o_15;
  wire [16:16]rgb_led_tri_o_16;
  wire [17:17]rgb_led_tri_o_17;
  wire [18:18]rgb_led_tri_o_18;
  wire [19:19]rgb_led_tri_o_19;
  wire [2:2]rgb_led_tri_o_2;
  wire [20:20]rgb_led_tri_o_20;
  wire [21:21]rgb_led_tri_o_21;
  wire [22:22]rgb_led_tri_o_22;
  wire [23:23]rgb_led_tri_o_23;
  wire [24:24]rgb_led_tri_o_24;
  wire [25:25]rgb_led_tri_o_25;
  wire [26:26]rgb_led_tri_o_26;
  wire [27:27]rgb_led_tri_o_27;
  wire [28:28]rgb_led_tri_o_28;
  wire [29:29]rgb_led_tri_o_29;
  wire [3:3]rgb_led_tri_o_3;
  wire [30:30]rgb_led_tri_o_30;
  wire [31:31]rgb_led_tri_o_31;
  wire [4:4]rgb_led_tri_o_4;
  wire [5:5]rgb_led_tri_o_5;
  wire [6:6]rgb_led_tri_o_6;
  wire [7:7]rgb_led_tri_o_7;
  wire [8:8]rgb_led_tri_o_8;
  wire [9:9]rgb_led_tri_o_9;
  wire [0:0]rgb_led_tri_t_0;
  wire [1:1]rgb_led_tri_t_1;
  wire [10:10]rgb_led_tri_t_10;
  wire [11:11]rgb_led_tri_t_11;
  wire [12:12]rgb_led_tri_t_12;
  wire [13:13]rgb_led_tri_t_13;
  wire [14:14]rgb_led_tri_t_14;
  wire [15:15]rgb_led_tri_t_15;
  wire [16:16]rgb_led_tri_t_16;
  wire [17:17]rgb_led_tri_t_17;
  wire [18:18]rgb_led_tri_t_18;
  wire [19:19]rgb_led_tri_t_19;
  wire [2:2]rgb_led_tri_t_2;
  wire [20:20]rgb_led_tri_t_20;
  wire [21:21]rgb_led_tri_t_21;
  wire [22:22]rgb_led_tri_t_22;
  wire [23:23]rgb_led_tri_t_23;
  wire [24:24]rgb_led_tri_t_24;
  wire [25:25]rgb_led_tri_t_25;
  wire [26:26]rgb_led_tri_t_26;
  wire [27:27]rgb_led_tri_t_27;
  wire [28:28]rgb_led_tri_t_28;
  wire [29:29]rgb_led_tri_t_29;
  wire [3:3]rgb_led_tri_t_3;
  wire [30:30]rgb_led_tri_t_30;
  wire [31:31]rgb_led_tri_t_31;
  wire [4:4]rgb_led_tri_t_4;
  wire [5:5]rgb_led_tri_t_5;
  wire [6:6]rgb_led_tri_t_6;
  wire [7:7]rgb_led_tri_t_7;
  wire [8:8]rgb_led_tri_t_8;
  wire [9:9]rgb_led_tri_t_9;
  wire sys_clock;
  wire usb_uart_rxd;
  wire usb_uart_txd;

  IOBUF led_4bits_tri_iobuf_0
       (.I(led_4bits_tri_o_0),
        .IO(led_4bits_tri_io[0]),
        .O(led_4bits_tri_i_0),
        .T(led_4bits_tri_t_0));
  IOBUF led_4bits_tri_iobuf_1
       (.I(led_4bits_tri_o_1),
        .IO(led_4bits_tri_io[1]),
        .O(led_4bits_tri_i_1),
        .T(led_4bits_tri_t_1));
  IOBUF led_4bits_tri_iobuf_10
       (.I(led_4bits_tri_o_10),
        .IO(led_4bits_tri_io[10]),
        .O(led_4bits_tri_i_10),
        .T(led_4bits_tri_t_10));
  IOBUF led_4bits_tri_iobuf_11
       (.I(led_4bits_tri_o_11),
        .IO(led_4bits_tri_io[11]),
        .O(led_4bits_tri_i_11),
        .T(led_4bits_tri_t_11));
  IOBUF led_4bits_tri_iobuf_12
       (.I(led_4bits_tri_o_12),
        .IO(led_4bits_tri_io[12]),
        .O(led_4bits_tri_i_12),
        .T(led_4bits_tri_t_12));
  IOBUF led_4bits_tri_iobuf_13
       (.I(led_4bits_tri_o_13),
        .IO(led_4bits_tri_io[13]),
        .O(led_4bits_tri_i_13),
        .T(led_4bits_tri_t_13));
  IOBUF led_4bits_tri_iobuf_14
       (.I(led_4bits_tri_o_14),
        .IO(led_4bits_tri_io[14]),
        .O(led_4bits_tri_i_14),
        .T(led_4bits_tri_t_14));
  IOBUF led_4bits_tri_iobuf_15
       (.I(led_4bits_tri_o_15),
        .IO(led_4bits_tri_io[15]),
        .O(led_4bits_tri_i_15),
        .T(led_4bits_tri_t_15));
  IOBUF led_4bits_tri_iobuf_16
       (.I(led_4bits_tri_o_16),
        .IO(led_4bits_tri_io[16]),
        .O(led_4bits_tri_i_16),
        .T(led_4bits_tri_t_16));
  IOBUF led_4bits_tri_iobuf_17
       (.I(led_4bits_tri_o_17),
        .IO(led_4bits_tri_io[17]),
        .O(led_4bits_tri_i_17),
        .T(led_4bits_tri_t_17));
  IOBUF led_4bits_tri_iobuf_18
       (.I(led_4bits_tri_o_18),
        .IO(led_4bits_tri_io[18]),
        .O(led_4bits_tri_i_18),
        .T(led_4bits_tri_t_18));
  IOBUF led_4bits_tri_iobuf_19
       (.I(led_4bits_tri_o_19),
        .IO(led_4bits_tri_io[19]),
        .O(led_4bits_tri_i_19),
        .T(led_4bits_tri_t_19));
  IOBUF led_4bits_tri_iobuf_2
       (.I(led_4bits_tri_o_2),
        .IO(led_4bits_tri_io[2]),
        .O(led_4bits_tri_i_2),
        .T(led_4bits_tri_t_2));
  IOBUF led_4bits_tri_iobuf_20
       (.I(led_4bits_tri_o_20),
        .IO(led_4bits_tri_io[20]),
        .O(led_4bits_tri_i_20),
        .T(led_4bits_tri_t_20));
  IOBUF led_4bits_tri_iobuf_21
       (.I(led_4bits_tri_o_21),
        .IO(led_4bits_tri_io[21]),
        .O(led_4bits_tri_i_21),
        .T(led_4bits_tri_t_21));
  IOBUF led_4bits_tri_iobuf_22
       (.I(led_4bits_tri_o_22),
        .IO(led_4bits_tri_io[22]),
        .O(led_4bits_tri_i_22),
        .T(led_4bits_tri_t_22));
  IOBUF led_4bits_tri_iobuf_23
       (.I(led_4bits_tri_o_23),
        .IO(led_4bits_tri_io[23]),
        .O(led_4bits_tri_i_23),
        .T(led_4bits_tri_t_23));
  IOBUF led_4bits_tri_iobuf_24
       (.I(led_4bits_tri_o_24),
        .IO(led_4bits_tri_io[24]),
        .O(led_4bits_tri_i_24),
        .T(led_4bits_tri_t_24));
  IOBUF led_4bits_tri_iobuf_25
       (.I(led_4bits_tri_o_25),
        .IO(led_4bits_tri_io[25]),
        .O(led_4bits_tri_i_25),
        .T(led_4bits_tri_t_25));
  IOBUF led_4bits_tri_iobuf_26
       (.I(led_4bits_tri_o_26),
        .IO(led_4bits_tri_io[26]),
        .O(led_4bits_tri_i_26),
        .T(led_4bits_tri_t_26));
  IOBUF led_4bits_tri_iobuf_27
       (.I(led_4bits_tri_o_27),
        .IO(led_4bits_tri_io[27]),
        .O(led_4bits_tri_i_27),
        .T(led_4bits_tri_t_27));
  IOBUF led_4bits_tri_iobuf_28
       (.I(led_4bits_tri_o_28),
        .IO(led_4bits_tri_io[28]),
        .O(led_4bits_tri_i_28),
        .T(led_4bits_tri_t_28));
  IOBUF led_4bits_tri_iobuf_29
       (.I(led_4bits_tri_o_29),
        .IO(led_4bits_tri_io[29]),
        .O(led_4bits_tri_i_29),
        .T(led_4bits_tri_t_29));
  IOBUF led_4bits_tri_iobuf_3
       (.I(led_4bits_tri_o_3),
        .IO(led_4bits_tri_io[3]),
        .O(led_4bits_tri_i_3),
        .T(led_4bits_tri_t_3));
  IOBUF led_4bits_tri_iobuf_30
       (.I(led_4bits_tri_o_30),
        .IO(led_4bits_tri_io[30]),
        .O(led_4bits_tri_i_30),
        .T(led_4bits_tri_t_30));
  IOBUF led_4bits_tri_iobuf_31
       (.I(led_4bits_tri_o_31),
        .IO(led_4bits_tri_io[31]),
        .O(led_4bits_tri_i_31),
        .T(led_4bits_tri_t_31));
  IOBUF led_4bits_tri_iobuf_4
       (.I(led_4bits_tri_o_4),
        .IO(led_4bits_tri_io[4]),
        .O(led_4bits_tri_i_4),
        .T(led_4bits_tri_t_4));
  IOBUF led_4bits_tri_iobuf_5
       (.I(led_4bits_tri_o_5),
        .IO(led_4bits_tri_io[5]),
        .O(led_4bits_tri_i_5),
        .T(led_4bits_tri_t_5));
  IOBUF led_4bits_tri_iobuf_6
       (.I(led_4bits_tri_o_6),
        .IO(led_4bits_tri_io[6]),
        .O(led_4bits_tri_i_6),
        .T(led_4bits_tri_t_6));
  IOBUF led_4bits_tri_iobuf_7
       (.I(led_4bits_tri_o_7),
        .IO(led_4bits_tri_io[7]),
        .O(led_4bits_tri_i_7),
        .T(led_4bits_tri_t_7));
  IOBUF led_4bits_tri_iobuf_8
       (.I(led_4bits_tri_o_8),
        .IO(led_4bits_tri_io[8]),
        .O(led_4bits_tri_i_8),
        .T(led_4bits_tri_t_8));
  IOBUF led_4bits_tri_iobuf_9
       (.I(led_4bits_tri_o_9),
        .IO(led_4bits_tri_io[9]),
        .O(led_4bits_tri_i_9),
        .T(led_4bits_tri_t_9));
  m3_for_arty_a7 m3_for_arty_a7_i
       (.DAPLink_tri_o(DAPLink_tri_o),
        .TDI(TDI),
        .TDO(TDO),
        .led_4bits_tri_i({led_4bits_tri_i_31,led_4bits_tri_i_30,led_4bits_tri_i_29,led_4bits_tri_i_28,led_4bits_tri_i_27,led_4bits_tri_i_26,led_4bits_tri_i_25,led_4bits_tri_i_24,led_4bits_tri_i_23,led_4bits_tri_i_22,led_4bits_tri_i_21,led_4bits_tri_i_20,led_4bits_tri_i_19,led_4bits_tri_i_18,led_4bits_tri_i_17,led_4bits_tri_i_16,led_4bits_tri_i_15,led_4bits_tri_i_14,led_4bits_tri_i_13,led_4bits_tri_i_12,led_4bits_tri_i_11,led_4bits_tri_i_10,led_4bits_tri_i_9,led_4bits_tri_i_8,led_4bits_tri_i_7,led_4bits_tri_i_6,led_4bits_tri_i_5,led_4bits_tri_i_4,led_4bits_tri_i_3,led_4bits_tri_i_2,led_4bits_tri_i_1,led_4bits_tri_i_0}),
        .led_4bits_tri_o({led_4bits_tri_o_31,led_4bits_tri_o_30,led_4bits_tri_o_29,led_4bits_tri_o_28,led_4bits_tri_o_27,led_4bits_tri_o_26,led_4bits_tri_o_25,led_4bits_tri_o_24,led_4bits_tri_o_23,led_4bits_tri_o_22,led_4bits_tri_o_21,led_4bits_tri_o_20,led_4bits_tri_o_19,led_4bits_tri_o_18,led_4bits_tri_o_17,led_4bits_tri_o_16,led_4bits_tri_o_15,led_4bits_tri_o_14,led_4bits_tri_o_13,led_4bits_tri_o_12,led_4bits_tri_o_11,led_4bits_tri_o_10,led_4bits_tri_o_9,led_4bits_tri_o_8,led_4bits_tri_o_7,led_4bits_tri_o_6,led_4bits_tri_o_5,led_4bits_tri_o_4,led_4bits_tri_o_3,led_4bits_tri_o_2,led_4bits_tri_o_1,led_4bits_tri_o_0}),
        .led_4bits_tri_t({led_4bits_tri_t_31,led_4bits_tri_t_30,led_4bits_tri_t_29,led_4bits_tri_t_28,led_4bits_tri_t_27,led_4bits_tri_t_26,led_4bits_tri_t_25,led_4bits_tri_t_24,led_4bits_tri_t_23,led_4bits_tri_t_22,led_4bits_tri_t_21,led_4bits_tri_t_20,led_4bits_tri_t_19,led_4bits_tri_t_18,led_4bits_tri_t_17,led_4bits_tri_t_16,led_4bits_tri_t_15,led_4bits_tri_t_14,led_4bits_tri_t_13,led_4bits_tri_t_12,led_4bits_tri_t_11,led_4bits_tri_t_10,led_4bits_tri_t_9,led_4bits_tri_t_8,led_4bits_tri_t_7,led_4bits_tri_t_6,led_4bits_tri_t_5,led_4bits_tri_t_4,led_4bits_tri_t_3,led_4bits_tri_t_2,led_4bits_tri_t_1,led_4bits_tri_t_0}),
        .nTRST(nTRST),
        .qspi_flash_io0_i(qspi_flash_io0_i),
        .qspi_flash_io0_o(qspi_flash_io0_o),
        .qspi_flash_io0_t(qspi_flash_io0_t),
        .qspi_flash_io1_i(qspi_flash_io1_i),
        .qspi_flash_io1_o(qspi_flash_io1_o),
        .qspi_flash_io1_t(qspi_flash_io1_t),
        .qspi_flash_ss_i(qspi_flash_ss_i_0),
        .qspi_flash_ss_o(qspi_flash_ss_o_0),
        .qspi_flash_ss_t(qspi_flash_ss_t),
        .reset(reset),
        .rgb_led_tri_i({rgb_led_tri_i_31,rgb_led_tri_i_30,rgb_led_tri_i_29,rgb_led_tri_i_28,rgb_led_tri_i_27,rgb_led_tri_i_26,rgb_led_tri_i_25,rgb_led_tri_i_24,rgb_led_tri_i_23,rgb_led_tri_i_22,rgb_led_tri_i_21,rgb_led_tri_i_20,rgb_led_tri_i_19,rgb_led_tri_i_18,rgb_led_tri_i_17,rgb_led_tri_i_16,rgb_led_tri_i_15,rgb_led_tri_i_14,rgb_led_tri_i_13,rgb_led_tri_i_12,rgb_led_tri_i_11,rgb_led_tri_i_10,rgb_led_tri_i_9,rgb_led_tri_i_8,rgb_led_tri_i_7,rgb_led_tri_i_6,rgb_led_tri_i_5,rgb_led_tri_i_4,rgb_led_tri_i_3,rgb_led_tri_i_2,rgb_led_tri_i_1,rgb_led_tri_i_0}),
        .rgb_led_tri_o({rgb_led_tri_o_31,rgb_led_tri_o_30,rgb_led_tri_o_29,rgb_led_tri_o_28,rgb_led_tri_o_27,rgb_led_tri_o_26,rgb_led_tri_o_25,rgb_led_tri_o_24,rgb_led_tri_o_23,rgb_led_tri_o_22,rgb_led_tri_o_21,rgb_led_tri_o_20,rgb_led_tri_o_19,rgb_led_tri_o_18,rgb_led_tri_o_17,rgb_led_tri_o_16,rgb_led_tri_o_15,rgb_led_tri_o_14,rgb_led_tri_o_13,rgb_led_tri_o_12,rgb_led_tri_o_11,rgb_led_tri_o_10,rgb_led_tri_o_9,rgb_led_tri_o_8,rgb_led_tri_o_7,rgb_led_tri_o_6,rgb_led_tri_o_5,rgb_led_tri_o_4,rgb_led_tri_o_3,rgb_led_tri_o_2,rgb_led_tri_o_1,rgb_led_tri_o_0}),
        .rgb_led_tri_t({rgb_led_tri_t_31,rgb_led_tri_t_30,rgb_led_tri_t_29,rgb_led_tri_t_28,rgb_led_tri_t_27,rgb_led_tri_t_26,rgb_led_tri_t_25,rgb_led_tri_t_24,rgb_led_tri_t_23,rgb_led_tri_t_22,rgb_led_tri_t_21,rgb_led_tri_t_20,rgb_led_tri_t_19,rgb_led_tri_t_18,rgb_led_tri_t_17,rgb_led_tri_t_16,rgb_led_tri_t_15,rgb_led_tri_t_14,rgb_led_tri_t_13,rgb_led_tri_t_12,rgb_led_tri_t_11,rgb_led_tri_t_10,rgb_led_tri_t_9,rgb_led_tri_t_8,rgb_led_tri_t_7,rgb_led_tri_t_6,rgb_led_tri_t_5,rgb_led_tri_t_4,rgb_led_tri_t_3,rgb_led_tri_t_2,rgb_led_tri_t_1,rgb_led_tri_t_0}),
        .sys_clock(sys_clock),
        .usb_uart_rxd(usb_uart_rxd),
        .usb_uart_txd(usb_uart_txd));
  IOBUF qspi_flash_io0_iobuf
       (.I(qspi_flash_io0_o),
        .IO(qspi_flash_io0_io),
        .O(qspi_flash_io0_i),
        .T(qspi_flash_io0_t));
  IOBUF qspi_flash_io1_iobuf
       (.I(qspi_flash_io1_o),
        .IO(qspi_flash_io1_io),
        .O(qspi_flash_io1_i),
        .T(qspi_flash_io1_t));
  IOBUF qspi_flash_ss_iobuf_0
       (.I(qspi_flash_ss_o_0),
        .IO(qspi_flash_ss_io[0]),
        .O(qspi_flash_ss_i_0),
        .T(qspi_flash_ss_t));
  IOBUF rgb_led_tri_iobuf_0
       (.I(rgb_led_tri_o_0),
        .IO(rgb_led_tri_io[0]),
        .O(rgb_led_tri_i_0),
        .T(rgb_led_tri_t_0));
  IOBUF rgb_led_tri_iobuf_1
       (.I(rgb_led_tri_o_1),
        .IO(rgb_led_tri_io[1]),
        .O(rgb_led_tri_i_1),
        .T(rgb_led_tri_t_1));
  IOBUF rgb_led_tri_iobuf_10
       (.I(rgb_led_tri_o_10),
        .IO(rgb_led_tri_io[10]),
        .O(rgb_led_tri_i_10),
        .T(rgb_led_tri_t_10));
  IOBUF rgb_led_tri_iobuf_11
       (.I(rgb_led_tri_o_11),
        .IO(rgb_led_tri_io[11]),
        .O(rgb_led_tri_i_11),
        .T(rgb_led_tri_t_11));
  IOBUF rgb_led_tri_iobuf_12
       (.I(rgb_led_tri_o_12),
        .IO(rgb_led_tri_io[12]),
        .O(rgb_led_tri_i_12),
        .T(rgb_led_tri_t_12));
  IOBUF rgb_led_tri_iobuf_13
       (.I(rgb_led_tri_o_13),
        .IO(rgb_led_tri_io[13]),
        .O(rgb_led_tri_i_13),
        .T(rgb_led_tri_t_13));
  IOBUF rgb_led_tri_iobuf_14
       (.I(rgb_led_tri_o_14),
        .IO(rgb_led_tri_io[14]),
        .O(rgb_led_tri_i_14),
        .T(rgb_led_tri_t_14));
  IOBUF rgb_led_tri_iobuf_15
       (.I(rgb_led_tri_o_15),
        .IO(rgb_led_tri_io[15]),
        .O(rgb_led_tri_i_15),
        .T(rgb_led_tri_t_15));
  IOBUF rgb_led_tri_iobuf_16
       (.I(rgb_led_tri_o_16),
        .IO(rgb_led_tri_io[16]),
        .O(rgb_led_tri_i_16),
        .T(rgb_led_tri_t_16));
  IOBUF rgb_led_tri_iobuf_17
       (.I(rgb_led_tri_o_17),
        .IO(rgb_led_tri_io[17]),
        .O(rgb_led_tri_i_17),
        .T(rgb_led_tri_t_17));
  IOBUF rgb_led_tri_iobuf_18
       (.I(rgb_led_tri_o_18),
        .IO(rgb_led_tri_io[18]),
        .O(rgb_led_tri_i_18),
        .T(rgb_led_tri_t_18));
  IOBUF rgb_led_tri_iobuf_19
       (.I(rgb_led_tri_o_19),
        .IO(rgb_led_tri_io[19]),
        .O(rgb_led_tri_i_19),
        .T(rgb_led_tri_t_19));
  IOBUF rgb_led_tri_iobuf_2
       (.I(rgb_led_tri_o_2),
        .IO(rgb_led_tri_io[2]),
        .O(rgb_led_tri_i_2),
        .T(rgb_led_tri_t_2));
  IOBUF rgb_led_tri_iobuf_20
       (.I(rgb_led_tri_o_20),
        .IO(rgb_led_tri_io[20]),
        .O(rgb_led_tri_i_20),
        .T(rgb_led_tri_t_20));
  IOBUF rgb_led_tri_iobuf_21
       (.I(rgb_led_tri_o_21),
        .IO(rgb_led_tri_io[21]),
        .O(rgb_led_tri_i_21),
        .T(rgb_led_tri_t_21));
  IOBUF rgb_led_tri_iobuf_22
       (.I(rgb_led_tri_o_22),
        .IO(rgb_led_tri_io[22]),
        .O(rgb_led_tri_i_22),
        .T(rgb_led_tri_t_22));
  IOBUF rgb_led_tri_iobuf_23
       (.I(rgb_led_tri_o_23),
        .IO(rgb_led_tri_io[23]),
        .O(rgb_led_tri_i_23),
        .T(rgb_led_tri_t_23));
  IOBUF rgb_led_tri_iobuf_24
       (.I(rgb_led_tri_o_24),
        .IO(rgb_led_tri_io[24]),
        .O(rgb_led_tri_i_24),
        .T(rgb_led_tri_t_24));
  IOBUF rgb_led_tri_iobuf_25
       (.I(rgb_led_tri_o_25),
        .IO(rgb_led_tri_io[25]),
        .O(rgb_led_tri_i_25),
        .T(rgb_led_tri_t_25));
  IOBUF rgb_led_tri_iobuf_26
       (.I(rgb_led_tri_o_26),
        .IO(rgb_led_tri_io[26]),
        .O(rgb_led_tri_i_26),
        .T(rgb_led_tri_t_26));
  IOBUF rgb_led_tri_iobuf_27
       (.I(rgb_led_tri_o_27),
        .IO(rgb_led_tri_io[27]),
        .O(rgb_led_tri_i_27),
        .T(rgb_led_tri_t_27));
  IOBUF rgb_led_tri_iobuf_28
       (.I(rgb_led_tri_o_28),
        .IO(rgb_led_tri_io[28]),
        .O(rgb_led_tri_i_28),
        .T(rgb_led_tri_t_28));
  IOBUF rgb_led_tri_iobuf_29
       (.I(rgb_led_tri_o_29),
        .IO(rgb_led_tri_io[29]),
        .O(rgb_led_tri_i_29),
        .T(rgb_led_tri_t_29));
  IOBUF rgb_led_tri_iobuf_3
       (.I(rgb_led_tri_o_3),
        .IO(rgb_led_tri_io[3]),
        .O(rgb_led_tri_i_3),
        .T(rgb_led_tri_t_3));
  IOBUF rgb_led_tri_iobuf_30
       (.I(rgb_led_tri_o_30),
        .IO(rgb_led_tri_io[30]),
        .O(rgb_led_tri_i_30),
        .T(rgb_led_tri_t_30));
  IOBUF rgb_led_tri_iobuf_31
       (.I(rgb_led_tri_o_31),
        .IO(rgb_led_tri_io[31]),
        .O(rgb_led_tri_i_31),
        .T(rgb_led_tri_t_31));
  IOBUF rgb_led_tri_iobuf_4
       (.I(rgb_led_tri_o_4),
        .IO(rgb_led_tri_io[4]),
        .O(rgb_led_tri_i_4),
        .T(rgb_led_tri_t_4));
  IOBUF rgb_led_tri_iobuf_5
       (.I(rgb_led_tri_o_5),
        .IO(rgb_led_tri_io[5]),
        .O(rgb_led_tri_i_5),
        .T(rgb_led_tri_t_5));
  IOBUF rgb_led_tri_iobuf_6
       (.I(rgb_led_tri_o_6),
        .IO(rgb_led_tri_io[6]),
        .O(rgb_led_tri_i_6),
        .T(rgb_led_tri_t_6));
  IOBUF rgb_led_tri_iobuf_7
       (.I(rgb_led_tri_o_7),
        .IO(rgb_led_tri_io[7]),
        .O(rgb_led_tri_i_7),
        .T(rgb_led_tri_t_7));
  IOBUF rgb_led_tri_iobuf_8
       (.I(rgb_led_tri_o_8),
        .IO(rgb_led_tri_io[8]),
        .O(rgb_led_tri_i_8),
        .T(rgb_led_tri_t_8));
  IOBUF rgb_led_tri_iobuf_9
       (.I(rgb_led_tri_o_9),
        .IO(rgb_led_tri_io[9]),
        .O(rgb_led_tri_i_9),
        .T(rgb_led_tri_t_9));
endmodule
