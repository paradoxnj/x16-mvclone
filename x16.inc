#importonce

.namespace CX16 {

	.label SD_DEVICE   = 1
	.label HOST_DEVICE = 8
	.label DISK_DEVICE = HOST_DEVICE


	// RAM Addresses

	// Kernal Registers
	.label r0			= $02
	.label r0L					= r0
	.label r0H					= r0+1
	.label r1						= $04
	.label r1L					= r1
	.label r1H					= r1+1
	.label r2						= $06
	.label r2L					= r2
	.label r2H					= r2+1
	.label r3						= $08
	.label r3L					= r3
	.label r3H					= r3+1
	.label r4						= $0A
	.label r4L					= r4
	.label r4H					= r4+1
	.label r5						= $0C
	.label r5L					= r5
	.label r5H					= r5+1
	.label r6						= $0E
	.label r6L					= r6
	.label r6H					= r6+1
	.label r7						= $10
	.label r7L					= r7
	.label r7H					= r7+1
	.label r8						= $12
	.label r8L					= r8
	.label r8H					= r8+1
	.label r9						= $14
	.label r9L					= r9
	.label r9H					= r9+1
	.label r10					= $16
	.label r10L					= r10
	.label r10H					= r10+1
	.label r11					= $18
	.label r11L					= r11
	.label r11H					= r11+1
	.label r12					= $1A
	.label r12L					= r12
	.label r12H					= r12+1
	.label r13					= $1C
	.label r13L					= r13
	.label r13H					= r13+1
	.label r14					= $1E
	.label r14L					= r14
	.label r14H					= r14+1
	.label r15					= $20
	.label r15L					= r15
	.label r15H					= r15+1

	// Zero-Page userspace
	.label ZP_PTR_1          = $00	// first four pointers for temporary use only
	.label ZP_PTR_2          = $22
	.label ZP_PTR_3          = $24
	.label ZP_PTR_4          = $26

	// I/O Registers
	.label VERA_addr_low     = $9F20
	.label VERA_addr_high    = $9F21
	.label VERA_addr_bank    = $9F22
	.label VERA_data0        = $9F23
	.label VERA_data1        = $9F24
	.label VERA_ctrl         = $9F25
	.label VERA_ien          = $9F26
	.label VERA_isr          = $9F27
	.label VERA_irqline_l    = $9F28
	.label VERA_dc_video     = $9F29
	.label VERA_dc_hscale    = $9F2A
	.label VERA_dc_vscale    = $9F2B
	.label VERA_dc_border    = $9F2C
	.label VERA_dc_hstart    = $9F29
	.label VERA_dc_hstop     = $9F2A
	.label VERA_dc_vsstart   = $9F2B
	.label VERA_dc_vstop     = $9F2C
	.label VERA_L0_config    = $9F2D
	.label VERA_L0_mapbase   = $9F2E
	.label VERA_L0_tilebase  = $9F2F
	.label VERA_L0_hscroll_l = $9F30
	.label VERA_L0_hscroll_h = $9F31
	.label VERA_L0_vscroll_l = $9F32
	.label VERA_L0_vscroll_h = $9F33
	.label VERA_L1_config    = $9F34
	.label VERA_L1_mapbase   = $9F35
	.label VERA_L1_tilebase  = $9F36
	.label VERA_L1_hscroll_l = $9F37
	.label VERA_L1_hscroll_h = $9F38
	.label VERA_L1_vscroll_l = $9F39
	.label VERA_L1_vscroll_h = $9F3A
	.label VERA_audio_ctrl   = $9F3B
	.label VERA_audio_rate   = $9F3C
	.label VERA_audio_data   = $9F3D
	.label VERA_spi_data     = $9F3E
	.label VERA_spi_ctrl     = $9F3F


	.label ROM_BANK          = $9F60
	.label RAM_BANK          = $9F61

	.label YM_reg            = $9FE0
	.label YM_data           = $9FE1

	// Emulator Registers
	.label GIF_ctrl          = $9FB5

	// ROM Banks
	.label KERNAL_ROM_BANK   = 0
	.label BASIC_ROM_BANK    = 4

	// Banked Addresses
	.label RAM_WIN           = $A000
	.label RAM_WIN_SIZE      = $2000
	.label ROM_WIN           = $C000

	// Kernal Subroutines
	.label MEMORY_FILL                   = $FEE4
	.label MEMORY_COPY                   = $FEE7
	.label MEMORY_CRC                    = $FEEA
	.label MEMORY_DECOMPRESS             = $FEED
	.label GRAPH_LL_init                 = $FEF6
	.label GRAPH_LL_get_info             = $FEF9
	.label GRAPH_LL_set_palette          = $FEFC
	.label GRAPH_LL_cursor_position      = $FEFF
	.label GRAPH_LL_cursor_next_line     = $FF02
	.label GRAPH_LL_get_pixel            = $FF05
	.label GRAPH_LL_get_pixels           = $FF08
	.label GRAPH_LL_set_pixel            = $FF0B
	.label GRAPH_LL_set_pixels           = $FF0E
	.label GRAPH_LL_set_8_pixels         = $FF11
	.label GRAPH_LL_set_8_pixels_opaque  = $FF14
	.label GRAPH_LL_fill_pixels          = $FF17
	.label GRAPH_LL_filter_pixels        = $FF1A
	.label GRAPH_LL_move_pixels          = $FF1D
	.label CLOCK_SET_DATE_TIME           = $FF4D
	.label CLOCK_GET_DATE_TIME           = $FF50
	.label JOYSTICK_SCAN                 = $FF53
	.label JOYSTICK_GET                  = $FF56
	.label MOUSE_CONFIG                  = $FF68
	.label MOUSE_GET			            = $FF6B
	.label MOUSE_SCAN                    = $FF71
	.label SCINIT                        = $FF81
	.label IOINIT                        = $FF84
	.label RAMTAS                        = $FF87
	.label RESTOR                        = $FF8A
	.label SETLFS                        = $FFBA
	.label SETNAM                        = $FFBD
	.label OPEN                          = $FFC0
	.label CLOSE                         = $FFC3
	.label CHKIN                         = $FFC6
	.label CHKOUT                        = $FFC9
	.label CLRCHN                        = $FFCC
	.label CHRIN                         = $FFCF
	.label CHROUT                        = $FFD2
	.label LOAD                          = $FFD5
	.label SAVE                          = $FFD8
	.label SETTIM                        = $FFDB
	.label RDTIM                         = $FFDE
	.label STOP                          = $FFE1
	.label GETIN                         = $FFE4

	// BASIC Vectors
	.label BASIC_PANIC       = $C000
	.label BASIC_INIT        = $C003


	// VRAM Addresses
	.label VRAM_petscii   = $0F800
	.label VRAM_psg       = $1F9C0
	.label VRAM_palette   = $1FA00
	.label VRAM_sprattr   = $1FC00

	// IRQs
	.label IRQVec         = $0314
	.label BRKVec         = $0316
	.label NMIVec         = $0318

}

//   Macros

.macro VERA_SET_ADDR(addr, stride) {
    lda #((stride << 4) | (addr >> 16))
	sta CX16.VERA_addr_bank
	lda #>(addr & $FFFF)
	sta CX16.VERA_addr_high
	lda #<(addr & $FFFF)
	sta CX16.VERA_addr_low
}

.macro loadVRAM(filename, filenameLength, address) {
        lda #filenameLength
        ldx #<filename
        ldy #>filename
        jsr CX16.SETNAM

        lda #1
        ldx #CX16.HOST_DEVICE
        ldy #0
        jsr CX16.SETLFS

        ldx #<(address & $FFFF)
        ldy #>(address & $FFFF)
        lda #(((address >> 16) & $F) + 2)
		clc
        jsr CX16.LOAD
}
