///player_helm
Pswe   = argument0;
PswMax = argument1;

if(Pswe < PswMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_player_stand:
			PSWsI = standSword[Pswe];
		break;

		case spr_player_run:
			PSWsI = runSword[Pswe];
		break;

		case spr_player_swing_1:
			if ((obj_player.vsp[0] == 0))
				PSWsI = swing1Sword[Pswe];
			else 
				PSWsI = jumpAttackSword[Pswe];
		break;
	
		case spr_player_swing_2:
			if ((obj_player.vsp[0] == 0))
				PSWsI = swing2Sword[Pswe];
			else 
				PSWsI = jumpAttackSword[Pswe];
		break;
	
		case spr_player_swing_3:
			if ((obj_player.vsp[0] == 0))
				PSWsI = swing3Sword[Pswe];
			else 
				PSWsI = jumpAttackSword[Pswe];
		break;
	
		case spr_player_potion:
			PSWsI = potionSword[Pswe];
		break;
	
		case spr_player_jump:
			PSWsI = jumpSword[Pswe];
		break;
		
		case spr_player_jump_attack:
			PSWsI = jumpSword[Pswe];
		break;

		case spr_player_flinch:
			PSWsI = flinchSword[Pswe];
		break;
	
		case spr_player_shield:
			PSWsI = shieldSword[Pswe];
		break;
	
		case spr_player_block:
			PSWsI = blockSword[Pswe];
		break;
	
		case spr_player_break:
			PSWsI = breakSword[Pswe];
		break;
	
		case spr_player_death:
			PSWsI = deathSword[Pswe];
		break;
		
		case spr_player_dash:
			PSWsI = dashSword[Pswe];
		break;
	
		
		default: 
			PHsI = standSword[Pswe];
		break;
	}
}
else
	visible = false;
