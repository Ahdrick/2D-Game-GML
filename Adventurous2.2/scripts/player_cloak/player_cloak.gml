///player_cloak
Pce   = argument0;
PcMax = argument1;

if(Pce < PcMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_cloak_stand_N1:
			PCsI = standCloak[Pce];
		break;
	
		case spr_cloak_run_N1:
			PCsI = runCloak[Pce];
		break;
	
		case spr_cloak_swing1_N1:
			PCsI = swing1Cloak[Pce];
		break;
	
		case spr_cloak_swing2_N1:
			PCsI = swing2Cloak[Pce];
		break;
	
		case spr_cloak_swing3_N1:
			PCsI = swing3Cloak[Pce];
		break;
	
		case spr_cloak_heal_N1:
			PCsI = potionCloak[Pce];
		break;
	
		case spr_cloak_jump_N1:
			PCsI = jumpCloak[Pce];
		break;
	
		case spr_cloak_flinch_N1:
			PCsI = flinchCloak[Pce];
		break;
	
		case spr_cloak_shield1_N1:
			PCsI = shieldCloak[Pce];
		break;
	
		case spr_cloak_shield2_N1:
			PCsI = blockCloak[Pce];
		break;
	
		case spr_cloak_shield3_N1:
			PCsI = breakCloak[Pce];
		break;
	
		case spr_cloak_death_N1:
			PCsI = deathCloak[Pce];
		break;
	}
}
else 
	visible = false;