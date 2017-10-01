if(DashL and curStam > dashStamDown and place_meeting(x,y+1,collision_object) and not Block and not attacking)
{
	// dash code animations and movement
	if(anim != 12)
	{
		sprIndex = 0
		anim = 12
		anim_speed = 12
		dashing = true
			
		hsp[0] = 0
		hsp[1] = 0
	
		hsp[1] -= ((distance)*dir)
		curStam -= dashStamDown
	}
}
// reset to idle from dash
if(anim == 12 and floor(sprIndex) == anim_length[anim] - 1)
{
	dashing = false
	sprIndex = 0
	anim_speed = anim_speed_default
	anim = 0
}