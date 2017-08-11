if(!instance_exists(obj_attack_mask))
	instance_create_depth(x,y,depth,obj_attack_mask);
	
if(state == jump_attack_state)
	hspd = hspd/16;

/*
image_speed =.2; 
image_index = spr_player_jump_attack;

if(Attack && canCombo && curStam > (stamDown -1))
{
	instance_create_depth(x,y,200, obj_attack_mask);
	image_speed    = 1.4;
	image_index    = 0;
	sprite_index   = sprCombo[combo];
	combo          = (combo+1)%maxCombo;
	curStam        -= stamDown;
	canCombo       = false;
	
	if(currentEnergy < 0)
	{
		stamCD   = true;
		alarm[3] = stamTimer;
	}
}

if(!canCombo && image_index > (image_number - 5) && sprite_index == sprCombo[2])
	canCombo = true;
if(!canCombo && image_index > (image_number - 4) && sprite_index == sprCombo[1])
	canCombo = true;
if(!canCombo && image_index > (image_number - 2) && sprite_index == sprCombo[0])
	canCombo = true;