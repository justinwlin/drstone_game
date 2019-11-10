/// @description Insert description here
// You can write your code in this editor

//Drawing the black rectangle on bottom of screen
draw_rectangle_color(1, room_height - 70, room_width-2, room_height-1,c_black, c_black, c_black, c_black, false)
//Get number of sprites
itemStorageNum = sprite_get_number(spr_itemStorage);
craftedStorageNum = sprite_get_number(spr_crafted);
//Sprite dimension
spriteDimension = sprite_get_height(spr_itemStorage)

drawStorageManager(itemStorageNum, spriteDimension, global.storage, spr_itemStorage)
drawStorageManager_crafted(craftedStorageNum, spriteDimension, global.STORAGE_CRAFTEDITEMS, spr_crafted, itemStorageNum)
