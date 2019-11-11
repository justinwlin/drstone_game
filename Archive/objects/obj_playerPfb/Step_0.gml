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


isControlling=false;
var haxis = gamepad_axis_value(deviceIndex, gp_axislh);
var vaxis = gamepad_axis_value(deviceIndex, gp_axislv);
//show_message(string(haxis)+string(vaxis))
if(not isCrafting and not isBuilding){
if (haxis>=0.5||haxis<=-0.5 || vaxis>=0.5||vaxis<=-0.5){
	isControlling=true;
	if (haxis<=-0.5){
	x-=4;image_xscale=-1;
	}else if (haxis>=0.5){
		x+=4;image_xscale=1;
	}

	if (vaxis<=-0.5){
	y-=4;//image_xscale=-1;
	}else if (vaxis>=0.5){
		y+=4;//image_xscale=1;
	}



	if (isIdle){
		isIdle=false;
		sprite_index=walkSprite;
		}
	
	}else{
		isIdle=true;
		sprite_index = idleSprite;
	}
	

}


if(deviceIndex==0){
	if(not isCrafting and not isBuilding){
	//Movement
	if ((keyboard_check(global.PLAYER_ONE_LEFT_KEYBOARD))||
	keyboard_check(global.PLAYER_ONE_RIGHT_KEYBOARD) ||
	keyboard_check(global.PLAYER_ONE_UP_KEYBOARD)||
	keyboard_check(global.PLAYER_ONE_DOWN_KEYBOARD)
	&& !isControlling
	){
		
		if (isIdle){
		isIdle=false;
		sprite_index=walkSprite;
		}
	
	}else if (!isControlling){
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
		if (global.PLAYER_ONE_INTERACTION_KEY ){
			if(cooldown){
			ins = instance_create_depth(x,y,depth-1,obj_blade)
			ins.image_xscale=image_xscale;
							ins.x+=image_xscale*40;
			cooldown = false
			alarm[0] = room_speed * .4
			}

		}
	}
	
}else{
	if(not isCrafting and not isBuilding){
	//Movement
		if ((keyboard_check(global.PLAYER_TWO_LEFT_KEYBOARD))||
	keyboard_check(global.PLAYER_TWO_RIGHT_KEYBOARD) ||
	keyboard_check(global.PLAYER_TWO_UP_KEYBOARD)||
	keyboard_check(global.PLAYER_TWO_DOWN_KEYBOARD)	&& !isControlling){
		
		if (isIdle){
		isIdle=false;
		sprite_index=walkSprite;
		}
	
	}else if (!isControlling){
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
			if(cooldown){
			ins = instance_create_depth(x,y,depth-1,obj_blade)
			ins.image_xscale=image_xscale;
							ins.x+=image_xscale*40;
			cooldown = false
			alarm[0] = room_speed * .4
			}


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