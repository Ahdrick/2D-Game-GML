if (state == attack_state)
{
	state     = move_state;
	alarm[1]  = 15;
}
if(state == potion_state)
{
	state = move_state;
}
if(state = jump_state)
{
	state = move_state;
}
if(state = block_state)
{
	if(blockState == 0)
	{
		blockState = 1;
		
	}
	state = move_state;
}
if(currentEnergy < 0)
	state = move_state;
	
script_execute(state);
