/// @description Insert description here
// You can write your code in this 
if (textToShow!="" || global.SHOW_CRAFTED_ITEM!=""){
draw_set_color(c_black)
draw_rectangle(10,600,200,660,false)
draw_set_color(c_white)
if (textToShow!=""){
draw_text(15, 610, "You got:\n"+textToShow)}
else {
draw_text(15, 610, "You have crafted:\n"+global.SHOW_CRAFTED_ITEM+" *1")}

}
