combo          = (combo+1)%maxCombo;
//jump = 1;
 if (currentHealth >0 ){
//instance_create_depth(x,y,200, obj_attack_mask);
	image_speed    = 1.6;
	image_index    = 0;
	sprite_index   = sprCombo[combo];
if (combo == 0){
	if(left)
		instance_create_depth(obj_player.x-600,obj_player.y-200,300, obj_hound)
	if(right)
		instance_create_depth(obj_player.x+600,obj_player.y-200,300, obj_hound)
	}


	if (combo != 0){
	add_movement_horizontal_vertical((4*-image_xscale),-5);
	}
}