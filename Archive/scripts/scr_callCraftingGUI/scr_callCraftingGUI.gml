playerInputCheck = argument0

//Build
if(keyboard_check_pressed(playerInputCheck) and not isBuilding){
	if(not isCrafting){
		craftingTable = instance_create_depth(x, y, 1, obj_craftingTable)
		craftingTable.playerWhoIsCrafting = deviceIndex
		isCrafting = true
	}else{
		instance_destroy(craftingTable)
		isCrafting = false
	}
}