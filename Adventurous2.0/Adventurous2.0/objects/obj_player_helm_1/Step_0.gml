/// Put my Cloths on
// Px   == player.x
// Py   == player.y
// Pixs == player.image_xscale
// PiS  == player.sprite_image

Px   = obj_player.x;
Py   = obj_player.y;
Pixs = obj_player.image_xscale;
Phe  = obj_menu.helmEqpd;
PheMax = 4;

x = Px;
y = Py;
image_xscale = Pixs;
image_speed  = obj_player.image_speed;
image_index  = obj_player.image_index;

if(Phe < PheMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_player_stand:
			PsI = standHelm[Phe];
		break;

		case spr_player_run:
			PsI = runHelm[Phe];
		break;

		case spr_player_swing_1:
			PsI = swing1Helm[Phe];
		break;
	
		case spr_player_swing_2:
			PsI = swing2Helm[Phe];
		break;
	
		case spr_player_swing_3:
			PsI = swing3Helm[Phe];
		break;
	
		case spr_player_potion:
			PsI = potionHelm[Phe];
		break;
	
		case spr_player_jump:
			PsI = jumpHelm[Phe];
		break;

		case spr_player_flinch:
			PsI = flinchHelm[Phe];
		break;
	
		case spr_player_shield:
			PsI = shieldHelm[Phe];
		break;
	
		case spr_player_block:
			PsI = blockHelm[Phe];
		break;
	
		case spr_player_break:
			PsI = breakHelm[Phe];
		break;
	
		case spr_player_death:
			PsI = deathHelm[Phe];
		break;
	}
}
else
	visible = false;
	
sprite_index = PsI;