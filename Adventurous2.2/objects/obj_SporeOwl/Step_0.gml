///
///Player basics
//image_blend= c_black;
//draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,image_angle,c_black,1)
if (EnemyState != -1){
		

				
		if (obj_player.x < x){	
				image_xscale = 1;
			}
		else {
				image_xscale = -1;
			}	
			
		enable_movement_platform_actions(.6,3,6.5,right,left,jump,0);
		
		move_movement_entity();
		// if close stay still
		// if far away run towards; 
		if (object_exists(obj_player))
		{
			if (distance_to_object(obj_player) > 125)
			{
				sprite_index = spr_SporeOwl_Idle2;
				//canAttack = true;	 
			}
		
			if (distance_to_object(obj_player) < 125 && distance_to_object(obj_player) > 100)
			{
				sprite_index = spr_SporeOwl_Idle1;
				canAttack = true;	 
			}
			if(distance_to_object(obj_player) <= 100)
			{
			
				    sprite_index = spr_SporeOwl_Agro;
					image_index  = 0; 
					if (canAttack == true){
					if(alarm[1] == -1)
						alarm[1] = 35;
					sprite_index = spr_SporeOwl_Scream;
						}
					else 
						sprite_index = spr_SporeOwl_Scream2;
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
	

