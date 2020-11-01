/*********************************************************************
; Project:          Metroid Clone for Commander X16
; File:             x16-mvclone.asm
; Author:           Anthony Rufrano (paradoxnj)
; Description:      Main entry point
**********************************************************************/
.cpu _65c02

BasicUpstart2(mvclone_main)

#import "x16.inc"

.const VRAM_LOADMAP = $06000
.const VRAM_TILEMAP = $10000
.const VRAM_TILES   = $00000

*=* "Program"

mvclone_main: {
        stz CX16.VERA_ctrl

        loadVRAM(bmp_pal, bmp_pal_end-bmp_pal, CX16.VRAM_palette)
        loadVRAM(bmp_file, bmp_file_end-bmp_file, VRAM_TILES)

        lda #%00010001
        sta CX16.VERA_dc_video

        lda #64
        sta CX16.VERA_dc_hscale
        sta CX16.VERA_dc_vscale

        lda #%00000111
        sta CX16.VERA_L0_config

        stz CX16.VERA_L0_mapbase
        stz CX16.VERA_L0_tilebase
        stz CX16.VERA_L0_hscroll_l
        stz CX16.VERA_L0_hscroll_h
        stz CX16.VERA_L0_vscroll_l
        stz CX16.VERA_L0_vscroll_h

        jmp *
        rts
}

bmp_file:       
    .text "FF1TS1.X16"
bmp_file_end:

bmp_pal:
    .text "FF1TS1-X16.PAL"
bmp_pal_end:
