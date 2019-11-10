global.PLAYER_ONE_INTERACTION_KEY = keyboard_check_pressed(ord("T"))
global.PLAYER_TWO_INTERACTION_KEY = keyboard_check_pressed(ord("F"))

global.PLAYER_ONE_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("Y"))
global.PLAYER_TWO_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("G"))

if(room == home_screen and (global.PLAYER_ONE_INTERACTION_KEY or global.PLAYER_TWO_INTERACTION_KEY)){
	room_goto_next()
}
if(room == end_screen and (global.PLAYER_ONE_INTERACTION_KEY or global.PLAYER_TWO_INTERACTION_KEY)){
	room_goto(home_screen)
}
