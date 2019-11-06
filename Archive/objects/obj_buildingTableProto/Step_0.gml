if(beingUsed and buildTable == -1){
	show_debug_message("Spawn B-GUI in")
	buildTable = instance_create_depth(x, y, 1, obj_placeBlocks)
	buildTable.playerWhoIsCrafting = playerUsing
	buildTable.spawnX = x+32
	buildTable.spawnY = y+32
}
if(not beingUsed and buildTable != -1){
	instance_destroy(buildTable)
	buildTable = -1
	global.SHOW_GRID_1 = false
	global.SHOW_GRID_2 = false
}