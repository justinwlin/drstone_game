/// @description Insert description here
// You can write your code in this editor
if (currHealth<maxHealth){
draw_set_color(c_black)
draw_rectangle(x,y-40,x+20,y+5-40,false);
draw_set_color(c_red)
draw_rectangle(x,y-40,x+currHealth/maxHealth*20,y+5-40,false);
}