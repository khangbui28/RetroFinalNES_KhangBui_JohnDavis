

CPX player1_object
BEQ +isPlayer
	JMP +notPlayer
	+isPlayer

	;ChangeTileAtCollision #$02, #$0
	
	
	DrawSprite #50, #50 , #$3C , #%00000000
	DrawSprite #58, #50, #$3D , #%00000000
	DrawSprite #50, #58 , #$4C , #%00000000
	DrawSprite #58, #58 , #$4D , #%00000000

	PlaySound sfx_powerup
	
	+notPlayer