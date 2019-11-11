/// @description Insert description here
// You can write your code in this editor
//
if (isPaused){
pauseElapsed++;
	if (pauseElapsed>15){
	isPaused=false;
	pauseElapsed=0;
	}
	move_towards_point( x, y,0 );
	image_index = 0
	
	
	
}
else if (isInvincible){
	image_blend=c_red;

	invincibleElapsed++;
	if (invincibleElapsed>7){
	isInvincible=false;
	invincibleElapsed=0;
image_blend=c_white;

}
	move_towards_point( x, y,0 );
image_index = 0

if (invincibleElapsed%2==0){
x+=4;
}else{
x-=4;}



}else{
	
	dis1=point_distance(x,y,obj_player1.x,obj_player1.y)
	dis2=point_distance(x,y,obj_player2.x,obj_player2.y)
	
	
	if (dis1>dis2 && dis2 > 30){
	if(obj_player2.x>x){
	image_xscale=1;
	}else{
	image_xscale=-1;
	
	}
	
	move_towards_point( obj_player2.x, obj_player2.y, spd );

	}else if (dis1>30){
		move_towards_point(obj_player1.x, obj_player1.y, spd );

	if(obj_player1.x>x){
	image_xscale=1;
	}else{
	image_xscale=-1;
	
	}


	}else{
		move_towards_point( x, y,0 );
	}
	

}