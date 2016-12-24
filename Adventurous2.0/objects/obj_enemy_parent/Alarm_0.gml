/// 
if (EnemyState != -1)
{
	enable_movement_platform_actions(.6,4,5,0,0,true,0);
	if(alarm[1] == -1)
		alarm[1] = 5;
	hspd  = -3; 
	sprite_index = spr_S1_attack; 
}