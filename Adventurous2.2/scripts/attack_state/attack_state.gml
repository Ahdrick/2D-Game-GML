/// attack_State()		
if(Attack && canCombo && curStam > (stamDown - 1))
{
	instance_create_depth(x,y,200, obj_attack_mask);
	image_index    = 0;
	sprite_index   = sprCombo[combo];
	combo          = (combo+1)%maxCombo;
	curStam        = curStam - stamDown;
	canCombo       = false;
	if(curStam < 0)
	{
		stamCD   = true;
		alarm[3] = stamTimer;
	}
}

if(!canCombo && image_index > (image_number - 2) && sprite_index == sprCombo[0])
	canCombo = true;
if(!canCombo && image_index > (image_number - 3) && sprite_index == sprCombo[1])
	canCombo = true;
if(!canCombo && image_index > (image_number - 5) && sprite_index == sprCombo[2])
	canCombo = true;