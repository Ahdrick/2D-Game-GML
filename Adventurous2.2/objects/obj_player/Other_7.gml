// Check if dead
if(state == dead_state)
{
	image_index = image_number - 1;
	image_speed = 0;
}
else
{
	if(state == attack_state)
	{

		if(combo < comboCount)
		{
			if(sprite_index != sprCombo[combo])
			{
				image_index  = 0;
				sprite_index = sprCombo[combo];
				curStam -= stamDown;
			}
			combo++;
		}
		else 
		{
			state = move_state 
			script_execute(state);
			combo = 0;
			comboCount = 0;
		}
		if(curStam < 0)
		{
			stamCD   = true;
			alarm[3] = stamTimer;
		}
		
	}
	if(state == potion_state)
	{
		state = move_state;
	}
	if(state == jump_state)
	{
		state = move_state;
	}
	if(state == jump_attack_state)
	{
		state = move_state;
	}
	if(state == dash_state)
	{
		state = move_state;
		canDash = true;
	}
	if(state == block_state)
	{
		if(blockState != 0)
		{
			blockState = 0;
			image_index = 6;
		}
	}


	if(curStam < 0 )
		state = move_state;

	script_execute(state);
}