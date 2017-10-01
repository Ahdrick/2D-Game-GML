if(Block and canBlock and not attacking and not dashing)
{
	// stops movement during blocking not falling
	if place_meeting(x,y+1,collision_object)
	{
		hsp[0] = 0
		hsp[1] = 0
	}

	// if your not currently blocking
	if(anim < 9 or anim > 11)
	{
		sprIndex = 0
		anim = 9
	}
		
	// if you are at the last frame of the plling shield up animation
	// your concidered to be blocking
	if(anim == 9 and sprIndex >= anim_length[anim] - 1)
		blocking = true
	else
		anim_speed = anim_speed_default + 8
			
	// if your holding your shield up and blocking  
	if(anim == 9 and blocking)
	{
		anim_speed = 0
		sprIndex = anim_length[anim] - 1
			
		// enough stamina to succesfully block so pplay block animation
		if(keyboard_check_pressed(ord("B")) and curStam >= blockStamDown) 
		{// swap key inputwith enemy attack
			sprIndex = 0
			anim = 10
			anim_speed = anim_speed_default
			curStam -= blockStamDown
		}
			
		// not enough stamina so your shield breaks
		else if(keyboard_check_pressed(ord("B")) and curStam < blockStamDown)
		{// testing block breaking
			sprIndex = 0
			anim = 11
			anim_speed = anim_speed_default
			curStam -= blockStamDown
			blocking = false
			canBlock = false 
			alarm[1] = 60 // alarm sets the canBlock to true
		}
	}
		
	// if you succesfully block and that animation ends
	// reset to the blocking animation
	if(anim == 10 and floor(sprIndex) == anim_length[anim] - 1)
	{
		sprIndex = 6
		anim = 9
		anim_speed = anim_speed_default
	}
}
	
// reset to idle if you sto blocking
else if(anim >= 9 and anim <= 11 and !Block)
{
	sprIndex = 0
	anim_speed = anim_speed_default
	anim = 0
	blocking = false
}
	
// if your block was broken and you're at the end of the animation
// and you cant block yet then idle 
if(anim == 11 and sprIndex >= anim_length[anim] - 1 and !canBlock)
{
	sprIndex = 0
	anim = 0
	anim_speed = anim_speed_default
}
	
if !canBlock and curStam >= 10
	canBlock = true