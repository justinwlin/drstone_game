i = argument0
j = argument1
playerX = argument2
playerY = argument3
imageIndex = argument4
playerIndex = argument5

if(i == playerX and j == playerY){
	//Check if there is already a craftedItem preview
	inst = instance_position(xPos, yPos, obj_craftedItemPreview)
	if(inst == noone){//If not then put one there
		playerCursor = instance_create_depth(xPos, yPos, 1, obj_craftedItemPreview)
		playerCursor.index = imageIndex
		playerCursor.playerIndex = playerIndex
	}
}