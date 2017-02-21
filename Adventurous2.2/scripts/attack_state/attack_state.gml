/// attack_State()
if(Attack && canCombo && currentEnergy > (100/stamDown)-5)
{
	image_speed    = 1.4;
	image_index    = 0;
	sprite_index   = sprCombo[combo];
	combo          = (combo+1)%maxCombo;
	currentEnergy -= (100/stamDown);
	canCombo       = false;
	
	if(currentEnergy < 0)
	{
		stamCD   = true;
		alarm[3] = stamTimer;
	}
}
if(!canCombo && image_index > (image_number - 4) && sprite_index == sprCombo[1])
	canCombo = true;
if(!canCombo && image_index > (image_number - 5) && sprite_index == sprCombo[0])
	canCombo = true;
if(!canCombo && image_index > (image_number - 2) && sprite_index == sprCombo[2])
	canCombo = true;