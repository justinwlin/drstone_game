if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.05);

if gamepad_is_connected(1) gamepad_set_axis_deadzone(0, 0.05);

d1=0;
d2=1;

/*
===========
Global Variable
===========
*/
global.DAY = true

//===========
//Player 1
//===========
//Movement
global.PLAYER_ONE_UP_KEYBOARD = ord("W")
global.PLAYER_ONE_DOWN_KEYBOARD = ord("S")
global.PLAYER_ONE_RIGHT_KEYBOARD = ord("D")
global.PLAYER_ONE_LEFT_KEYBOARD = ord("A")


global.PLAYER_ONE_UP_PAD=false;
global.PLAYER_ONE_DOWN_PAD=false;
global.PLAYER_ONE_RIGHT_PAD=false;
global.PLAYER_ONE_LEFT_PAD=false;

global.PLAYER_TWO_UP_PAD=false;
global.PLAYER_TWO_DOWN_PAD=false;
global.PLAYER_TWO_RIGHT_PAD=false;
global.PLAYER_TWO_LEFT_PAD=false;

//Break Down Resource
global.PLAYER_ONE_INTERACTION_KEY = keyboard_check_pressed(ord("T")) || gamepad_button_check_pressed(d1,gp_face1)
global.PLAYER_ONE_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("Y")) || gamepad_button_check_pressed(d1,gp_face2)

//===========
//Player 2
//===========
//Movement
global.PLAYER_TWO_UP_KEYBOARD = vk_up
global.PLAYER_TWO_DOWN_KEYBOARD = vk_down
global.PLAYER_TWO_RIGHT_KEYBOARD = vk_right
global.PLAYER_TWO_LEFT_KEYBOARD = vk_left
//Break Down Resource
global.PLAYER_TWO_INTERACTION_KEY = keyboard_check_pressed(ord("F"))||gamepad_button_check_pressed(d2,gp_face1)
global.PLAYER_TWO_QUIT_INTERACTION_KEY = keyboard_check_pressed(ord("G"))|| gamepad_button_check_pressed(d2,gp_face2)

/*
===========
Grid System
===========
*/
global.SHOW_GRID_1 = false
global.SHOW_GRID_2 = false

global.GRID_WIDTH = room_width/64//1024/64 = 16
global.GRID_HEIGHT = 11//768/64 = 12
global.GRID_COORDINATE = ds_grid_create(global.GRID_WIDTH, global.GRID_HEIGHT);//Keeps x, y coordinates
global.PLACED_ITEMS = ds_grid_create(global.GRID_WIDTH, global.GRID_HEIGHT);//Will be set to True or False so that we know if

global.GRID_player1SelectedItem = -1
global.GRID_player2SelectedItem = -1

//An object is already there
/*
Creating a grid that keeps track of the x, y center of every tile. 
This is b/c the sprites are centered in the center which is why we need an offset of +32 so we
get to the center of the sprite versus the edge. 

*/
//Creating the grid
for (var i = 0; i < global.GRID_WIDTH; ++i) {
	for (var j = 0; j < global.GRID_HEIGHT; ++j) {
		global.GRID_COORDINATE[# i,j] = [i * 64 + 32, j * 64 + 32]
		global.PLACED_ITEMS[# i, j] = false
	}
}



/*
===========
Enums
===========
*/

//FOR ITEMS ENUM MAKE SURE THAT YOU WRITE IT
//EXACTLY THE SAME ORDER AS THE SPRITE ORDER IN ITEM_STORAGE
enum items {
	stone, 
	wood, 
	steel
}

//FOR RESOURCE ENUM MAKE SURE THAT YOU WRITE IT
//EXACTLY THE SAME ORDER AS THE SPRITE ORDER IN ITEM_STORAGE
enum resources {
	tree, 
	rock,
	mine

}

//FOR CRAFTED ENUM MAKE SURE THAT YOU WRITE IT
//EXACTLY THE SAME ORDER AS THE SPRITE ORDER IN ITEM_STORAGE
enum crafted {
	fence, 
	brickWall, 
	steelWall,
	woodSpike,
	ironSpike
}

/*
===========
Picked Up Items
===========
*/
global.nameOfItems = ["stone", "wood", "steel"]//MAke this the same order as item enum
global.PICKED_UP_ITEMS = ds_queue_create();
/*
======================
Storage for items
======================
*/
global.storage = ds_map_create();
//Initialization of storage
global.storage[? items.stone] = 2
global.storage[? items.wood] = 5
global.storage[? items.steel] = 1

/*
============================================
Storage for Crafted Items
============================================
*/
global.STORAGE_CRAFTEDITEMS = ds_map_create();
//Initialization of storage
global.STORAGE_CRAFTEDITEMS[? crafted.fence] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.brickWall] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.steelWall] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.woodSpike] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.ironSpike] = 0


/*
============================================
Crafting Recipe
============================================
*/
global.CRAFTEDNAMES=["Fence","Brick Wall","Steel Wall","Wood Spike","Iron Spike"]

global.CRAFTEDITEMS_RECIPE = ds_map_create();
//Initialization of storage
global.CRAFTEDITEMS_RECIPE[? crafted.fence] = [[items.wood, 2]]
global.CRAFTEDITEMS_RECIPE[? crafted.brickWall] = [[items.wood, 2], [items.stone, 4]]
global.CRAFTEDITEMS_RECIPE[? crafted.steelWall] = [[items.steel, 3], [items.stone, 5]]
global.CRAFTEDITEMS_RECIPE[? crafted.woodSpike] = [[items.wood, 5], [items.stone, 3]]
global.CRAFTEDITEMS_RECIPE[? crafted.ironSpike] = [[items.steel, 5], [items.wood, 2]]

/*
===========
DROPS
===========
*/
global.DROPS = ds_map_create();
//[(itemObject, numOfThatObject), ...]
global.DROPS[? resources.tree] = [[items.wood, 2]]
global.DROPS[? resources.rock] = [[items.stone, 2]]
global.DROPS[? resources.mine] = [[items.stone, 2], [items.steel, 2]]

/*
=================================
Required Time for Resources
=================================
*/
global.RQTime = ds_map_create();
global.RQTime[? resources.tree] = 2
global.RQTime[? resources.rock] = 2
global.RQTime[? resources.mine] = 2
