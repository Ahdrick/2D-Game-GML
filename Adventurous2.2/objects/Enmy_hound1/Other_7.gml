/// This Determine Behahaviour

if (currentHealth > 0) {
	if (distance_to_object(player) < 300)
		sprite_index = sprCombo[mycombo];
	else 
		sprite_index = spr_idle3; 

	if (mycombo < Combo_length)
		mycombo+=1;
	else 
		mycombo =0; 
		
	if (sprite_index = spr_attack1)
		alarm[0] = 1;
		
	}
else 
		sprite_index = spr_death;