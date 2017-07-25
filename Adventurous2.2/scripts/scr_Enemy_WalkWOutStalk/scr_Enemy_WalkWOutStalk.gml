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


	if (distance_to_object(obj_player) < 400){
		if (distance_to_object(obj_player) > 5){
			enable_movement_platform_actions(.6,1,3.5,right,left,jump,0);
			move_movement_entity();

			if (obj_player.x < x && place_meeting(x,y+1, obj_solid))
			{
				left  = 1;
				right = 0;
			}
			else if(obj_player.x > x && place_meeting(x,y+1, obj_solid))
			{
				left  = 0;
				right = 1;
			}
			else
			{
				right = 0;
				left  = 0;
			}
		}
	}
}


