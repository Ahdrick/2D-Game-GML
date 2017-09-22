/// block_state()
mask_index = spr_player_mask;
if (currentHealth > 0){
	if(canBlock)
	{ 
		combo		= 0;
		comboCount  = 0;
		if(blockState == 0)
		{
			hsp[0] = 0;
			hsp[1] = 0;
		}
		if(sprite_index != sprBlock[blockState])
		{
			if(sprite_index == sprBlock[1] && blockState == 0)
				image_index = 6;
			else
				image_index  = 0;
			sprite_index = sprBlock[blockState];
		}
		if(image_index > image_number - 2 && blockState == 0)
		{
			image_speed = 0;
			instance_create_depth(x,y,199,obj_shield_mask);
		}

		if(curStam < 0 && blockState != 2)
		{
			blockState   = 2;
			canBlock     = false;
			sprite_index = sprBlock[blockState];
			if(sprite_index == sprBlock[blockState] && image_index == image_number -1)
				canBlock = true;
		}
	}

	if(instance_exists(obj_shield_mask))
		if(obj_shield_mask.blocked == true)
		{	
			obj_shield_mask.blocked = false;
			image_index = 0;
			blockState  = 1;
			add_movement_horizontal_vertical((3*-image_xscale),0);
			curStam     -= stamDown;
		}
//draw_state = "Block"
//blockState 0 starting to block
//blockState 1 hit while blocking
//blockState 2 hit and no energy to spend gets knocked
}