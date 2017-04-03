///player_cloak
Pce   = argument0;
PcMax = argument1;

if(Pce < PcMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_player_stand:
			PCsI = standCloak[Pce];
		break;
	
		case spr_player_run:
			PCsI = runCloak[Pce];
		break;
	
		case spr_player_swing_1:
			PCsI = swing1Cloak[Pce];
		break;
	
		case spr_player_swing_2:
			PCsI = swing2Cloak[Pce];
		break;
	
		case spr_player_swing_3:
			PCsI = swing3Cloak[Pce];
		break;
	
		case spr_player_potion:
			PCsI = potionCloak[Pce];
		break;
	
		case spr_player_jump:
			PCsI = jumpCloak[Pce];
			break;
	
		case spr_player_flinch:
			PCsI = flinchCloak[Pce];
			break;
	
		case spr_player_shield:
			PCsI = shieldCloak[Pce];
			break;
	
		case spr_player_block:
			PCsI = blockCloak[Pce];
			break;
	
		case spr_player_break:
			PCsI = breakCloak[Pce];
			break;
		
		case spr_player_dash:
			PCsI = dashCloak[Pce];
			break;
	
		case spr_player_death:
			PCsI = deathCloak[Pce];
		break;
	}
}
else 
	visible = false;