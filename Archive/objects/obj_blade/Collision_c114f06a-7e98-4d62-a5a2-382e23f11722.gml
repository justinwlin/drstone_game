/// @description Insert description here
// You can write your code in this editor
if (!other.isInvincible){
other.currHealth-=2;
other.isShowingHealthBar=true;
other.isInvincible=true;
if (other.currHealth<0){
instance_destroy(other);
instance_create_depth(other.x,other.y,depth-1,obj_juice);
}
}

