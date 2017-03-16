///

// Make the enemy flash colors
if (flinch == true) || (EnemyState == -1){
	//gpu_set_blendenable(false);
	//gpu_set_blendmode(bm_add)  // sets blend mode
	var myalpha=  random  (1); 
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_dkgray,myalpha)
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_red,myalpha)
	//gpu_set_blendmode(bm_normal)  // restores blend mode afterwards
}
else{
//	var myalpha=  random  (1); 
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,1)
	//draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_black,1)
	//draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_blue,1)
	//gpu_set_blendmode(bm_normal)  // restores blend mode afterwards
}
scr_enemy_gui();
