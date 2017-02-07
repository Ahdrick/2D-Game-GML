/// 
x = obj_player.x;
y = obj_player.y;

switch(obj_player.sprite_index)
{
	case spr_player_swing_1:
		sprite = spr_swing_mask1;
	break;
	
	case spr_player_swing_2:
		sprite = spr_swing_mask2;
	break;
	
	case spr_player_swing_3:
		sprite = spr_swing_mask3;
	break;
}
image_xscale = obj_player.image_xscale;
sprite_index = sprite;
image_index  = obj_player.image_index;