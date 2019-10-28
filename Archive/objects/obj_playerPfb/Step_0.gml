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
	//Build
	if(keyboard_check_pressed(global.PLAYER_ONE_GUI_CRAFTING_TABLE_KEYBOARD) and not isBuilding){
		if(not isCrafting){
			craftingTable = instance_create_depth(x, y, 1, obj_craftingTable)
			craftingTable.playerWhoIsCrafting = deviceIndex
			isCrafting = true
		}else{
			instance_destroy(craftingTable)
			isCrafting = false
		}
	}
	
	//Build
	if(keyboard_check_pressed(global.PLAYER_ONE_GUI_BUILDING_KEYBOARD) and not isCrafting){
		if(not isBuilding){
			buildingTable = instance_create_depth(x, y, 1, obj_placeBlocks)
			buildingTable.playerWhoIsCrafting = deviceIndex
			isBuilding = true
		}else{
			instance_destroy(buildingTable)
			global.SHOW_GRID = false //In case the grid is up when the person exits
			isBuilding = false
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