/// attack_state		

// stop movement during attack
if(attacking)
{
	if (anim >= 2 and anim <= 4) and animindex == floor(anim_length[anim] / 2)
		hsp[1] += 1*dir
	else
	{
		hsp[0] = 0
		hsp[1] = 0
	}
	anim_speed = anim_speed_default + 2
}
	
if(Attack and not dashing and canAttack and curStam >=0 )
{
	// tells it to combo
	if(!comboing and canCombo)
		comboing = true
	
	if(obj_menu.weaponType == 0) // if you have a short sword
	{	
		// if your not doing attack animation change to 
		// first swing of combo and each addition else if checks
		// the combo variable is true showing that you want to combo
		// then changing to the next swing
		if(vspd == 0 and (anim < 2 or anim > 4))
		{
			sprIndex = 0
			anim = 2
			comboing = false
			curStam -= swordStam
		}
		else if (vspd == 0 and anim == 2 and comboing)
		{
			sprIndex = 0
			anim = 3
			comboing = false
			curStam -= swordStam
		}
		else if(vspd == 0 and anim == 3 and comboing)
		{
			sprIndex = 0
			anim = 4 
			comboing = false
			curStam -= swordStam
		}
	}
	else if(obj_menu.weaponType == 1) // if you have a great sword
	{ 
		if(vspd == 0 and (anim < 28 or anim > 29))
		{
			sprIndex = 0
			anim = 28
			comboing = false
			curStam -= greatStam
		}
		else if(vspd == 0 and anim == 28 and comboing)
		{
			sprIndex = 0
			anim = 29
			comboing = false
			curStam -= greatStam
		}
	}
	else if(obj_menu.weaponType == 2) // if you have daggers
	{ 

	}
}
	
// check if its time to combo
if(sprIndex <= anim_length[anim] - 3)
	canCombo = false
else 
	canCombo = true
	
// set the attacking variable very useful
if((anim >= 2 and anim <= 4) or (anim >= 28 and anim <= 29))
	attacking = true
else
	attacking = false
		
// reset to idle after attacking
if(((anim >= 2 and anim <= 4) or (anim >= 28 and anim <= 29)) and animindex >= anim_length[anim] - 1)
{
	sprIndex = 0
	anim = 0
	canAttack = false
	alarm[0] = 16
}	