///player_shield
Pse   = argument0;
PsMax = argument1;
if(Pse < PsMax)
{
	switch(obj_player.sprite_index)
	{
		case spr_player_shield:
			PSsI = shieldShield[Pse];
		break;
	
		case spr_player_block:
			PSsI = blockShield[Pse];
		break;
	
		case spr_player_break:
			PSsI = breakShield[Pse];
		break;
		
		default:
			PSsI = breakShield[Pse];
	}
}