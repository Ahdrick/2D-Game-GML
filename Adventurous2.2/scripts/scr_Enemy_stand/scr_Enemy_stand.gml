/// Enemy Basics
if (currentHealth <1 ){
	sprite_index = spr_death;
	jump =0;
	EnemyState = -1;
	}
	
if (obj_player.currentHealth >1){
	if(left)
		image_xscale = 1;
	if(right)
		image_xscale = -1;

	image_speed = .6;

	enable_movement_platform_actions(.6,1,3.5,0,0,jump,0);
	move_movement_entity();
}


