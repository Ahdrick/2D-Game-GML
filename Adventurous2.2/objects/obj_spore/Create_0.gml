/// @description Insert description here
// You can write your code in this editor
image_alpha =choose(.6,.5,.7,.9,1);
image_angle = irandom(350);
var size = choose(.4,.5,.7,.9);
image_xscale =size; 
image_yscale =size;
move_towards_point(obj_player.x,obj_player.y, 5)
alarm[0] = 300;