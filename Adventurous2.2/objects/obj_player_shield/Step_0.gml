/// 
x = obj_player.x;
y = obj_player.y;
image_xscale = obj_player.image_xscale;
image_speed  = obj_player.image_speed;
image_index  = obj_player.image_index;

switch(obj_player.sprite_index)
{
	case spr_player_shield:
		sprite_index = spr_shield_shield_0;
	break;
	
	case spr_player_block:
		sprite_index = spr_shield_block_0;
	break;
	
	case spr_player_break:
		sprite_index = spr_shield_break_0;
	break;
}

