if(state == attack_state)
{
	state     = move_state;
	canCombo = true;
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

// Check if dead

if(currentEnergy < 0)
	state = move_state;

script_execute(state);
