// idle slow down idle speed default was too fast
if(anim == 0 or anim == 24)
	anim_speed = anim_speed_default-4
else
	anim_speed = anim_speed_default
		
// controls the walk and when to walk 
// this needs to be altered a lot based on what animation
// gets broken by walking inturpting it
if(hspd != 0 and (Left or Right) and not attacking
   and grounded and (anim != 6 or anim != 26) 
   and not Block and not dashing)
{
	if(anim != 1 and anim != 25)
	{
		sprIndex = 0
		if(obj_menu.weaponType == 0)
			anim = 1
		else if(obj_menu.weaponType == 1)
			anim = 25
	}
}
	
// resets to idle
if((anim == 1 or anim == 25) and hspd == 0)
{
	sprIndex = 0
	if obj_menu.weaponType == 0
		anim = 0
	else if obj_menu.weaponType == 1
		anim = 24
}