inst = instance_position(xPos, yPos, obj_craftedItemPreview)
atCursor1Position = (i == cursor1PlayerX and j == cursor1PlayerY)
atCursor2Position = (i == cursor2PlayerX and j == cursor2PlayerY)
			
//If there is a craftedItemPreview and we are not at a cursor1 or cursor2
if(not (inst == noone) and not(atCursor1Position or atCursor2Position)){
	instance_destroy(inst)
}