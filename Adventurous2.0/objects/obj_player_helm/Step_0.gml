/// Put my Cloths on
Px = obj_player.x;
Py = obj_player.y;
Pixs = obj_player.image_xscale;

x = Px;
y = Py;
image_xscale = Pixs;
image_speed = obj_player.image_speed;
image_index = obj_player.image_index;

switch(obj_player.sprite_index)
{
	case spr_player_stand:
		PsI = spr_player_widebrim_stand;
	break;
	case spr_player_run:
		PsI = spr_player_widebrim_run;
	break;
}
sprite_index = PsI;