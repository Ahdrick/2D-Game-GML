///
	
// Make the enemy flash colors
if (flinch == true) || (EnemyState == -1){
	//gpu_set_blendenable(false);
	//gpu_set_blendmode(bm_add)  // sets blend mode
	var myalpha=  random  (1); 
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_ltgray,myalpha)
	//gpu_set_blendmode(bm_normal)  // restores blend mode afterwards
}
else
	draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)