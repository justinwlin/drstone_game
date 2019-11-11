/// @description Insert description here
// You can write your code in this editor
image_index = itemType

if(itemType >= 3){
	walkable = true
}
if (currHealth<=0){
instance_destroy();
}
if(itemType <= 3){
	if(setHealth){
	currHealth = 15
	}
	setHealth = false
}