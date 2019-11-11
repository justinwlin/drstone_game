/// @description Insert description here
// You can write your code in this editor

if(!ds_queue_empty(global.PICKED_UP_ITEMS)){
	isVisible = true
	if(alarmCalled){
		alarm[0] = room_speed * alarmTime
		alarmCalled = false
	}
	
}

else if (global.SHOW_CRAFTED_ITEM!=""){
isVisible=true
elapsed++;
if (elapsed>100){
	elapsed=0;
	isVisible=false;
	global.SHOW_CRAFTED_ITEM="";
}
}else{
	
	isVisible = false
}
/*
if(isVisible){
	if(alarmCalled){
		alarm[0] = room_speed * alarmTime
		alarmCalled = false
	}
}
*/



