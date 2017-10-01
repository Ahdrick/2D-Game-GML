// if you jumped and could jump 
if(Jump and (anim != 6 or anim != 26) and place_meeting(x,y+1,collision_object) and not blocking and not dashing)
{
	sprIndex = 0
	if obj_menu.weaponType == 0
		anim = 6
	else if obj_menu.weaponType == 1
		anim = 26
}
	
// not grounded aka falling of some sort
if(!place_meeting(x,y+1,collision_object) and vspd < 0)
{
	sprIndex = 3
	grounded = false
	if(obj_menu.weaponType == 0)
		anim = 6
	else if(obj_menu.weaponType == 1)
		anim = 26
}
	
// if your not touching the ground then do stuff in here 
// use the grounded variable in the attacking variable for
// flying attack combos dont do it here. this is basic jumping
// falling and landing
if(!grounded)
{
	anim_speed = 0
	if(vspd < 0     and vspd < -1)
		sprIndex = 1
	if(vspd >= -1 and vspd <= -0.2)
		sprIndex = 2
	if(vspd >= -0.2 and vspd <= 0.5)
		sprIndex = 3
	if(vspd > 0.5   and vspd <= 1)
		sprIndex = 4
	if(vspd > 1 and !place_meeting(x,y+1,collision_object))
		sprIndex = 5
	if(place_meeting(x,y+1,collision_object))
	{
		sprIndex = 7
		grounded = true
	}
}
	
// if your on the ground and need to finish the landing part
// of the animation
// play it faster so it looks like he lands smoother and doesnt
// drag his feet
if(grounded and (anim == 6 or anim == 26))
	anim_speed = anim_speed_default+10
	
// if you landed and the animation ends transition to idle
if(grounded and (anim == 6 or anim == 26) and floor(sprIndex) == anim_length[anim] - 1)
{
	sprIndex = 0
	anim_speed = anim_speed_default
	if(obj_menu.weaponType == 0)
		anim = 0
	if(obj_menu.weaponType == 1)
		anim = 24
}
