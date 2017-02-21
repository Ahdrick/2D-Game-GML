/// block_state()
if(canBlock)
{
	image_speed = 1;
	sprite_index     = sprBlock[blockState];
	
	if(currentEnergy < 0)
	{
		blockState   = 2;
		canBlock     = false;
	}
}
draw_state = "Block"