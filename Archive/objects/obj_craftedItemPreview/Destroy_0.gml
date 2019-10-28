/// @description Insert description here
// You can write your code in this editor
if(onDestroySpawnItem){
	spawnItem = instance_create_depth(x, y, 1, obj_craftedItem)
	spawnItem.itemType = index
}