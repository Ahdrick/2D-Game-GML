// If dead
if (currentHealth < 0) 
	scr_Enemy_DeathFade();
else {
	if (sprite_index = spr_run)
		scr_Enemy_WalkWStalk(8);
	else 
		scr_Enemy_stand();
}