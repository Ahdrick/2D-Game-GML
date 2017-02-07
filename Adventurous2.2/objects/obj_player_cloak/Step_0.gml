/// Put my Cloths on
// Px   == player.x
// Py   == player.y
// Pixs == player.image_xscale
// PiS  == player.sprite_image

Px = obj_player.x;
Py = obj_player.y;
Pixs = obj_player.image_xscale;
Pce  = obj_menu.cloakEqpd;
PcMax = 3;

x = Px;
y = Py;
image_xscale = Pixs;
image_speed = obj_player.image_speed;
image_index = obj_player.image_index;

if(Pce < PcMax)
{
	visible = true;
	switch(obj_player.sprite_index)
	{
		case spr_player_stand:
			PsI = standCloak[Pce];
		break;
	
		case spr_player_run:
			PsI = runCloak[Pce];
		break;
	
		case spr_player_swing_1:
			PsI = swing1Cloak[Pce];
		break;
	
		case spr_player_swing_2:
			PsI = swing2Cloak[Pce];
		break;
	
		case spr_player_swing_3:
			PsI = swing3Cloak[Pce];
		break;
	
		case spr_player_potion:
			PsI = potionCloak[Pce];
		break;
	
		case spr_player_jump:
			PsI = jumpCloak[Pce];
		break;
	
		case spr_player_flinch:
			PsI = flinchCloak[Pce];
		break;
	
		case spr_player_shield:
			PsI = shieldCloak[Pce];
		break;
	
		case spr_player_block:
			PsI = blockCloak[Pce];
		break;
	
		case spr_player_break:
			PsI = breakCloak[Pce];
		break;
	
		case spr_player_death:
			PsI = deathCloak[Pce];
		break;
	}
}
else 
visible = false;
sprite_index = PsI;