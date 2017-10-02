/// This Determine Behahaviour

if (currentHealth > 0) {
	if (distance_to_object(player) > 50)
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
		
	if (sprite_index = spr_angle1)
		alarm[2] = 40;
	}
else 
		sprite_index = spr_death;