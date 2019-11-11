/// @description Insert description here
// You can write your code in this editor
if (isPaused){return;}

if(other.itemType==0 || other.itemType==1||other.itemType==2){
other.currHealth-=1;
isPaused=true;
return;
}

if (isInvincible)return;

if (other.itemType==3){
other.currHealth-=2;
isInvincible=true;
currHealth-=2;
}
if (other.itemType==4){
other.currHealth-=1;
isInvincible=true;
currHealth-=3;

}