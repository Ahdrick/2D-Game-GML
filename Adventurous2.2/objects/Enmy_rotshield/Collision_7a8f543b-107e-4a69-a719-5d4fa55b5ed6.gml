// stuff
if (currentHealth > -1) {
	if (sprite_index = spr_block){
		with (player){
			if(alarm[5] == -1)
						alarm[5] = 20;
						
						// Add knock back
						var mysign; 
						if (x > other.x)
								mysign = 1; 
						else 
								mysign = -1
						hsp[0] = 0;
						hsp[1] = 0;
						vsp[0] = 0;
						vsp[1] = 0;
						if (vsp[0] == 0 && 	vsp[1] == 0)
							add_movement_horizontal_vertical((4*mysign ),-1);
						else
							add_movement_horizontal_vertical((4*mysign ),-1);
						// screen shake 
						obj_camera_controller.Shake_State = 1;
						

		}
	// Shield broken
	sprite_index = spr_break;	
	}

	else{
	// An attack
	if  (sprite_index != spr_break)
		scr_Enemy_Collision_WAttack();	
		}
}