/// @description Insert description here
// You can write your code in this editor
if(global.PLAYER_ONE_INTERACTION_KEY or global.PLAYER_ONE_INTERACTION_KEY){
	show_debug_message("collecting resource")
	other.id.elapsed += 1
	show_debug_message(other.id.elapsed)
	if(other.id.elapsed >= other.id.requiredTime){
		instance_destroy(other.id)
	}
}