/// @description Insert description here
// You can write your code in this editor
image_index = index
image_blend = c_purple

if(not global.SHOW_GRID_1 and not global.SHOW_GRID_2){
	instance_destroy(self)
}


if(playerIndex == obj_player1 and global.PLAYER_ONE_INTERACTION_KEY){
	amtCraftedItemInStorage = global.STORAGE_CRAFTEDITEMS[? index]
	if(amtCraftedItemInStorage >= 1){
		spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
		spawnItem.itemType = index
		global.STORAGE_CRAFTEDITEMS[? index] -= 1
	}
}

if(playerIndex == obj_player2 and global.PLAYER_TWO_INTERACTION_KEY){
	amtCraftedItemInStorage = global.STORAGE_CRAFTEDITEMS[? index]
	if(amtCraftedItemInStorage >= 1){
		spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
		spawnItem.itemType = index
		global.STORAGE_CRAFTEDITEMS[? index] -= 1
	}
}