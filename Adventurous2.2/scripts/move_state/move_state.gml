if (flinch ==false )
	sprite_index = spr_player_run;
else 
	sprite_index = spr_player_flinch;
	

if(Left)
	image_xscale = -1;
if(Right)
	image_xscale = 1;
draw_state = "Run"