/// @description Insert description here
// You can write your code in this editor

itemSelectedIndex = SquareX + (SquareY * itemPerRow)

if(playerWhoIsCrafting == 0){
	//Player Input
	scr_PlaceBlock_Player1_KeyboardInput()
	
	if(global.PLAYER_ONE_INTERACTION_KEY){
		show_debug_message("ACTIVATE")
		global.SHOW_GRID_1 = !global.SHOW_GRID_1
		if(global.SHOW_GRID_1){
			global.GRID_player1SelectedItem = itemSelectedIndex
		}
		show_debug_message(global.SHOW_GRID_1)
	}
}


if(playerWhoIsCrafting == 1){
	scr_PlaceBlock_Player2_KeyboardInput()
	/*
	Need to add Player 2 Craft Button
	*/
	if(global.PLAYER_TWO_INTERACTION_KEY){
		show_debug_message("ACTIVATE")
		global.SHOW_GRID_2 = !global.SHOW_GRID_2
		if(global.SHOW_GRID_2){
			global.GRID_player2SelectedItem = itemSelectedIndex
			obj_gridManager.cursor2PlayerX = 0
			obj_gridManager.cursor2PlayerX = 0
		}
		show_debug_message(global.SHOW_GRID_2)
	}
}

/*
Setting the square color if you have enough
*/
if(ds_map_exists(global.STORAGE_CRAFTEDITEMS, itemSelectedIndex)){
	numberOfCraftedItem = global.STORAGE_CRAFTEDITEMS[? itemSelectedIndex]
	if(numberOfCraftedItem > 0){
		squareColor = c_green
	}else{
		squareColor = c_red
	}
}
else{
	squareColor = c_red
}