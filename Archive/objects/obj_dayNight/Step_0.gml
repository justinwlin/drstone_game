/// @description Insert description here
// You can write your code in this editor


if(daynightBool){
	stringToDisplay = "Day: " + string(dayCount)
	global.DAY = true
}else{
	stringToDisplay = "Night: " + string(dayCount)
	global.DAY = false
}

if(not alarmCalled){
	alarm[0] = room_speed * secondsInADay
	alarmCalled = true
}