;;; Create a Projectile.
;;; Assumes that the projectile you want to create is in GameObject Slot 01.
;;; Assumes variable called myAmmo exists.
;;; Assumes myAmmo is in HUD element 8.
;;; We will use tempz to store the projectile type.

    LDA myAmmo
    BEQ +startReload      ; If no ammo, go to reload routine
    LDA #$01              ; Mega projectile
    STA tempz
    DEC myAmmo
    JMP +shootThing

+startReload:
    ;; We skip shooting and initiate reload logic here.
    ;; You can add a sound or animation if needed.

    ;; For this example, we instantly reload for simplicity.
    ;; Replace this with a timed reload if desired.
    LDA #$05              ; Set max ammo here (e.g., 5 shots)
    STA myAmmo
    RTS                   ; Exit without shooting

+shootThing:
    TXA
    PHA
    TYA
    PHA

    LDX player1_object
    LDA Object_x_hi,x
        CLC
    ADC #$04
    STA tempA
    LDA Object_screen,x
    ADC #$00
    STA tempD
    LDA Object_y_hi,x
        CLC
    ADC #$04
    STA tempB
    LDA Object_direction,x
    AND #%00000111
    STA tempC
    CreateObjectOnScreen tempA, tempB, tempz, #$00, tempD

    LDA tempC
    STA Object_direction,x
    TAY
    LDA DirectionTableOrdered,y
    STA temp1
    TXA
    STA temp
    StartMoving temp, temp1

    PLA
    TAY
    PLA
    TAX

+canNotShoot:
    RTS
