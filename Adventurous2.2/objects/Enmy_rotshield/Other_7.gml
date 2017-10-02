/// This Determine Behahaviour

if (currentHealth > 0) {
		
	// change direction 
		if (x > player.x){
				image_xscale = 1;
			}
		else{
				image_xscale = -1;
			}
	// Should I enter combo?
	if (distance_to_object(player) > 100)
		sprite_index = sprCombo[mycombo];
	else {
		sprite_index = sprCombo2[mycombo]	
			}
			
		
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
		
			

	}
else 
		sprite_index = spr_death;
	