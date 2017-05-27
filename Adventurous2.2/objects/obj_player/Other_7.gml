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
		state     = move_state;
		canCombo  = true;
		alarm[1]  = 10;
	}
	if(state == potion_state)
	{
		state = move_state;
	}
	if(state == jump_state)
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