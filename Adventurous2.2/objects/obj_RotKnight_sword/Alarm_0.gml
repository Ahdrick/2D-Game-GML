///Backdash.
sprite_index=spr_run;

if (currentHealth >0 ){
//instance_create_depth(x,y,200, obj_attack_mask);
	image_speed    = 1.4;
	image_index    = 0;
	sprite_index   = sprCombo[combo];
if (combo != 0){
	if (image_number >7)
		add_movement_horizontal_vertical((5*image_xscale),1);
	else{
		enable_movement_platform_actions(.6,1,-3,0,0,0,0);
		move_movement_entity();
		}
	}
}
if(alarm[0] == -1)
	alarm[0] = 60;