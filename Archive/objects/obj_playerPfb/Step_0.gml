if(x < 0){
	x += 32
}
if(x > room_width){
	x = room_width - 32
}
if(y < 0){
	y += 32
}
if(y > room_height){
	y -= 32
}

if(deviceIndex==0){
	if(not isCrafting and not isBuilding){
	//Movement
		if(keyboard_check(global.PLAYER_ONE_LEFT_KEYBOARD)){
			x -= 5
		}

		if(keyboard_check(global.PLAYER_ONE_RIGHT_KEYBOARD)){
			x += 5
		}

		if(keyboard_check(global.PLAYER_ONE_DOWN_KEYBOARD)){
			y += 5
		}

		if(keyboard_check(global.PLAYER_ONE_UP_KEYBOARD)){
			y -= 5
		}
	}
	
}else{
	if(not isCrafting and not isBuilding){
	//Movement
		if(keyboard_check(global.PLAYER_TWO_LEFT_KEYBOARD)){
			x -= 5
		}

		if(keyboard_check(global.PLAYER_TWO_RIGHT_KEYBOARD)){
			x += 5
		}

		if(keyboard_check(global.PLAYER_TWO_DOWN_KEYBOARD)){
			y += 5
		}

		if(keyboard_check(global.PLAYER_TWO_UP_KEYBOARD)){
			y -= 5
		}
	}
}

scr_solid_collide(obj_craftedItem)