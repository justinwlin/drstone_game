/// @description Insert description here
// You can write your code in this editor
if(global.PLAYER_ONE_INTERACTION_KEY){
	show_debug_message("BUILDING TABLE INTERACTION")
}

if((global.PLAYER_ONE_INTERACTION_KEY and not other.id.beingUsed and deviceIndex == 0) or 
(global.PLAYER_TWO_INTERACTION_KEY and not other.id.beingUsed and deviceIndex == 1)){
	show_debug_message("Using Building Table")
	isBuilding = true
	other.id.beingUsed = true
	other.id.playerUsing = deviceIndex
	isBuilding = true
}

if(global.PLAYER_ONE_QUIT_INTERACTION_KEY 
and other.id.beingUsed 
and other.id.playerUsing == 0 and deviceIndex == 0)
{
	show_debug_message("QUITTING Building Table")
	other.id.beingUsed = false
	other.id.playerUsing = -1
	isBuilding = false
}



if(global.PLAYER_TWO_QUIT_INTERACTION_KEY 
and other.id.beingUsed 
and other.id.playerUsing == 1 and deviceIndex == 1)
{
	show_debug_message("QUITTING Building Table")
	other.id.beingUsed = false
	other.id.playerUsing = -1
	isBuilding = false
}