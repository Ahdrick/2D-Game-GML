// Stamina Down 
//hspd		 = 62;
//max_run      = 8;
if(DashL && canCombo && (currentEnergy > ((100/stamDown)-5))){
	// Handle Sprites
	sprite_index = spr_player_run;
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
	add_movement_horizontal_vertical_maxspeed(9*mysign, -4, 11*mysign, -4)

	// effect??? TBD 
		currentEnergy -= (100/stamDown);
		if(currentEnergy < 0)
		{
			stamCD   = true;
			alarm[3] = stamTimer;
		}
}
