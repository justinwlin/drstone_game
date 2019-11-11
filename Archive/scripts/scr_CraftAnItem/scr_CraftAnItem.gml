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
	
	//add a prompt
	global.SHOW_CRAFTED_ITEM=global.CRAFTEDNAMES[itemID];
}