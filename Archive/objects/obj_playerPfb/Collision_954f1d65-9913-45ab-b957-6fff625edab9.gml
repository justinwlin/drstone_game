/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(global.PLAYER_ONE_RESOURCE_BREAK) or keyboard_check_pressed(global.PLAYER_TWO_RESOURCE_BREAK)){
	show_debug_message("collecting resource")
	other.id.elapsed += 1
	show_debug_message(other.id.elapsed)
	if(other.id.elapsed >= other.id.requiredTime){
		instance_destroy(other.id)
	}
}