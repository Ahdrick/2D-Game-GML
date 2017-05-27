mask_index = spr_player_mask;

if (flinch == false)
{
	if((hsp[0] + hsp[1]) == 0 && sprite_index != spr_player_stand)
	{
		sprite_index = spr_player_stand;
		image_index = 0;
	}
	else if((hsp[0] + hsp[1]) != 0)
		sprite_index = spr_player_run;
}
else
	sprite_index = spr_player_flinch;
	

if(Left)
	image_xscale = -1;
if(Right)
	image_xscale = 1;
if(state != dead_state)
{
	if(sprite_index != spr_player_stand)
		image_speed = abs((hsp[0]+hsp[1])/spriteSpeed);
	else if (sprite_index == spr_player_stand)
		image_speed = .6;
}
draw_state = "Run"