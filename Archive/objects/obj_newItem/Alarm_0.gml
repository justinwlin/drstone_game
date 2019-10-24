/// @description Insert description here
// You can write your code in this editor

show_debug_message("ALARM 0")
itemType = ds_queue_dequeue(global.PICKED_UP_ITEMS);
stringToShow = global.nameOfItems[itemType]
counter = 1

while(!ds_queue_empty(global.PICKED_UP_ITEMS) and 
global.nameOfItems[ds_queue_head(global.PICKED_UP_ITEMS)] == stringToShow){
	counter += 1
	ds_queue_dequeue(global.PICKED_UP_ITEMS)
}
textToShow = stringToShow + " X " + string(counter)

if(!ds_queue_empty(global.PICKED_UP_ITEMS)){
	alarm[0] = room_speed * alarmTime
}else{
	alarmCalled = true
}