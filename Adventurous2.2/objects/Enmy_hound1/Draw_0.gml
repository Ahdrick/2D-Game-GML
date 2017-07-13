draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)

// Maybe this is wrong...but fade out through animation?
if (currentHealth > 0)
	scr_enemy_gui(); 
else {
	if (death == false) {
		image_index = 0;
		death = true;
		} 
	image_alpha = (image_number -image_index) /  image_number;
	image_speed = .85; 
	if (image_index > image_number - 1) 
		instance_destroy();
	}
