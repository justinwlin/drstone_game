	//add player 2 movement control to control red squre
	if(keyboard_check_pressed(global.PLAYER_TWO_RIGHT_KEYBOARD)|| global.PLAYER_TWO_RIGHT_PAD){
		SquareX += 1
		if(SquareX >= itemPerRow){
			SquareX = 0
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_LEFT_KEYBOARD)|| global.PLAYER_TWO_LEFT_PAD){
		SquareX -= 1
		if(SquareX <= -1){
			SquareX = itemPerRow -1
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_DOWN_KEYBOARD)|| global.PLAYER_TWO_DOWN_PAD){
		SquareY += 1
		if(SquareY >= itemColNum){
			SquareY = 0
		}

	}
	if(keyboard_check_pressed(global.PLAYER_TWO_UP_KEYBOARD)|| global.PLAYER_TWO_UP_PAD){
		SquareY -= 1
		if(SquareY <= -1){
			SquareY = itemColNum - 1
		}
	}