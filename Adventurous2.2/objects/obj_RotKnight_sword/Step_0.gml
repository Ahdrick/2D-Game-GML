///Player basics
///Player basics
if (currentHealth <1 ){
	sprite_index = spr_death;
	jump =0;
	EnemyState = -1;
	}
	
if(left)
	image_xscale = 1;
if(right)
	image_xscale = -1;

image_speed = .6;

// if not dead
if (EnemyState != -1){
	if ((distance_to_object(obj_player) < 100) || (follow == true))
		follow = true;
		if (sprite_index !=spr_Attack1)
			sprite_index =spr_run;		
		if (sprite_index ==spr_run){
			enable_movement_platform_actions(.6,1,3.5,right,left,jump,0);
			move_movement_entity();
		}
		else{
				enable_movement_platform_actions(.6,4,3.5,0,0,0,0);
				move_movement_entity();
		}
				
		// if close stay still
		// if far away run towards; 
		if (object_exists(obj_player))
		{
			
			if(distance_to_object(obj_player) <= 70)
			{
				if ((EnemyState != -1) && canAttack == true)
				{
					if(distance_to_object(obj_player) <= 30)
						{
						canAttack = false;
						combo = 0;
						if(alarm[1] == -1)
							alarm[1] = 60;
						image_index  = 0; 
						}
					else {
						sprite_index = spr_run;
						}
				}
			}
			else
				jump = 0;
		}
}
// If dead 
	else{
				enable_movement_platform_actions(.6,4,3.5,0,0,0,0);
				move_movement_entity();
				jump = 0;
				}
				
// Handle Death
if(death && place_meeting(x,y+1,obj_solid))
	image_alpha -= .1;
if(image_alpha < 0)
	instance_destroy();

