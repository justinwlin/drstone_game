/// @description Insert description here
// You can write your code in this editor
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