///player_helm
Phe	   = argument0;
PheMax = argument1;

if(Phe < PheMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{

		case spr_player_swing_1:
			PHsI = swing1Helm[Phe];
			break;
	
		case spr_player_swing_2:
			PHsI = swing2Helm[Phe];
			break;
	
		case spr_player_swing_3:
			PHsI = swing3Helm[Phe];
			break;
	}
}
else
	visible = false;
