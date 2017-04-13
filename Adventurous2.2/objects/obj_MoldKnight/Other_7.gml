/// Death equels true
if (sprite_index == spr_Attack1)
{
	canAttack = true;
	sprite_index = spr_run;
}//

if (sprite_index == spr_Attack2)
{
	canAttack = true;
	sprite_index = spr_run;
}

if (sprite_index == spr_idle2)
{
	if(alarm[1] == -1)
		alarm[1] = 60;
}



if (sprite_index == spr_death)
{
	if (death == false){
		image_speed = 0;
		image_index = 1;
		death = true;	
	}
}

