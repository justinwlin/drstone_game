if(x < 0){
	x += 32
}
if(x > room_width){
	x = room_width - 32
}
if(y < 0){
	y += 32
}
if(y > room_height){
	y -= 32
}
if (isInvincible){
image_blend=c_red;

}else{
image_blend=c_white;
}

show_debug_message(currHealth)
if(deviceIndex==0){
	if(not isCrafting and not isBuilding){
	//Movement
	if ((keyboard_check(global.PLAYER_ONE_LEFT_KEYBOARD))||
	keyboard_check(global.PLAYER_ONE_RIGHT_KEYBOARD) ||
	keyboard_check(global.PLAYER_ONE_UP_KEYBOARD)||
	keyboard_check(global.PLAYER_ONE_DOWN_KEYBOARD)){
		
		if (isIdle){
		isIdle=false;
		sprite_index=walkSprite;
		}
	
	}else{
		isIdle=true;
		sprite_index = idleSprite;
	}
	
		if(keyboard_check(global.PLAYER_ONE_LEFT_KEYBOARD)){
			x -= 5
		image_xscale=-1;
		}

		if(keyboard_check(global.PLAYER_ONE_RIGHT_KEYBOARD)){
			x += 5
					image_xscale=1;

		}

		if(keyboard_check(global.PLAYER_ONE_DOWN_KEYBOARD)){
			y += 5
		}

		if(keyboard_check(global.PLAYER_ONE_UP_KEYBOARD)){
			y -= 5
		}
		if (global.PLAYER_ONE_INTERACTION_KEY){
			ins = instance_create_depth(x,y,depth-1,obj_blade)
			ins.image_xscale=image_xscale;
							ins.x+=image_xscale*40;

		}
	}
	
}else{
	if(not isCrafting and not isBuilding){
	//Movement
		if ((keyboard_check(global.PLAYER_TWO_LEFT_KEYBOARD))||
	keyboard_check(global.PLAYER_TWO_RIGHT_KEYBOARD) ||
	keyboard_check(global.PLAYER_TWO_UP_KEYBOARD)||
	keyboard_check(global.PLAYER_TWO_DOWN_KEYBOARD)){
		
		if (isIdle){
		isIdle=false;
		sprite_index=walkSprite;
		}
	
	}else{
		isIdle=true;
		sprite_index = idleSprite;
	}
	
	
	
		if(keyboard_check(global.PLAYER_TWO_LEFT_KEYBOARD)){
			x -= 5
					image_xscale=-1;

		}

		if(keyboard_check(global.PLAYER_TWO_RIGHT_KEYBOARD)){
			x += 5
					image_xscale=1;

		}

		if(keyboard_check(global.PLAYER_TWO_DOWN_KEYBOARD)){
			y += 5
		}

		if(keyboard_check(global.PLAYER_TWO_UP_KEYBOARD)){
			y -= 5
		}
	
	if (global.PLAYER_TWO_INTERACTION_KEY){
				ins = instance_create_depth(x,y,depth-1,obj_blade)
				ins.image_xscale=image_xscale;
				ins.x+=image_xscale*40;

		}

		
	}
}

scr_solid_collide(obj_craftedItem)

if (isInvincible){

invinciblelElapsed++;
if (invinciblelElapsed>8){
isInvincible=false;
}
if (invinciblelElapsed%2==0){
x+=4;
}else{
x-=4;}


}

if(currHealth <= 0){
	room_goto_next()
}