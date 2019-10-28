/// @description Insert description here
// You can write your code in this editor

itemSelectedIndex = SquareX + (SquareY * itemPerRow)

if(playerWhoIsCrafting == 0){
	//Add player 1 movement control to control red square
	if(keyboard_check_pressed(global.PLAYER_ONE_RIGHT_KEYBOARD)){
		SquareX += 1
		if(SquareX >= itemPerRow){
			SquareX = 0
		}
	}
	if(keyboard_check_pressed(global.PLAYER_ONE_LEFT_KEYBOARD)){
		SquareX -= 1
		if(SquareX <= -1){
			SquareX = itemPerRow -1
		}
	}
	if(keyboard_check_pressed(global.PLAYER_ONE_DOWN_KEYBOARD)){
		SquareY += 1
		if(SquareY >= itemColNum){
			SquareY = 0
		}

	}
	if(keyboard_check_pressed(global.PLAYER_ONE_UP_KEYBOARD)){
		SquareY -= 1
		if(SquareY <= -1){
			SquareY = itemColNum - 1
		}
	}
	
	if(keyboard_check_pressed(global.PLAYER_ONE_CRAFT_KEYBOARD)){
		show_debug_message("ACTIVATE")
		global.SHOW_GRID = !global.SHOW_GRID
		if(global.SHOW_GRID){
			obj_gridManager.player1SelectedItem = itemSelectedIndex
		}
		show_debug_message(global.SHOW_GRID)
		
	}

}


if(playerWhoIsCrafting == 1){
	//add player 2 movement control to control red squre
	if(keyboard_check_pressed(global.PLAYER_TWO_RIGHT_KEYBOARD)){
		SquareX += 1
		if(SquareX >= itemPerRow){
			SquareX = 0
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_LEFT_KEYBOARD)){
		SquareX -= 1
		if(SquareX <= -1){
			SquareX = itemPerRow -1
		}
	}
	if(keyboard_check_pressed(global.PLAYER_TWO_DOWN_KEYBOARD)){
		SquareY += 1
		if(SquareY >= itemColNum){
			SquareY = 0
		}

	}
	if(keyboard_check_pressed(global.PLAYER_TWO_UP_KEYBOARD)){
		SquareY -= 1
		if(SquareY <= -1){
			SquareY = itemColNum - 1
		}
	}
	
	/*
	Need to add Player 2 Craft Button
	*/
	if(keyboard_check_pressed(global.PLAYER_TWO_CRAFT_KEYBOARD)){
		scr_CraftAnItem()
	}
}



/*
Setting the square color if you have enough
*/
if(ds_map_exists(global.CRAFTEDITEMS_RECIPE, itemSelectedIndex)){
	crafting = global.CRAFTEDITEMS_RECIPE[? itemSelectedIndex]
	lengthCrafting = array_length_1d(crafting)
	
	for(var craftingLoop = 0; craftingLoop < lengthCrafting; craftingLoop ++){
		item = crafting[craftingLoop]
		itemID = item[0]
		amtItem = item[1]
		if (global.storage[? itemID] >= amtItem){
			squareColor = c_green
		}
		else{
			squareColor = c_red
		}
	}
}else{
	squareColor = c_red
}