/// @description Insert description here
// You can write your code in this editor

if(!ds_queue_empty(global.PICKED_UP_ITEMS)){
	isVisible = true
}else{
	isVisible = false
}

if(isVisible){
	if(alarmCalled){
		alarm[0] = room_speed * alarmTime
		alarmCalled = false
	}
}