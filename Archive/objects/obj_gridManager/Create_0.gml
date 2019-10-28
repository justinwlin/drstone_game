/// @description Insert description here
// You can write your code in this editor
grid_width = room_width/64//1024/64 = 16
grid_height = room_height/64//768/64 = 12
placement_grid = ds_grid_create(grid_width,grid_height);

//Creating the grid
for (var i = 0; i < grid_width; ++i) {
	for (var j = 0; j < grid_height; ++j) {
		//placement_grid[# i,j] = instance_create_depth(i * 64 + 32, j * 64 + 32, 1, obj_playerPfb)
		placement_grid[# i,j] = [i * 64 + 32, j * 64 + 32]
	}
}

for (var i = 0; i < grid_width; ++i) {
	for (var j = 0; j < grid_height; ++j) {
		result = placement_grid[# i,j]
		xPos = result[0]
		yPos = result[1]
		instance_create_depth(xPos, yPos, 1, obj_playerPfb)
	}
}