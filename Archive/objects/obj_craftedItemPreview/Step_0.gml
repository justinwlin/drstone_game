/// @description Insert description here
// You can write your code in this editor
image_index = index
image_blend = c_purple

if(not global.SHOW_GRID_1 and not global.SHOW_GRID_2){
	instance_destroy(self)
}


if(playerIndex == obj_player1 and keyboard_check_pressed(global.PLAYER_ONE_PLACE_BLOCK)){
	spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
	spawnItem.itemType = index
}

if(playerIndex == obj_player2 and keyboard_check_pressed(global.PLAYER_TWO_PLACE_BLOCK)){
	spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
	spawnItem.itemType = index
}