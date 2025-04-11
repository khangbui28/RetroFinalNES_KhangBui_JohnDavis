;;; Pickup scripts.
;;; Right now, we need to look at the type of object that is in X.
;;; Then, we have to do pickup behavior accordingly.

;; Here is an example of how to set variable myAmmo to 5 if the pickup type
;; is gameobject 2.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
	LDA Object_type,x
	CMP #$04 ;;What object is your pickup?  00 - 0f
	BNE +notThisPickup
		;;;;;;;;;;;;;;;;;;;;;;;;; What do you want to do to the value?
		;;;;;;;;;;;;;;;;;;;;;;;;; Increase?  Decrease?  Set it to a number?
		;;;;;;;;;;;;;;;;;;;;;;;;; Here, we are setting myAmmo to 5.
		LDA #$05
		STA myAmmo
		;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
		;;;;;;;;;;;;;;;;;;;;;;;;; Do we need to update the HUD to reflect this?
		;;;;;;;;;;;;;;;;;;;;;;;;; If so, which element is the above variable represented in?
		;UpdateHudElement #$03
		JMP +endPickups
+notThisPickup:

	CMP #$03
	BNE +notThisPickup
		 INC myMaxHealth
		LDA myMaxHealth
		CMP #$06
		BNE +dontCap
			LDA #$07
			STA myMaxHealth
	+dontCap:
		;; Refill to full
		LDA myMaxHealth
		STA myHealth

		JMP +endPickups
		UpdateHudElement #$02

		JMP +endPickups
+notThisPickup:



+endPickups

	;;; object will already destroy based on type.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;