if (flinch == false)
{
	if anim == 7
	{
		sprIndex = 0
		anim = 0
	}
	enable_movement_platform_actions(.6,runSpeed,4.7,Right,Left,Jump,0)
}
if (flinch == true)
{
	if(anim != 7)
	{
		sprIndex = 0
		anim = 7
	}
	if(alarm[2] == -1)
		alarm[2] = 3
}