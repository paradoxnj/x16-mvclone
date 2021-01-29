/*********************************************************************
; Project:          Metroid Clone for Commander X16
; File:             x16-mvclone.asm
; Author:           Anthony Rufrano (paradoxnj)
; Description:      Main entry point
**********************************************************************/
.cpu _65c02

BasicUpstart2(mvclone_main)

#import "x16.inc"

.const VRAM_L0MAP   = $06000
.const VRAM_TILEMAP = $10000
.const VRAM_TILES   = $00000
.const VRAM_L1MAP   = $16000

*=* "Program"

mvclone_main: {
        stz CX16.VERA_ctrl

        loadVRAM(bmp_pal, bmp_pal_end-bmp_pal, CX16.VRAM_palette)
        loadVRAM(bmp_file, bmp_file_end-bmp_file, VRAM_TILES)

        loadVRAM(l0_map_file, l0_map_file_end-l0_map_file, VRAM_L0MAP)
        loadVRAM(l1_map_file, l1_map_file_end-l1_map_file, VRAM_L1MAP)

        lda #%00110001
        sta CX16.VERA_dc_video

        lda #64
        sta CX16.VERA_dc_hscale
        sta CX16.VERA_dc_vscale

        lda #%01010011
        sta CX16.VERA_L0_config

        lda #((VRAM_L0MAP >> 9) & $FF)
        sta CX16.VERA_L0_mapbase

        lda #((((VRAM_TILES >> 11) & $3F) << 2) | $03)
        sta CX16.VERA_L0_tilebase
        
        stz CX16.VERA_L0_hscroll_l
        stz CX16.VERA_L0_hscroll_h
        stz CX16.VERA_L0_vscroll_l
        stz CX16.VERA_L0_vscroll_h

        lda #%01010011
        sta CX16.VERA_L1_config

        lda #((VRAM_L1MAP >> 9) & $FF)
        sta CX16.VERA_L1_mapbase

        lda #((((VRAM_TILES >> 11) & $3F) << 2) | $03)
        sta CX16.VERA_L1_tilebase
        
        stz CX16.VERA_L1_hscroll_l
        stz CX16.VERA_L1_hscroll_h
        stz CX16.VERA_L1_vscroll_l
        stz CX16.VERA_L1_vscroll_h

        jmp *
        rts
}

bmp_file:       
    .text "POKEMON.X16"
bmp_file_end:

bmp_pal:
    .text "POKEMON.PAL"
bmp_pal_end:

l0_map_file:
    .text "POKETEST-0.MAP"
l0_map_file_end:

l1_map_file:
    .text "POKETEST-1.MAP"
l1_map_file_end:
