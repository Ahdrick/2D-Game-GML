/// This Determine Behahaviour

if (currentHealth > 0) {
			
	if (sprite_index != spr_runbackwards){
		if(left)
			image_xscale = 1;
		if(right)
			image_xscale = -1;
		}
		
	if (distance_to_object(obj_player) > 100)
		sprite_index = sprCombo[mycombo];
	else 
		sprite_index = sprCombo2[mycombo]	

	if (mycombo < Combo_length)
		mycombo+=1;
	else 
		mycombo =0; 
		
	if (mycombo2 < Combo_length)
		mycombo2+=1;
	else 
		mycombo2 =0; 
		
	if (sprite_index = spr_attack1)
		alarm[0] = 1;
		
	if (sprite_index = spr_attack2)
		alarm[1] = 40;
				
	if (sprite_index != spr_runbackwards){
		if(left)
			image_xscale = 1;
		if(right)
			image_xscale = -1;
		}


	}
else 
		sprite_index = spr_death;