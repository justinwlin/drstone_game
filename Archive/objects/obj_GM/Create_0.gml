if gamepad_is_connected(0) gamepad_set_axis_deadzone(0, 0.05);

if gamepad_is_connected(1) gamepad_set_axis_deadzone(0, 0.05);


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
	glass, 
	meat
}

//FOR RESOURCE ENUM MAKE SURE THAT YOU WRITE IT
//EXACTLY THE SAME ORDER AS THE SPRITE ORDER IN ITEM_STORAGE
enum resources {
	tree, 
	boulder,
	chest,
	blueThingy,
	cloud, 
	questionMark
}

//FOR CRAFTED ENUM MAKE SURE THAT YOU WRITE IT
//EXACTLY THE SAME ORDER AS THE SPRITE ORDER IN ITEM_STORAGE
enum crafted {
	fence, 
	tent, 
	questionBlock, 
	bluePortal
}

/*
===========
Picked Up Items
===========
*/
global.nameOfItems = ["stone", "wood", "glass", "meat"]//MAke this the same order as item enum
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
global.storage[? items.glass] = 1
global.storage[? items.meat] = 1

/*
============================================
Storage for Crafted Items
============================================
*/
global.STORAGE_CRAFTEDITEMS = ds_map_create();
//Initialization of storage
global.STORAGE_CRAFTEDITEMS[? crafted.fence] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.tent] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.questionBlock] = 0
global.STORAGE_CRAFTEDITEMS[? crafted.bluePortal] = 0


/*
============================================
Crafting Recipe
============================================
*/
global.CRAFTEDITEMS_RECIPE = ds_map_create();
//Initialization of storage
global.CRAFTEDITEMS_RECIPE[? crafted.fence] = [[items.wood, 2], [items.stone, 3]]
global.CRAFTEDITEMS_RECIPE[? crafted.tent] = [[items.wood, 2], [items.stone, 4]]
global.CRAFTEDITEMS_RECIPE[? crafted.questionBlock] = [[items.wood, 2], [items.stone, 5]]
global.CRAFTEDITEMS_RECIPE[? crafted.bluePortal] = [[items.wood, 2], [items.stone, 6]]

/*
===========
DROPS
===========
*/
global.DROPS = ds_map_create();
//[(itemObject, numOfThatObject), ...]
global.DROPS[? resources.tree] = [[items.wood, 2]]
global.DROPS[? resources.boulder] = [[items.stone, 3]]
global.DROPS[? resources.chest] = [[items.meat, 3], [items.glass, 2]]
global.DROPS[? resources.blueThingy] = [[items.glass, 2]]
global.DROPS[? resources.cloud] = [[items.glass, 2]]
global.DROPS[? resources.questionMark] = [[items.glass, 2]]

/*
=================================
Required Time for Resources
=================================
*/
global.RQTime = ds_map_create();
global.RQTime[? resources.tree] = 10
global.RQTime[? resources.boulder] = 5
global.RQTime[? resources.chest] = 5
global.RQTime[? resources.blueThingy] = 5
global.RQTime[? resources.cloud] = 5
global.RQTime[? resources.questionMark] = 5