global.PLAYER_ONE_INTERACTION_KEY = keyboard_check_pressed(ord("T"))|| gamepad_button_check_pressed(d1,gp_face1)
global.PLAYER_TWO_INTERACTION_KEY = keyboard_check_pressed(ord("K"))|| gamepad_button_check_pressed(d2,gp_face1)

global.PLAYER_ONE_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("Y"))|| gamepad_button_check_pressed(d1,gp_face2)
global.PLAYER_TWO_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("L"))|| gamepad_button_check_pressed(d2,gp_face2)

if((room == home_screen or room == tutorial_screen)and (global.PLAYER_ONE_INTERACTION_KEY or global.PLAYER_TWO_INTERACTION_KEY)){
	room_goto_next()
}
if(room == end_screen and (global.PLAYER_ONE_INTERACTION_KEY or global.PLAYER_TWO_INTERACTION_KEY)){
	room_goto(home_screen)
}


//var haxis = gamepad_axis_value(0, gp_axislh);
//var vaxis = gamepad_axis_value(0, gp_axislv);
global.PLAYER_ONE_LEFT_PAD = gamepad_button_check_pressed(0,gp_padl)
global.PLAYER_ONE_RIGHT_PAD = gamepad_button_check_pressed(0,gp_padr)
global.PLAYER_ONE_DOWN_PAD = gamepad_button_check_pressed(0,gp_padd)
global.PLAYER_ONE_UP_PAD = gamepad_button_check_pressed(0,gp_padu)


global.PLAYER_TWO_LEFT_PAD = gamepad_button_check_pressed(1,gp_padl)
global.PLAYER_TWO_RIGHT_PAD = gamepad_button_check_pressed(1,gp_padr)
global.PLAYER_TWO_DOWN_PAD = gamepad_button_check_pressed(1,gp_padd)
global.PLAYER_TWO_UP_PAD = gamepad_button_check_pressed(1,gp_padu)
