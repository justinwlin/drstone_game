numItems = argument0
spriteDimension = argument1
dictToAccess = argument2
spriteToDraw = argument3

var i;
for(i = 0; i < numItems; i++){
	xDraw = 0 + i * spriteDimension
	yDraw = room_height - spriteDimension
	draw_sprite_stretched(spriteToDraw, i, xDraw, yDraw, spriteDimension, spriteDimension)
	amount = string(dictToAccess[? i])
	draw_text(xDraw, yDraw, amount)
}