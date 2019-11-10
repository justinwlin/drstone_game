/// @description Insert description here
// You can write your code in this editor
if (isShowingHealthBar){
	/*
	healthElapsed++;
	if (healthElapsed>30){
	isShowingHealthBar=false;
	healthElapsed=0;
	}*/
draw_set_color(c_black)
draw_rectangle(x,y-40,x+20,y+5-40,false);
draw_set_color(c_red)
draw_rectangle(x,y-40,x+ (requiredTime-elapsed)/requiredTime*20,y+5-40,false);
}