// Freeze Animation

if (currentHealth <1 ){
	sprite_index = spr_death;
	jump =0;
	EnemyState = -1;
	enable_movement_platform_actions(.6,1,3.5,0,0,0,0);
	move_movement_entity();
	}
	
// Maybe this is wrong...but fade out through animation?
image_alpha = 1 / (image_number - image_index) 



if (image_alpha < .2)
	instance_destroy(); 
	

