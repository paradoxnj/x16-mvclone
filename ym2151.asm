#importonce

#import "x16.inc"

.namespace YM {

      .label YM_TEST        = $01
      .label YM_LFO_RESET   = $02

      .label YM_KEY_ON      = $08
      .label YM_SN_M1       = $08
      .label YM_SN_C1       = $10
      .label YM_SN_M2       = $20
      .label YM_SN_C2       = $40
      .label YM_SN_ALL      = YM_SN_M1 | YM_SN_C1 | YM_SN_M2 | YM_SN_C2
      .label YM_CH_1        = $00
      .label YM_CH_2        = $01
      .label YM_CH_3        = $02
      .label YM_CH_4        = $03
      .label YM_CH_5        = $04
      .label YM_CH_6        = $05
      .label YM_CH_7        = $06
      .label YM_CH_8        = $07
      .label YM_NOISE_ON    = YM_SN_C2 | YM_CH_8
      .label YM_NOISE_OFF   = YM_CH_8

      .label YM_NE_NFRQ     = $0F
      .label YM_NE          = $80
      .label YM_NFRQ_111_9k = $01
      .label YM_NFRQ_7k     = $10
      .label YM_NFRQ_3_5k   = $1F

      .label YM_CLKA1       = $10
      .label YM_CLKA2       = $11

      .label YM_CLKB        = $12

      .label YM_TIMER_CTRL  = $14
      .label YM_CSM         = $80
      .label YM_F_RESET_A   = $10
      .label YM_F_RESET_B   = $20
      .label YM_IRQEN_A     = $04
      .label YM_IRQEN_B     = $08
      .label YM_LOAD_A      = $01
      .label YM_LOAD_B      = $02

      .label YM_LFRQ        = $18

      .label YM_PMD_AMD     = $19

      .label YM_CT_W        = $1B
      .label YM_CT1         = $40
      .label YM_CT2         = $80
      .label YM_W_SAWTOOTH  = $00
      .label YM_W_SQUARE    = $01
      .label YM_W_TRIANGLE  = $02
      .label YM_W_NOISE     = $03

      .label YM_OP_CTRL     = $20
      .label YM_R_ENABLE    = $80
      .label YM_L_ENABLE    = $40
      .label YM_RL_ENABLE   = $C0
      .label YM_FB_OFF      = $00
      .label YM_FB_PI_16    = $08
      .label YM_FB_PI_8     = $10
      .label YM_FB_PI_4     = $18
      .label YM_FB_PI_2     = $20
      .label YM_FB_PI       = $28
      .label YM_FB_2PI      = $30
      .label YM_FB_4PI      = $38
      .label YM_CON_SERIAL  = $00
      .label YM_CON_C1_PL   = $01
      .label YM_CON_M1_PL   = $02
      .label YM_CON_M2_PL   = $03
      .label YM_CON_12_PL   = $04
      .label YM_CON_M2CX_PL = $05
      .label YM_CON_M2C2_PL = $06
      .label YM_CON_ALL_PL  = $07

      .label YM_KC          = $28
      .label YM_KC_OCT0     = $00
      .label YM_KC_OCT1     = $10
      .label YM_KC_OCT2     = $20
      .label YM_KC_OCT3     = $30
      .label YM_KC_OCT4     = $40
      .label YM_KC_OCT5     = $50
      .label YM_KC_OCT6     = $60
      .label YM_KC_OCT7     = $70
      .label YM_KC_C_SH     = $00
      .label YM_KC_D_FL     = YM_KC_C_SH
      .label YM_KC_D        = $01
      .label YM_KC_D_SH     = $02
      .label YM_KC_E_FL     = YM_KC_D_SH
      .label YM_KC_E        = $04
      .label YM_KC_F        = $05
      .label YM_KC_F_SH     = $06
      .label YM_KC_G_FL     = YM_KC_F_SH
      .label YM_KC_G        = $08
      .label YM_KC_G_SH     = $09
      .label YM_KC_A_FL     = YM_KC_G_SH
      .label YM_KC_A        = $0A
      .label YM_KC_A_SH     = $0C
      .label YM_KC_B_FL     = YM_KC_A_SH
      .label YM_KC_B        = $0D
      .label YM_KC_C        = $0E
      .label YM_KC_LOW_C    = YM_KC_OCT1 | YM_KC_C
      .label YM_KC_MIDDLE_C = YM_KC_OCT3 | YM_KC_C
      .label YM_KC_HIGH_C   = YM_KC_OCT5 | YM_KC_C

      .label YM_KF          = $30

      .label YM_PMS_AMS     = $38

      .label YM_DT1_MUL     = $40

      .label YM_TL_M1       = $60

      .label YM_TL_C1       = $68

      .label YM_TL_M2       = $70

      .label YM_TL_C2       = $78

      .label YM_KS_AR       = $80

      .label YM_AMS_EN_D1R  = $A0

      .label YM_DT2_D2R     = $C0

      .label YM_D1L_RR      = $E0

}

.macro YM_SET_REG(reg, val) {
!:    bit YM.YM_data
      bmi !-
      lda #reg
      sta YM.YM_reg
      lda #val
      sta YM.YM_data
}
