/// @description Spawns Items in
// You can write your code in this editor

//Array of possible resources
//This code is spawning in a bunch of obj_resources
var i;
for(i = 0; i < 5; i++){
	obj = instance_create_depth(50 + i * 200, 30, -1, obj_resource)
	obj.resourceType = irandom(4)
}

for(i = 0; i < 5; i++){
	obj = instance_create_depth(50 + i * 200, 100, -1, obj_resource)
	obj.resourceType = irandom(4)
}

//Placing Crafting Table
coordinate = global.GRID_COORDINATE [# 7,5]
global.PLACED_ITEMS [# 7,5] = true
coordX = coordinate[0]
coordY = coordinate[1]

instance_create_depth(coordX, coordY, 1, obj_craftingTableProto)

//Placing 
coordinate = global.GRID_COORDINATE [# 8,5]
global.PLACED_ITEMS [# 8,5] = true
coordX = coordinate[0]
coordY = coordinate[1]

instance_create_depth(coordX, coordY, 1, obj_buildingTableProto)

