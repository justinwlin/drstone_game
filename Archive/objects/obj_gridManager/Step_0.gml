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
			
			inst = instance_position(xPos, yPos, obj_tileDots)
			atCursor1Position = (i == cursor1PlayerX and j == cursor1PlayerY)
			
			if(inst == noone and not atCursor1Position){
				//If not at the cursor one position and I encounter a crafted item
				checkingTrash = instance_position(xPos, yPos, obj_craftedItemPreview)
				if(checkingTrash != noone){
					//Delete that item
					instance_destroy(checkingTrash)
				}
				inst = instance_create_depth(xPos, yPos, 1, obj_tileDots)
			}
			
			//Cursor 1 logic to draw 
			if(i == cursor1PlayerX and j == cursor1PlayerY){
				//If there is a dot there
				inst = instance_position(xPos, yPos, obj_tileDots)
				instance_destroy(inst)
				inst = instance_position(xPos, yPos, obj_craftedItemPreview)
				if(inst == noone){
					instance_create_depth(xPos, yPos, 1, obj_craftedItemPreview)
				}
			}
			
			//Need to implement player 2 logic cursor
		}
	}
}