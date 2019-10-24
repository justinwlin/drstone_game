/// @description Insert description here
// You can write your code in this editor

itemSelectedIndex = SquareX + (SquareY * itemPerRow)

if(playerWhoIsCrafting == 0){
	//Add player 1 movement control to control red square
	if(keyboard_check_pressed(ord("D"))){
		SquareX += 1
		if(SquareX >= itemPerRow){
			SquareX = 0
		}
	}
	if(keyboard_check_pressed(ord("A"))){
		SquareX -= 1
		if(SquareX <= -1){
			SquareX = itemPerRow -1
		}
	}
	if(keyboard_check_pressed(ord("S"))){
		SquareY += 1
		if(SquareY >= itemColNum){
			SquareY = 0
		}

	}
	if(keyboard_check_pressed(ord("W"))){
		SquareY -= 1
		if(SquareY <= -1){
			SquareY = itemColNum - 1
		}
	}
	
	if(keyboard_check_pressed(ord("E"))){
		if(squareColor == c_green){
			crafting = global.CRAFTEDITEMS_RECIPE[? itemSelectedIndex]
			lengthCrafting = array_length_1d(crafting)
			for(var craftingLoop = 0; craftingLoop < lengthCrafting; craftingLoop ++){
				item = crafting[craftingLoop]
				itemID = item[0]
				amtItem = item[1]
				
				global.storage[? itemID] -= amtItem
				
			}
			global.STORAGE_CRAFTEDITEMS[? itemSelectedIndex]+= 1
		}
	}

}


if(playerWhoIsCrafting == 1){
	//add player 2 movement control to control red squre
	if(keyboard_check_pressed(vk_right)){
		SquareX += 1
		if(SquareX >= itemPerRow){
			SquareX = 0
		}
	}
	if(keyboard_check_pressed(vk_left)){
		SquareX -= 1
		if(SquareX <= -1){
			SquareX = itemPerRow -1
		}
	}
	if(keyboard_check_pressed(vk_down)){
		SquareY += 1
		if(SquareY >= itemColNum){
			SquareY = 0
		}

	}
	if(keyboard_check_pressed(vk_up)){
		SquareY -= 1
		if(SquareY <= -1){
			SquareY = itemColNum - 1
		}
	}
	
	/*
	Need to add Player 2 Craft Button
	*/
}



/*
Setting the square color if you have enough
*/
if(ds_map_exists(global.CRAFTEDITEMS_RECIPE, itemSelectedIndex)){
	crafting = global.CRAFTEDITEMS_RECIPE[? itemSelectedIndex]
	lengthCrafting = array_length_1d(crafting)
	
	for(var craftingLoop = 0; craftingLoop < lengthCrafting; craftingLoop ++){
		item = crafting[craftingLoop]
		itemID = item[0]
		amtItem = item[1]
		if (global.storage[? itemID] >= amtItem){
			squareColor = c_green
		}
		else{
			squareColor = c_red
		}
	}
}else{
	squareColor = c_red
}