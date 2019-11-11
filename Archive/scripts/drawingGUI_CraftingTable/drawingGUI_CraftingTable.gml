/*
===================================================
Drawing Black Box and showing options to craft
===================================================
*/

bottomLeftX = spawnX
bottomLeftY = spawnY
topRightX = (bottomLeftX + spriteDimension * itemPerRow)
topRightY = (bottomLeftY - spriteDimension * (itemPerRow + 2))

topLeftX = topRightX - itemPerRow * spriteDimension
topLeftY = topRightY

textHeight = 40
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
	
	//Creating the text to show what is necessary to craft
	textSpacing = 20
	//Grabbing the recipe
	crafting = global.CRAFTEDITEMS_RECIPE[? i]
	lengthCrafting = array_length_1d(crafting)
	for(var craftingLoop = 0; craftingLoop < lengthCrafting; craftingLoop ++){
		//Grabbing the items per array in the 2D array
		item = crafting[craftingLoop]
		textItem = global.nameOfItems[item[0]]
		amtItem = item[1]
		//Drawing it
		textItem = textItem + "x" + string(amtItem)
		draw_set_colour(c_white);
		draw_text_transformed(xDraw, yDraw + spriteDimension + craftingLoop * textSpacing, 
								textItem, 0.75, 0.75, 0)
	}
	colIndex += 1
}