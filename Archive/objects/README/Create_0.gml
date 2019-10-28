/// @description Insert description here
// You can write your code in this editor

/*

Location of code Below: 
Crafting Table OBJ:

WASD for Player one to select something to craft
E to craft the craftable obj if the square is green

UP, DOWN, LEFT, RIGHT for Player 2
Need to add button for player 2 to craft

Location of Code Below: 
obj_playerPfb

Press B to bring up crafting table for player 1
Press G to bring up crafting table for player 1

Location of Code Below:
Press C to change the storage manager bar between
raw or built recipes

Goals:
- Implement system to place crafted resource
- Implement 2 player movement


Ex. How to loop through the dictionary:
1) Grab the length of the sprite b/c the dictionary length is based on how many
sprites there are
2) Then you can just loop through it: 

ex. 
itemStorageNum = sprite_get_number(spr_itemStorage);
for(var i = 0; i < itemStorageNum; i++){
	itemAmountInStorage = global.storage[? i]
}


=================================
The way placing a block works. 
=================================

1) Click O to bring up the placing menu
2) Press e to select the item to place (right now it just keeps defaulting to the first item)
3) Press K to place the item


When you click O spawns an obj_placeBlocks
When you click E it sets a global variable called show_grid to true

when show_grid turns to false by clicking e again
- Tiledots will destroy themselves
- obj_craftedItemPreview will also destroy themselves

If you press K it sets show_grid to false -> and a variable in craftedItemPreview to true
-> so that on destroy it spawns the item that it represents

*/