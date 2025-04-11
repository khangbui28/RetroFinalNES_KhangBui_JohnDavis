

CPX player1_object
BEQ +isPlayer
	JMP +notPlayer
	+isPlayer

	ChangeTileAtCollision #$01, #$02
	
	+notPlayer