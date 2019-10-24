/// @description Spawns Items in
// You can write your code in this editor

//Array of possible resources
//This code is spawning in a bunch of obj_resources
var i;
for(i = 0; i < 5; i++){
	obj = instance_create_depth(50 + i * 200, 30, 1, obj_resource)
	obj.resourceType = irandom(4)
}