/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_text(room_width-60, 0, stringToDisplay)
draw_text(room_width-200, 20, "Countdown: "+string(round(alarm[0]/60))+" sec")


if (daynightBool){

}else{
	draw_set_color(c_black);
	draw_set_alpha(0.3)
	draw_rectangle(0,0,room_width,room_height,false);
	draw_set_alpha(1)
	
}