/// @description Insert description here
// You can write your code in this editor
image_index = index
if(not global.SHOW_GRID){
	instance_destroy(self)
}

if(keyboard_check_pressed(ord("K"))){
	onDestroySpawnItem = true
	global.SHOW_GRID = false
}