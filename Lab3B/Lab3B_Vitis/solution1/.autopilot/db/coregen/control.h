// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of dir_DRAM
//        bit 31~0 - dir_DRAM[31:0] (Read/Write)
// 0x14 : Data signal of dir_DRAM
//        bit 31~0 - dir_DRAM[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of P1_DRAM_offset
//        bit 31~0 - P1_DRAM_offset[31:0] (Read/Write)
// 0x20 : Data signal of P1_DRAM_offset
//        bit 31~0 - P1_DRAM_offset[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of P2_DRAM_offset
//        bit 31~0 - P2_DRAM_offset[31:0] (Read/Write)
// 0x2c : Data signal of P2_DRAM_offset
//        bit 31~0 - P2_DRAM_offset[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of P3_DRAM_offset
//        bit 31~0 - P3_DRAM_offset[31:0] (Read/Write)
// 0x38 : Data signal of P3_DRAM_offset
//        bit 31~0 - P3_DRAM_offset[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of intersectIndex_offset
//        bit 31~0 - intersectIndex_offset[31:0] (Read/Write)
// 0x44 : Data signal of intersectIndex_offset
//        bit 31~0 - intersectIndex_offset[63:32] (Read/Write)
// 0x48 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                    0x00
#define CONTROL_ADDR_GIE                        0x04
#define CONTROL_ADDR_IER                        0x08
#define CONTROL_ADDR_ISR                        0x0c
#define CONTROL_ADDR_DIR_DRAM_DATA              0x10
#define CONTROL_BITS_DIR_DRAM_DATA              64
#define CONTROL_ADDR_P1_DRAM_OFFSET_DATA        0x1c
#define CONTROL_BITS_P1_DRAM_OFFSET_DATA        64
#define CONTROL_ADDR_P2_DRAM_OFFSET_DATA        0x28
#define CONTROL_BITS_P2_DRAM_OFFSET_DATA        64
#define CONTROL_ADDR_P3_DRAM_OFFSET_DATA        0x34
#define CONTROL_BITS_P3_DRAM_OFFSET_DATA        64
#define CONTROL_ADDR_INTERSECTINDEX_OFFSET_DATA 0x40
#define CONTROL_BITS_INTERSECTINDEX_OFFSET_DATA 64
