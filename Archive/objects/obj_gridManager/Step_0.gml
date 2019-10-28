/// @description Insert description here
// You can write your code in this editor
if(global.SHOW_GRID){
	if(keyboard_check_pressed(ord("L"))){
		cursor1PlayerX += 1
		cursor1PlayerY += 1
		show_debug_message("Increment")
	}
	for (var i = 0; i < global.GRID_WIDTH; ++i) {
		for (var j = 0; j < global.GRID_HEIGHT; ++j) {
			result = global.GRID_COORDINATE[# i,j]
			xPos = result[0]
			yPos = result[1]
			
			//Checks the xPos and yPos for a tiledot
			inst = instance_position(xPos, yPos, obj_tileDots)
			//If there is none there and doesn't overlap with the cursor of player 1
			if(inst == noone and xPos != cursor1PlayerX and yPos != cursor1PlayerY){
				//then place a dot
				inst = instance_create_depth(xPos, yPos, 1, obj_tileDots)
			}else{
				//else check if there is something there
				player1Cursor = instance_position(cursor1PlayerX, cursor1PlayerY, obj_craftedItemPreview)
				if(player1Cursor == noone){
					coor1Player = global.GRID_COORDINATE[# cursor1PlayerX, cursor1PlayerY]
					coor1PlayerX = coor1Player[0]
					coor1PlayerY = coor1Player[1]
					instance_create_depth(coor1PlayerX, coor1PlayerY, 1, obj_craftedItemPreview)
				}
			}
			//Need to implement cleaning up after the player moves their cursor
		}
	}
}