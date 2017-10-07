// Potions
if(Potion and numPotion != 0 and place_meeting(x,y+1,collision_object) and not attacking and not blocking)
{
	if(anim != 5)
	{
		sprIndex = 0
		anim = 5
	}		
}
	
// stop moving if your drinking .... dont want to spill it do you?
if(anim == 5)
{
	hsp[0] = 0
	hsp[1] = 0
}
	
// stop drinking ... when your done drinking
if(anim == 5 and animindex == anim_length[anim] - 1)
{
	sprIndex = 0
	anim = 0
	numPotion--
	// implement potions here if potion =  0 - maxnumbpotions do this
}