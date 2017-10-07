if flinch 
{
	if anim != 7
	{
		sprIndex = 0
		anim = 7
	}
	if alarm[2] == -1
		alarm[2] = 3
}
else
{
	if anim == 7
	{
		sprIndex = 0
		anim = 0
	}
	
}