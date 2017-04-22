/// 
x = obj_player.x;
y = obj_player.y;
image_speed =obj_player.image_speed ;


sprite = obj_player_cloths.PSWsI;
//sprite PSWsI,PiI,x,y,PxS,1,0,-1,1); 
/*
switch(obj_player_cloths.sprite_index)
{
	case spr_cloak_swing1_0:
		sprite = spr_swing_mask1;
	break;
	
	case spr_cloak_swing2_0:
		sprite = spr_swing_mask2;
	break;
	
	case spr_cloak_swing3_0:
		sprite = spr_swing_mask3;
	break;
}*/
//image_xscale = -obj_player.image_xscale;
image_xscale = -obj_player_cloths.PxS;
sprite_index = sprite;
image_index  = obj_player_cloths.PiI;
//image_index  = obj_player.image_index;