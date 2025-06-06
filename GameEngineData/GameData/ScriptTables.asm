;; *************** ScriptTables.asm ***************
;; Script link export. Friday, April 11, 2025 4:08:56 PM
ScriptAddressLo:
	.db #<Script00, #<Script01, #<Script02, #<Script03, #<Script04, #<Script05, #<Script06, #<Script07, #<Script08, #<Script09, #<Script0a, #<Script0b, #<Script0c, #<Script0d
ScriptAddressHi:
	.db #>Script00, #>Script01, #>Script02, #>Script03, #>Script04, #>Script05, #>Script06, #>Script07, #>Script08, #>Script09, #>Script0a, #>Script0b, #>Script0c, #>Script0d

TargetScriptBank:
	.db #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1, #DATABANK1

;;=======================PRESSED=======================
DefinedInputs_Pressed:
	.db #%10000000, #%01000000, #%00000001, #%00000001, #%00000010, #%00001000

DefinedScriptGameStates_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$01

DefinedTargetObjects_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetController_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Pressed:
	.db #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Pressed:
	.db #$02, #$02, #$08, #$0b, #$0c, #$0d

;;=======================RELEASE=======================
DefinedInputs_Released:
	.db #%10000000, #%01000000, #%10000000, #%01000000, #%10000000, #%01000000, #%00000001

DefinedScriptGameStates_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetObjects_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetController_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00

TargetState_Released:
	.db #$00, #$00, #$00, #$00, #$00, #$00, #$00

DefinedTargetScripts_Released:
	.db #$03, #$03, #$04, #$04, #$07, #$07, #$09

;;=======================HOLD=======================
DefinedInputs_Held:
	.db #%10000000, #%01000000, #%10000000, #%01000000

DefinedScriptGameStates_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetObjects_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetController_Held:
	.db #$00, #$00, #$00, #$00

TargetState_Held:
	.db #$00, #$00, #$00, #$00

DefinedTargetScripts_Held:
	.db #$00, #$01, #$05, #$06

