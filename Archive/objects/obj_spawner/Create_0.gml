/// @description Spawns Items in
// You can write your code in this editor

//Array of possible resources
//This code is spawning in a bunch of obj_resources
alreadySpawnedItems = false

//Placing Crafting Table
coordinate = global.GRID_COORDINATE [# 6,5]
global.PLACED_ITEMS [# 6,5] = true
coordX = coordinate[0]
coordY = coordinate[1]

instance_create_depth(coordX, coordY, 1, obj_craftingTableProto)

//Placing 
coordinate = global.GRID_COORDINATE [# 8,5]
global.PLACED_ITEMS [# 8,5] = true
coordX = coordinate[0]
coordY = coordinate[1]

instance_create_depth(coordX, coordY, 1, obj_buildingTableProto)

