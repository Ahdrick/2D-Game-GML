///player_helm
Phe	   = argument0;
PheMax = argument1;

if(Phe < PheMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_player_stand:
			PHsI = standHelm[Phe];
			break;

		case spr_player_run:
			PHsI = runHelm[Phe];
			break;

		case spr_player_swing_1:
			PHsI = swing1Helm[Phe];
			break;
	
		case spr_player_swing_2:
			PHsI = swing2Helm[Phe];
			break;
	
		case spr_player_swing_3:
			PHsI = swing3Helm[Phe];
			break;
	
		case spr_player_potion:
			PHsI = potionHelm[Phe];
			break;
	
		case spr_player_jump:
			PHsI = jumpHelm[Phe];
			break;

		case spr_player_flinch:
			PHsI = flinchHelm[Phe];
			break;
	
		case spr_player_shield:
			PHsI = shieldHelm[Phe];
			break;
	
		case spr_player_block:
			PHsI = blockHelm[Phe];
			break;
	
		case spr_player_break:
			PHsI = breakHelm[Phe];
			break;
	
		case spr_player_death:
			PHsI = deathHelm[Phe];
			break;
			
		case spr_player_dash:
			PHsI = dashHelm[Phe];
			break;
			
		default:
			PHsI = deathHelm[Phe];
			break;
	}
}
else
	visible = false;
