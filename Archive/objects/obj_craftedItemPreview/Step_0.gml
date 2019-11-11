/// @description Insert description here
// You can write your code in this editor

itemExistsPlace = place_meeting(x, y, obj_craftedItem);


image_index = index
if(not itemExistsPlace){
	image_blend = c_green
}else{
	image_blend = c_red
}


if(not global.SHOW_GRID_1 and not global.SHOW_GRID_2){
	instance_destroy(self)
}


objAlreadyInLocation = place_meeting(x, y, obj_craftedItem);
show_debug_message(objAlreadyInLocation)
if(playerIndex == obj_player1 and global.PLAYER_ONE_INTERACTION_KEY){
	amtCraftedItemInStorage = global.STORAGE_CRAFTEDITEMS[? index]
	if(amtCraftedItemInStorage >= 1 and (not itemExistsPlace)){
		spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
		spawnItem.itemType = index
		if (index<3){
		spawnItem.currHealth = (index+1)*2;
		}
		spawnItem.maxHealth=spawnItem.currHealth;
		global.STORAGE_CRAFTEDITEMS[? index] -= 1
	}
}


if(playerIndex == obj_player2 and global.PLAYER_TWO_INTERACTION_KEY){
	amtCraftedItemInStorage = global.STORAGE_CRAFTEDITEMS[? index]
	if(amtCraftedItemInStorage >= 1 and (not itemExistsPlace)){
		spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
		spawnItem.itemType = index
		global.STORAGE_CRAFTEDITEMS[? index] -= 1
	}
}