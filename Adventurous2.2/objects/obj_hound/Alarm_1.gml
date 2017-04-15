
 if (EnemyState != -1){
//instance_create_depth(x,y,200, obj_attack_mask);
	image_speed    = 1.4;
	image_index    = 0;
	sprite_index   = spr_Attack1;
	jump =1;
		add_movement_horizontal_vertical((4*-image_xscale),-5);
}