`timescale 1 ns / 1 ns
//////////////////////////////////////////////////////////////////////////////////
// Company: Rehkopf
// Engineer: Rehkopf
//
// Create Date:    01:13:46 05/09/2009
// Design Name:
// Module Name:    address
// Project Name:
// Target Devices:
// Tool versions:
// Description: Address logic w/ SaveRAM masking
//
// Dependencies:
//
// Revision:
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module address(
  input CLK,
  input [7:0] featurebits,  // peripheral enable/disable
  input [2:0] MAPPER,       // MCU detected mapper
  input [23:0] SNES_ADDR,   // requested address from SNES
  input [7:0] SNES_PA,      // peripheral address from SNES
  input SNES_ROMSEL,        // ROMSEL from SNES
  output [23:0] ROM_ADDR,   // Address to request from SRAM0
  output ROM_HIT,           // enable SRAM0
  output IS_SAVERAM,        // address/CS mapped as SRAM?
  output IS_ROM,            // address mapped as ROM?
  output IS_WRITABLE,       // address somehow mapped as writable area?
  input [23:0] SAVERAM_MASK,
  input [23:0] ROM_MASK,
  output msu_enable,
  input [4:0] sa1_bmaps_sbm,
//  output srtc_enable,
//  output use_bsx,
//  output bsx_tristate,
//  input [14:0] bsx_regs,
//  output dspx_enable,
//  output dspx_dp_enable,
//  output dspx_a0,
  output r213f_enable,
  output snescmd_enable,
  output nmicmd_enable,
  output return_vector_enable,
  output branch1_enable,
  output branch2_enable,
  output sa1_enable
);

parameter [2:0]
  //FEAT_DSPX = 0,
  //FEAT_ST0010 = 1,
  //FEAT_SRTC = 2,
  FEAT_MSU1 = 3,
  FEAT_213F = 4
;

wire [23:0] SRAM_SNES_ADDR;


assign IS_ROM = ( (~SNES_ADDR[22] & SNES_ADDR[15])
                | (&SNES_ADDR[23:22]))
                ;

assign IS_SAVERAM = SAVERAM_MASK[0]
                    & ( // 40-4F:0000-FFFF
                        ( ~SNES_ADDR[23]
                        &  SNES_ADDR[22]
                        & ~SNES_ADDR[21]
                        & ~SNES_ADDR[20]
                        )
                        // 00-3F/80-BF:6000-7FFF
                      | ( ~SNES_ADDR[22]
                        & ~SNES_ADDR[15]
                        & &SNES_ADDR[14:13]
                        )
                      );

assign IS_WRITABLE = IS_SAVERAM;

// TODO: add programmable address map
assign SRAM_SNES_ADDR = (IS_SAVERAM
                         // 40-4F:0000-FFFF or 00-3F/80-BF:6000-7FFF (first 8K mirror).  Mask handles mirroring.  60 is sa1-only
                         ? (24'hE00000 + ((SNES_ADDR[22] ? SNES_ADDR[19:0] : {sa1_bmaps_sbm,SNES_ADDR[12:0]}) & SAVERAM_MASK))
                         // C0-FF:0000-FFFF or 00-3F/80-BF:8000-FFFF
                         : ((SNES_ADDR[22] ? {2'b00, SNES_ADDR[21:0]} : {3'b000, SNES_ADDR[21:16], SNES_ADDR[14:0]}) & ROM_MASK)
                         );

assign ROM_ADDR = SRAM_SNES_ADDR;

assign ROM_HIT = IS_ROM | IS_WRITABLE;

assign msu_enable = featurebits[FEAT_MSU1] & (!SNES_ADDR[22] && ((SNES_ADDR[15:0] & 16'hfff8) == 16'h2000));
assign r213f_enable = featurebits[FEAT_213F] & (SNES_PA == 8'h3f);
assign snescmd_enable = ({SNES_ADDR[22], SNES_ADDR[15:9]} == 8'b0_0010101);
assign nmicmd_enable = (SNES_ADDR == 24'h002BF2);
assign return_vector_enable = (SNES_ADDR == 24'h002A5A);
assign branch1_enable = (SNES_ADDR == 24'h002A13);
assign branch2_enable = (SNES_ADDR == 24'h002A4D);
// 00-3F/80-BF:2200-23FF sa1 registers. 00-3F/80-BF:3000-37FF iram.
assign sa1_enable = !SNES_ADDR[22] && ({SNES_ADDR[15:9],1'h0} == 8'h22 || {SNES_ADDR[15:11],3'h0} == 8'h30);

endmodule
