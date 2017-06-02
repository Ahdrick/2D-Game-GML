/// potion_state()
mask_index = spr_player_mask;
if (currentHealth > 0){
	if((numPotion > 0) && (currentHealth < maxHealth) && (canDrink))
	{
		canDrink       = false;
		numPotion     -= 1;
	
		if(betterPotions == true)
			currentHealth += 2;
		else 
			currentHealth += 1;
		
		image_index    = 0;
		sprite_index   = spr_player_potion;
		image_speed    = 1.4; 
		alarm[2]       = 60;
	}
	draw_state = "Potion"
}