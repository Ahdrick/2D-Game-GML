combo          = (combo+1)%maxCombo;
//jump = 1;
 if (currentHealth >0 ){
//instance_create_depth(x,y,200, obj_attack_mask);
	image_speed    = 1.4;
	image_index    = 0;
	sprite_index   = sprCombo[combo];
if (combo != 0){
	if (image_number >5)
		add_movement_horizontal_vertical((10*-image_xscale),0);
	else{
		enable_movement_platform_actions(.6,1,-3,0,0,0,0);
		move_movement_entity();
		}
	}
}