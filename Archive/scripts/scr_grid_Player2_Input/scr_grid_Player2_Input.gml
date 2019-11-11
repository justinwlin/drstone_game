	//Add player 1 movement control to control red square
	if(keyboard_check_pressed(global.PLAYER_TWO_RIGHT_KEYBOARD)|| global.PLAYER_TWO_RIGHT_PAD){
		show_debug_message("TEST RIGHT")
		cursor2PlayerX += 1
		if(cursor2PlayerX >= ds_grid_width(global.GRID_COORDINATE)){
			cursor2PlayerX = 0
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_LEFT_KEYBOARD)|| global.PLAYER_TWO_LEFT_PAD){
		cursor2PlayerX -= 1
		if(cursor2PlayerX <= -1){
			cursor2PlayerX = ds_grid_width(global.GRID_COORDINATE) - 1
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_DOWN_KEYBOARD)|| global.PLAYER_TWO_DOWN_PAD){
		cursor2PlayerY += 1
		show_debug_message(ds_grid_height(global.GRID_COORDINATE))
		if(cursor2PlayerY >= ds_grid_height(global.GRID_COORDINATE)){
			cursor2PlayerY = ds_grid_height(global.GRID_COORDINATE)-1
		}

	}
	if(keyboard_check_pressed(global.PLAYER_TWO_UP_KEYBOARD)|| global.PLAYER_TWO_UP_PAD){
		cursor2PlayerY -= 1
		if(cursor2PlayerY <= -1){
			cursor2PlayerY = 0
		}
	}