/// If Hit By Enemy and enemy not dead set flash alarm
if (Dead == false){
	if (currentHealth > -1){
		if (other.EnemyState != -1){ 
		   if(flinch == false && state != dead_state)
			{
				sprite_index = spr_player_flinch;
				flinch = true;
				currentHealth -=1; 
				instance_create_depth(x,y,-300,obj_blood);
				if(alarm[5] == -1)
					alarm[5] = 20;
				// Subtract health
				// Add knock back
				var mysign; 
				if (image_xscale == 1)
						mysign = 1; 
				else 
						mysign = -1
				// send back
				hsp[0] = 0;
				hsp[1] = 0;
				if (vsp[0] == 0 && 	vsp[1] == 0)
					add_movement_horizontal_vertical((5*-image_xscale),1);
				else
					add_movement_horizontal_vertical((3*-image_xscale),1);
				// screen shake 
				obj_camera_controller.Shake_State = 1;
			}
		}
	}
		else 
			Dead = true;
}