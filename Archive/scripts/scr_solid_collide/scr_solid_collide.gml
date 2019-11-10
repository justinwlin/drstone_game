solidCollideWith = argument0
topPlayerLine = collision_line(x-27,y-27, x+27, y-27, solidCollideWith, false, false)
bottomPlayerLine = collision_line(x-27,y+27, x+27, y+27, solidCollideWith, false, false)
leftPlayerLine = collision_line(x-27,y-27, x-27, y+27, solidCollideWith, false, false)
rightPlayerLine = collision_line(x+27,y-27, x+27, y+27, solidCollideWith, false, false)

obj = instance_position(x, y, obj_craftedItem)
if(obj != noone){
	if(not obj.walkable){
		if(topPlayerLine){
			show_debug_message("top")
			y += 5
		}

		else if(bottomPlayerLine){
			show_debug_message("bottom")
			y -= 5
		}

		else if(leftPlayerLine){
			show_debug_message("left")
			x += 5
	
		}

		else if(rightPlayerLine){
			show_debug_message("right")
			x-=5
		}
	}
}