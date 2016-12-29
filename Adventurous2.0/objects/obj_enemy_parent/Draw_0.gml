/// @description Insert description here
// You can write your code in this editor

	
// Make the enemy flash colors
if (EnemyState != -1){
	//gpu_set_blendenable(false);
	//gpu_set_blendmode(bm_add)  // sets blend mode
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_black,.8) //draws text
	//gpu_set_blendmode(bm_normal)  // restores blend mode afterwards
}
else
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)