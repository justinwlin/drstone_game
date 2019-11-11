/// @description Insert description here
// You can write your code in this editor
show_debug_message("OTHER HEALTH")
show_debug_message(other.currHealth)
if (isPaused){return;}

if(other.itemType==0 || other.itemType==1||other.itemType==2){
show_debug_message("FIRST TYPE")
other.currHealth-=1;
isPaused=true;
return;
}

if (isInvincible)return;

if (other.itemType==3){
	show_debug_message("Second TYPE")
other.currHealth-=2;
isInvincible=true;
currHealth-=2;
}
if (other.itemType==4){
	show_debug_message("LAST TYPE")
other.currHealth-=1;
isInvincible=true;
currHealth-=3;

}
