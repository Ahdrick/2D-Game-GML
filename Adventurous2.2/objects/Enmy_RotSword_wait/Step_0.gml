if (currentHealth > 0) {
	scr_Enemy_WalkWStalk();
	
	if (distance_to_object(obj_player) > 50)
		sprite_index = spr_run; 
	else 
		sprite_index = spr_attack1;
	}
else 
	scr_Enemy_DeathNoFade();
/// Wait Walk

// Jump Alarm


// Death
