/// @description Insert description here
// You can write your code in this editor/// draw state
if object_exists(obj_player){
	draw_sprite_ext(obj_player.sprite_index,-1,obj_player.x - 15,obj_player.y,obj_player.image_xscale,obj_player.image_yscale,obj_player.image_angle,c_black ,.5)
}