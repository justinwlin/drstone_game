/// @description Insert description here
// You can write your code in this editor
daynightBool = not daynightBool
alarmCalled = false
if (daynightBool == false){
//spawn enemies

var i=0;
for(i=0;i<dayCount;i+=1){
instance_create_layer(random(1000),random(700),"Instances",obj_Enemy);
}
dayCount++;
}