PheMax = 1;

for(i = 0; i < PheMax; i++)
{
	swing1Helm[i] = asset_get_index(("spr_helm_swing1_" + string(i)));
	swing2Helm[i] = asset_get_index(("spr_helm_swing2_" + string(i)));
	swing3Helm[i] = asset_get_index(("spr_helm_swing3_" + string(i)));
}
x    = obj_player.x;
y    = obj_player.y;

Phe  = obj_menu.helmEqpd;
PsI  = obj_player.sprite_index;
PxS  = obj_player.image_xscale;
PiS  = obj_player.image_speed;
PiI  = obj_player.image_index;

PHsI = 5;
Phe  = 5;