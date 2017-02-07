/// potion_state()

if((numPotion > 0) && (currentHealth < maxHealth) && (canDrink))
{
	canDrink       = false;
	numPotion     -= 1;
	currentHealth += 1;
	image_index    = 0;
	sprite_index   = spr_player_potion;
	image_speed    = 1.4; 
	alarm[2]       = 60;
}