/// @description Insert description here
// You can write your code in this editor

playerAccess = -1
spriteDimension = sprite_get_height(spr_crafted)
//Setting playerAccess so that I can spawn the crafting table at the appropriate 
//player 1 or player 2 location
if(playerWhoIsCrafting == 0){
	playerAccess = obj_player1
}
if(playerWhoIsCrafting == 1){
	playerAccess = obj_player2
}

if(playerAccess == obj_player1){
	if(not global.SHOW_GRID_1){
		drawingGUI_PlaceBlocks()
	}
}

if(playerAccess == obj_player2){
	if(not global.SHOW_GRID_2){
		drawingGUI_PlaceBlocks()
	}
}