/// If Hit By Enemy and enemy not dead set flash alarm


	if (state == block_state){
			// if blocking knocking back enemy ?
	}
	else if (flinch == false){
		sprite_index = spr_player_flinch;
		flinch = true;
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
			add_movement_horizontal_vertical((5*-image_xscale),0);
	
		else
			add_movement_horizontal_vertical((3*-image_xscale),0);
				// screen shake 
	obj_camera_controller.Shake_State = 1;

	}



