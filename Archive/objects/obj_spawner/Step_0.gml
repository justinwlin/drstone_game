/// @description Insert description here
// You can write your code in this editor
if(global.DAY and not alreadySpawnedItems){
	show_debug_message("Spawning items")
	var i = 10
	while(i > 0){
		
		result = global.GRID_COORDINATE[# irandom(15),irandom(10)]
		xPos = result[0]
		yPos = result[1]
			
		resourceThere = place_meeting(xPos, yPos, obj_resource)
		craftedThere = place_meeting(xPos, yPos, obj_craftedItem)
		
		if(not resourceThere and not craftedThere){
			obj = instance_create_depth(xPos, yPos, -1, obj_resource)
			obj.resourceType = irandom(ds_map_size(global.STORAGE_CRAFTEDITEMS) - 1)
			i -= 1
		}		
	}
	alreadySpawnedItems = true
}else if(not global.DAY){
	alreadySpawnedItems = false
}
