// Freeze Animation

if (currentHealth <1 ){
	sprite_index = spr_death;
	jump =0;
	EnemyState = -1;
	if ( image_index > image_number - 2 ){
		//scr_item_drop();
	}
	
	if ( image_index > image_number - 1 )
		image_speed = 0;
	enable_movement_platform_actions(.6,1,3.5,0,0,0,0);
	move_movement_entity();
	}
	

