/// This Determine Behahaviour

if (currentHealth > 0) {
	if (distance_to_object(obj_player) < 100)
		sprite_index = sprCombo[mycombo];
	else 
		sprite_index = spr_stand; 

	if (mycombo < Combo_length)
		mycombo+=1;
	else 
		mycombo =0; 
		
	if (sprite_index = spr_attack2)
		alarm[0] = 1;
		
	if (sprite_index = spr_stand)
		alarm[1] = 1;
	}
else 
		sprite_index = spr_death;