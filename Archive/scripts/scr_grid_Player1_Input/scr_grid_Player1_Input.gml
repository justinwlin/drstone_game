	//Add player 1 movement control to control red square
	if(keyboard_check_pressed(global.PLAYER_ONE_RIGHT_KEYBOARD)){
		cursor1PlayerX += 1
		if(cursor1PlayerX >= ds_grid_width(global.GRID_COORDINATE)){
			cursor1PlayerX = 0
		}
	}
	if(keyboard_check_pressed(global.PLAYER_ONE_LEFT_KEYBOARD)){
		cursor1PlayerX -= 1
		if(cursor1PlayerX <= -1){
			cursor1PlayerX = ds_grid_width(global.GRID_COORDINATE) - 1
		}
	}
	if(keyboard_check_pressed(global.PLAYER_ONE_DOWN_KEYBOARD)){
		cursor1PlayerY += 1
		show_debug_message(ds_grid_height(global.GRID_COORDINATE))
		if(cursor1PlayerY >= ds_grid_height(global.GRID_COORDINATE)){
			cursor1PlayerY = ds_grid_height(global.GRID_COORDINATE)-1
		}

	}
	if(keyboard_check_pressed(global.PLAYER_ONE_UP_KEYBOARD)){
		cursor1PlayerY -= 1
		if(cursor1PlayerY <= -1){
			cursor1PlayerY = 0
		}
	}