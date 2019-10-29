/// @description Insert description here
// You can write your code in this editor

show_debug_message("ALARM 0")
itemType = ds_queue_dequeue(global.PICKED_UP_ITEMS);
stringToShow = global.nameOfItems[itemType]
counter = 1

//While the QUEUE is not empty and the head of the queue is equal to 
//what we initially pop off
while(!ds_queue_empty(global.PICKED_UP_ITEMS) and 
global.nameOfItems[ds_queue_head(global.PICKED_UP_ITEMS)] 
== stringToShow){
	//Increment the counter by 1
	counter += 1
	ds_queue_dequeue(global.PICKED_UP_ITEMS)
}
//Then display the string
textToShow = stringToShow + " X " + string(counter)

//If the Q is still not empty, call the function again
if(!ds_queue_empty(global.PICKED_UP_ITEMS)){
	alarm[0] = room_speed * alarmTime
}else{
	//else reset the alarm
	alarmCalled = true
	alarm[1] = room_speed * 1
}