if(global.PLAYER_ONE_INTERACTION_KEY){
	show_debug_message("collecting resource")
	other.id.elapsed += 1
	show_debug_message(other.id.elapsed)
	if(other.id.elapsed >= other.id.requiredTime){
		instance_destroy(other.id)
	}
}