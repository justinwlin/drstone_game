if(deviceIndex==0){
	if(not isCrafting){
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
	//Build
	if(keyboard_check_pressed(global.PLAYER_ONE_GUI_CRAFTING_TABLE_KEYBOARD)){
		if(not isCrafting){
			craftingTable = instance_create_depth(x, y, 1, obj_craftingTable)
			craftingTable.playerWhoIsCrafting = deviceIndex
			isCrafting = true
		}else{
			instance_destroy(craftingTable)
			isCrafting = false
		}
	}
}else{
	/*
	Add player 2 control
	- Movement
	- Calling craft/build menu
	*/
	if(keyboard_check_pressed(global.PLAYER_TWO_GUI_CRAFTING_TABLE_KEYBOARD)){
		if(not isCrafting){
			craftingTable = instance_create_depth(x, y, 1, obj_craftingTable)
			craftingTable.playerWhoIsCrafting = deviceIndex
			isCrafting = true
		}else{
			instance_destroy(craftingTable)
			isCrafting = false
		}
	}
}