/// @description Insert description here
// You can write your code in this editor
if(global.PLAYER_ONE_INTERACTION_KEY){
	show_debug_message("CRAFTING TABLE COLLISSION - READING KEY PRESS")
}

if((global.PLAYER_ONE_INTERACTION_KEY and not other.id.beingUsed) or 
(global.PLAYER_TWO_INTERACTION_KEY and not other.id.beingUsed)){
	show_debug_message("Using crafting table")
	other.id.beingUsed = true
	other.id.playerUsing = deviceIndex
	isCrafting = true
}

if(global.PLAYER_ONE_QUIT_INTERACTION_KEY 
and other.id.beingUsed 
and other.id.playerUsing == 0)
{
	show_debug_message("QUITTING CRAFTING TABLE")
	other.id.beingUsed = false
	other.id.playerUsing = -1
	isCrafting = false
}



if(global.PLAYER_TWO_QUIT_INTERACTION_KEY 
and other.id.beingUsed 
and other.id.playerUsing == 1)
{
	show_debug_message("QUITTING CRAFTING TABLE")
	other.id.beingUsed = false
	other.id.playerUsing = -1
	isCrafting = false
}