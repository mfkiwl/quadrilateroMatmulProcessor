// Copyright 2024 EPFL
// Solderpad Hardware License, Version 2.1, see LICENSE.md for details.
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
//
// Author: Saverio Nasturzio

// # *** RV Matrix Extension ***
// # Symbols are contained within arg_lut.csv!

// # These should be integers but we'll have them FP

// # Arithmetic
// fmmacc_s          31..27=0b00001 26..25=0x0 24=0x0 ms2 ms1 md 14..12=0x0 11..7=0b10000 6..0=0b0101011
// mzero             31..27=0b11111 26..18=0x0 md 14..12=0x0 11..7=0b00000 6..0=0b0101011

// # Load/store
// mld_w             31..27=0b00000 26..25=0b10 rs2 rs1 14..12=0x0 11..10=0b10 md_ 6..0=0b101011 
// mst_w             31..27=0b00001 26..25=0b10 rs2 rs1 14..12=0x0 11..10=0b10 ms3 6..0=0b101011 

// # Config
// mcfg              31..27=0b11111 26..25=0b11 24..20=0b00000 rs1 14..12=0b000 rd 6..0=0b0101011 


package quadrilatero_instr_pkg;

  localparam [31:0] FMMACC_D           = 32'b00010000?????????000110000101011;
  localparam [31:0] FMMACC_H           = 32'b00010000?????????000010000101011;
  localparam [31:0] FMMACC_S           = 32'b00001000?????????000100000101011;
  localparam [31:0] MMAQA_B            = 32'b00010000?????????000000000101011;
  localparam [31:0] MMADA_H            = 32'b11100000?????????000010000101011;
  localparam [31:0] MMASA_W            = 32'b11110000?????????000100000101011;
  
  //localparam [31:0] MADD_D_MV_I        = 32'b00110100?????????00011???0101011;
  //localparam [31:0] MADD_D_MV_X        = 32'b00110010?????????00011???0101011;
  //localparam [31:0] MADD_D_MX          = 32'b00110110???000???00011???0101011;
  //localparam [31:0] MADD_S_MM          = 32'b00110000?????????000100000101011;
  //localparam [31:0] MADD_S_MV_I        = 32'b00110100?????????00010???0101011;
  //localparam [31:0] MADD_S_MV_X        = 32'b00110010?????????00010???0101011;
  //localparam [31:0] MADD_S_MX          = 32'b00110110???000???00010???0101011;
  //localparam [31:0] MCFG               = 32'b111111100000?????000?????0101011;
  //localparam [31:0] MCFGK              = 32'b100011100000?????000?????0101011;
  //localparam [31:0] MCFGKI             = 32'b0000111???????000000?????0101011;
  //localparam [31:0] MCFGM              = 32'b100111100000?????000?????0101011;
  //localparam [31:0] MCFGMI             = 32'b0001111???????000000?????0101011;
  //localparam [31:0] MCFGN              = 32'b101011100000?????000?????0101011;
  //localparam [31:0] MCFGNI             = 32'b0010111???????000000?????0101011;

  localparam [31:0] MLD_B              = 32'b0000100??????????00000???0101011;
  //localparam [31:0] MLD_D              = 32'b0000100??????????00011???0101011;
  localparam [31:0] MLD_H              = 32'b0000100??????????00001???0101011;
  localparam [31:0] MLD_W              = 32'b0000000??????????00010???0101011;
  //localparam [31:0] MMOV_MM            = 32'b00000000000??????000000010101011;
  //localparam [31:0] MMOV_MV_I          = 32'b00000100000??????00000???0101011;
  //localparam [31:0] MMOV_MV_X          = 32'b00000010000??????00000???0101011;
  //localparam [31:0] MMUL_D_MV_I        = 32'b10000100?????????00011???0101011;
  //localparam [31:0] MMUL_D_MV_X        = 32'b10000010?????????00011???0101011;
  //localparam [31:0] MMUL_D_MX          = 32'b10000110???000???00011???0101011;
  //localparam [31:0] MMUL_S_MM          = 32'b10000000?????????000100000101011;
  //localparam [31:0] MMUL_S_MV_I        = 32'b10000100?????????00010???0101011;
  //localparam [31:0] MMUL_S_MV_X        = 32'b10000010?????????00010???0101011;
  //localparam [31:0] MMUL_S_MX          = 32'b10000110???000???00010???0101011;

  localparam [31:0] MST_B              = 32'b0000101??????????00000???0101011;
  //localparam [31:0] MST_D              = 32'b0000101??????????00011???0101011;
  localparam [31:0] MST_H              = 32'b0000101??????????00001???0101011;
  localparam [31:0] MST_W              = 32'b0000110??????????00010???0101011;
  //localparam [31:0] MSUB_D_MV_I        = 32'b01000100?????????00011???0101011;
  //localparam [31:0] MSUB_D_MV_X        = 32'b01000010?????????00011???0101011;
  //localparam [31:0] MSUB_D_MX          = 32'b01000110???000???00011???0101011;
  //localparam [31:0] MSUB_S_MM          = 32'b01000000?????????000100000101011;
  //localparam [31:0] MSUB_S_MV_I        = 32'b01000100?????????00010???0101011;
  //localparam [31:0] MSUB_S_MV_X        = 32'b01000010?????????00010???0101011;
  //localparam [31:0] MSUB_S_MX          = 32'b01000110???000???00010???0101011;
  localparam [31:0] MZERO              = 32'b11111000000000???000000000101011;






//-------------------------------------------------------------------------------------------------
/*
  // Doubles as int32
  localparam [31:0] FMMACC_MASK = 32'b11111111000000000111111111111111;
  localparam [31:0] FMMACC_D = 32'b00010000?????????000110000101011;
  // Doubles as int8
  localparam [31:0] FMMACC_H = 32'b00010000?????????000010000101011;
  // Doubles as int16
  localparam [31:0] FMMACC_S = 32'b00010000?????????000100000101011;
  //localparam [31:0] MADD_D_MV_I        = 32'b00110100?????????00011???0101011;
  //localparam [31:0] MADD_D_MV_X        = 32'b00110010?????????00011???0101011;
  //localparam [31:0] MADD_D_MX          = 32'b00110110???000???00011???0101011;
  //localparam [31:0] MADD_S_MM          = 32'b00110000?????????000100000101011;
  //localparam [31:0] MADD_S_MV_I        = 32'b00110100?????????00010???0101011;
  //localparam [31:0] MADD_S_MV_X        = 32'b00110010?????????00010???0101011;
  //localparam [31:0] MADD_S_MX          = 32'b00110110???000???00010???0101011;
  localparam [31:0] MCFGX_MASK = 32'b11111111111100000111000001111111;
  localparam [31:0] MCFGXI_MASK = 32'b11111110000000111111000001111111;
  //localparam [31:0] MCFG               = 32'b111111100000?????000?????0101011;
  //localparam [31:0] MCFGK              = 32'b100011100000?????000?????0101011;
  //localparam [31:0] MCFGKI             = 32'b0000111???????000000?????0101011;
  //localparam [31:0] MCFGM              = 32'b100111100000?????000?????0101011;
  ////localparam [31:0] MCFGMI             = 32'b0001111???????000000?????0101011;
  //localparam [31:0] MCFGN              = 32'b101011100000?????000?????0101011;
  //localparam [31:0] MCFGNI             = 32'b0010111???????000000?????0101011;

  localparam [31:0] MLD_MASK = 32'b11111110000000000111110001111111;
  localparam [31:0] MLD_B = 32'b0000100??????????00000???0101011;
  //localparam [31:0] MLD_D              = 32'b0000100??????????00011???0101011;
  localparam [31:0] MLD_H = 32'b0000100??????????00001???0101011;
  localparam [31:0] MLD_W = 32'b0000100??????????00010???0101011;
  //localparam [31:0] MMOV_MM            = 32'b00000000000??????000000010101011;
  //localparam [31:0] MMOV_MV_I          = 32'b00000100000??????00000???0101011;
  //localparam [31:0] MMOV_MV_X          = 32'b00000010000??????00000???0101011;
  //localparam [31:0] MMUL_D_MV_I        = 32'b10000100?????????00011???0101011;
  ////localparam [31:0] MMUL_D_MV_X        = 32'b10000010?????????00011???0101011;
  //localparam [31:0] MMUL_D_MX          = 32'b10000110???000???00011???0101011;
  //localparam [31:0] MMUL_S_MM          = 32'b10000000?????????000100000101011;
  //localparam [31:0] MMUL_S_MV_I        = 32'b10000100?????????00010???0101011;
  //localparam [31:0] MMUL_S_MV_X        = 32'b10000010?????????00010???0101011;
  //localparam [31:0] MMUL_S_MX          = 32'b10000110???000???00010???0101011;

  localparam [31:0] MST_MASK = 32'b11111110000000000111110001111111;
  localparam [31:0] MST_B = 32'b0000101??????????00000???0101011;
  //localparam [31:0] MST_D              = 32'b0000101??????????00011???0101011;
  localparam [31:0] MST_H = 32'b0000101??????????00001???0101011;
  localparam [31:0] MST_W = 32'b0000101??????????00010???0101011;
  //localparam [31:0] MSUB_D_MV_I        = 32'b01000100?????????00011???0101011;
  //localparam [31:0] MSUB_D_MV_X        = 32'b01000010?????????00011???0101011;
  //localparam [31:0] MSUB_D_MX          = 32'b01000110???000???00011???0101011;
  //localparam [31:0] MSUB_S_MM          = 32'b01000000?????????000100000101011;
  //localparam [31:0] MSUB_S_MV_I        = 32'b01000100?????????00010???0101011;
  //localparam [31:0] MSUB_S_MV_X        = 32'b01000010?????????00010???0101011;
  //localparam [31:0] MSUB_S_MX          = 32'b01000110???000???00010???0101011;
  localparam [31:0] MZERO = 32'b11111000000000???000000000101011;
  localparam [31:0] MZERO_MASK = 32'b11111111111111000111111111111111;
*/
//-------------------------------------------------------------------------------------------------
endpackage
