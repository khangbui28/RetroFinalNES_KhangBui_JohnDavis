;; *************** HandleLoadHud.asm ***************
;; Constants export. Friday, April 11, 2025 4:08:56 PM
;; =================== HUD Element #0 =========================
LDA #BOX_0_ASSET_0_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_0_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_0_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_0_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_0_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_0_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
LDA #$00
STA hudElementTilesToLoad
LDX #BOX_0_ASSET_0_MAX_VALUE
PushVariableToValue myScore
JSR HandleHudData_direct
JSR WaitFrame
;; =================== HUD Element #1 =========================
LDA #BOX_0_ASSET_1_TYPE
STA updateHUD_ASSET_TYPE
LDA #BOX_0_ASSET_1_X
STA updateHUD_ASSET_X
LDA #BOX_0_ASSET_1_Y
STA updateHUD_ASSET_Y
LDA #BOX_0_ASSET_1_IMAGE
STA updateHUD_IMAGE
LDA #BOX_0_ASSET_1_BLANK
STA updateHUD_BLANK
LDA #BOX_0_ASSET_1_MAX_VALUE
STA hudElementTilesFull
LDA #$00
STA updateHUD_offset
LDA #$00
STA hudElementTilesToLoad
AssignHudLabel  HUD__0_1_STRING
JSR HandleHudData_direct
JSR WaitFrame
