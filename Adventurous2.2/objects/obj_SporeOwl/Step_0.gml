///
///Player basics

image_blend= c_black;
draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_black,1)
if (EnemyState != -1){

		enable_movement_platform_actions(.6,3,6.5,right,left,jump,0);
		move_movement_entity();
		// if close stay still
		// if far away run towards; 
		if (object_exists(obj_player))
		{
			if (distance_to_object(obj_player) < 600 && distance_to_object(obj_player) > 25)
			{
				sprite_index = spr_SporeOwl_Agro;

				if(left)
					image_xscale = 1;
				if(right)
					image_xscale = -1;
				canAttack = true;	 
			}
			if(distance_to_object(obj_player) <= 25)
			{
				if (EnemyState != -1 && canAttack)
				{
					canAttack = false;
				sprite_index = spr_SporeOwl_Agro;
					image_index  = 0; 
					if(alarm[1] == -1)
						alarm[1] = 5;
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
if(death && place_meeting(x,y+1,obj_solid))
	image_alpha -= .1;
if(image_alpha < 0)
	instance_destroy();
	

