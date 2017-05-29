/// attack_state		
if(!instance_exists(obj_attack_mask))
	instance_create_depth(x,y,depth,obj_attack_mask);
	
if(state == attack_state)
	hspd = hspd/16;

/*
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