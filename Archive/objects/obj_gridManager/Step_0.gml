/// @description Insert description here
// You can write your code in this editor
if(global.SHOW_GRID_1 or global.SHOW_GRID_2){
	scr_initializeCursorLogic()
	scr_grid_Player1_Input()
	scr_grid_Player2_Input()
	
	for (var i = 0; i < global.GRID_WIDTH; ++i) {
		for (var j = 0; j < global.GRID_HEIGHT; ++j) {
			result = global.GRID_COORDINATE[# i,j]
			xPos = result[0]
			yPos = result[1]
			
			atCursor1Position = (i == cursor1PlayerX and j == cursor1PlayerY)
			atCursor2Position = (i == cursor2PlayerX and j == cursor2PlayerY)
			
			//Place a Dot if not at cursor1 and not at cursor 2
			if(not atCursor1Position and not atCursor2Position){
				inst = instance_create_depth(xPos, yPos, 1, obj_tileDots)
			}else{
				//If we are at a cursor
				//Destroy the tileDot
				inst = instance_position(xPos, yPos, obj_tileDots)
				instance_destroy(inst)
			}
			//Cleaning up old preview
			inst = instance_position(xPos, yPos, obj_craftedItemPreview)
			//If there is a craftedItemPreview and we are not at a cursor1 or cursor2
			if(not (inst == noone) and not(atCursor1Position or atCursor2Position)){
				instance_destroy(inst)
			}
			
			//Showing Player cursors
			if(global.SHOW_GRID_1){
				//Cursor 1 logic to draw
				scr_drawPlayerCursor(i, j, cursor1PlayerX, cursor1PlayerY,global.GRID_player1SelectedItem, obj_player1)
			}else{
				cursor1PlayerX = -1
				cursor1PlayerY = -1
				cursor1Initialize = false
			}
			
			if(global.SHOW_GRID_2){
				//Cursor 2 logic to draw
				scr_drawPlayerCursor(i, j, cursor2PlayerX, cursor2PlayerY,global.GRID_player2SelectedItem, obj_player2)
			}else{
				cursor2PlayerX = -1
				cursor2PlayerY = -1
				cursor2Initialize = false
			}
		}
	}
}
else{
	cursor1PlayerX = -1
	cursor1PlayerY = -1
	cursor1Initialize = false

	cursor2PlayerX = -1
	cursor2PlayerY = -1
	cursor2Initialize = false
}