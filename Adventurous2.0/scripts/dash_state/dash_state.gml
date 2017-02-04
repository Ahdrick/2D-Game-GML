// Stamina Down 
//hspd		 = 62;
//max_run      = 8;



if(DashL && canCombo && (currentEnergy > ((100/stamDown)-5))){


	sprite_index = spr_player_dash;
	image_speed =.6;
	if(Left)
		image_xscale = -1;
	if(Right)
		image_xscale = 1;
		
		
		
		
		
	// Check left or right of collison
	var mysign; 
	if (image_xscale == 1)
		 mysign = 1; 
	else 
		 mysign = -1
	// send back
	add_movement_horizontal_vertical_maxspeed(10*-mysign, 0, 10*-mysign, 0)

	// effect??? TBD 
		currentEnergy -= (100/stamDown);
		if(currentEnergy < 0)
		{
			stamCD   = true;
			alarm[3] = stamTimer;
		}
}

draw_state = "Dash"