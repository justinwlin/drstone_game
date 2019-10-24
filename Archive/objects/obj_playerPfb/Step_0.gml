if(deviceIndex==0){
	if(not isCrafting){
	//Movement
		if(keyboard_check(ord("A"))){
			x -= 5
		}

		if(keyboard_check(ord("D"))){
			x += 5
		}

		if(keyboard_check(ord("S"))){
			y += 5
		}

		if(keyboard_check(ord("W"))){
			y -= 5
		}
	}
	//Build
	if(keyboard_check_pressed(ord("B"))){
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
	
		if(keyboard_check_pressed(ord("G"))){
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