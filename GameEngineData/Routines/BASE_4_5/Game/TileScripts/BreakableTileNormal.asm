;;; Breakable tile

LDA Object_flags,x
AND #%00000100 ;Player weapon
BNE +doBreakThisTile
JMP +skipBreakThisTile
; LDA Object_type,x
; CMP #1 ;Player projectile (game object 1)
; BEQ +doBreakThisTile
; JMP +skipBreakThisTile
+doBreakThisTile:


LDA updateScreenData
AND #%0000100
BEQ +doTile
RTS
+doTile


LDA tileX
AND #%11110000
LSR
LSR
LSR
LSR
STA tempA

LDA tileY
AND #%11110000
STA tempB

LDA Object_screen,x
STA tempC

DestroyObject ;Destroy player weapon

TXA
PHA
CreateObjectOnScreen tempA, tempB, #8, #0, tempC ;Create explosion (game object 8)
PLA
TAX

;; CreateObjectOnScreen arg0, arg1, arg2, arg3, arg4
;; arg0 = x
;; arg1 = y
;; arg2 = object
;; arg3 = beginning state
;; arg4 = what screen do youw ant to create this object on?

ChangeTileAtCollision #12, #0 ; Metatile: Tile graphic at position 2 Collision: NULL (0)
; arg0 = metatile to change into
; arg1 = collision to change into.
JSR doWaitFrame

JMP +doneBreakableTile

+skipBreakThisTile:
LDA ObjectUpdateByte
ORA #%00000001
STA ObjectUpdateByte ;; makes solid

+doneBreakableTile: