	//if we didn't initialize the cursor yet to 0, 0 and the grid 
	//is being shown b/c of player 1
	if(cursor1Initialize == false and global.SHOW_GRID_1){
		show_debug_message("Initializing cursor1")
		cursor1PlayerX = 0
		cursor1PlayerY = 0
		cursor1Initialize = true
	}
	
	if(cursor2Initialize == false and global.SHOW_GRID_2){
		show_debug_message("Initializing Cursor 2")
		cursor2PlayerX = 0
		cursor2PlayerY = 0
		cursor2Initialize = true
	}