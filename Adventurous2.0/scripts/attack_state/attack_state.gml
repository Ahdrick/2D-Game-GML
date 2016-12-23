/// attack_State()
if(Attack && canCombo && (currentEnergy > ((100/stamDown)-5)))
{
	//var hspd = 0;
	image_index  = 0;
	image_speed  = 1;
	sprite_index = sprCombo[combo];
	canCombo     = false;
	combo        = (combo+1)%maxCombo;
	currentEnergy -= (100/stamDown);
	if(currentEnergy < 0)
	{
		stamCD   = true;
		alarm[3] = stamTimer;
	}
}
