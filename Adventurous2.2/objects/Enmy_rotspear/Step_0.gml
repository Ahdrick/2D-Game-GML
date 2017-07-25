// If dead
if (currentHealth < 0) 
	scr_Enemy_DeathFade();
else {

			
	if (sprite_index = spr_run) {
		scr_Enemy_WalkWOutStalk();
		}
	else if ((sprite_index = spr_runbackwards)){

		scr_Enemy_WalkWOutStalkBackwards();
		}
	else {
		scr_Enemy_stand();
		}
}
