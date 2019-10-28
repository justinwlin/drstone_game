/*
===================================================
Drawing Black Box and showing options to craft
===================================================
*/

bottomLeftX = playerAccess.x
bottomLeftY = playerAccess.y
topRightX = (bottomLeftX + spriteDimension * itemPerRow)
topRightY = (bottomLeftY - spriteDimension * (itemPerRow + 2))

topLeftX = topRightX - itemPerRow * spriteDimension
topLeftY = topRightY

textHeight = 0
numItems = sprite_get_number(spr_crafted);

//Black Box
draw_rectangle_color(bottomLeftX, bottomLeftY, 
					topRightX, topRightY,
					c_black, c_black, c_black, c_black, false)
					


SquareXShift = SquareX * (spriteDimension)
SquareYShift = SquareY * (spriteDimension + textHeight)
//drawing red square
draw_rectangle_color(topLeftX + SquareXShift, topRightY + SquareYShift,
					topLeftX + spriteDimension + SquareXShift , 
					topRightY + spriteDimension + SquareYShift, 
						squareColor, squareColor, squareColor, squareColor, false)

//Drawing sprites
var i;
var colIndex = 0
var rowIndex = 0
for(i = 0; i < numItems; i++){
	if(i > 0 and i % itemPerRow == 0){
		rowIndex += 1
		colIndex = 0
	}
	//Drawing the sprite
	xDraw = topLeftX + colIndex * spriteDimension
	yDraw = topRightY + (rowIndex * (spriteDimension + textHeight))
	draw_sprite_stretched(spr_crafted, i, xDraw, yDraw, spriteDimension, spriteDimension)
	draw_text(xDraw, yDraw, string(global.STORAGE_CRAFTEDITEMS[? i]))
	colIndex += 1
}