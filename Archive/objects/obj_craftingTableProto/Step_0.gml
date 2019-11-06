if(beingUsed and craftingTable == -1){
	craftingTable = instance_create_depth(x, y, 1, obj_craftingTable)
	craftingTable.playerWhoIsCrafting = playerUsing
	craftingTable.spawnX = x+32
	craftingTable.spawnY = y+32
}
if(not beingUsed and craftingTable != -1){
	instance_destroy(craftingTable)
	craftingTable = -1
}