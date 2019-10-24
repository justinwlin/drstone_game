/// @description Insert description here
// You can write your code in this editor
drops = global.DROPS[? resourceType]
lengthOfDrops = array_length_1d(drops)
var i;

for(i = 0; i < lengthOfDrops; i++){
	show_debug_message(drops[i])
	droppedItems = drops[i]
	itemDropType = droppedItems[0]
	amt = droppedItems[1]
	
	var j;
	for(j = 0; j < amt; j++){
		itemSpawn = instance_create_depth(x, y, 1, obj_item)
		itemSpawn.itemType = itemDropType
	}
}