// If dead
if (currentHealth < 0) 
	scr_Enemy_DeathFade();
else {
	if (sprite_index = spr_run)
		scr_Enemy_WalkWOutStalk();
	else 
		scr_Enemy_stand();
}

if (sprite_index == spr_attack2){
	if ((round (image_index) == 5) ){
		add_movement_horizontal_vertical((1.3*-image_xscale),0);

		}
  	
}