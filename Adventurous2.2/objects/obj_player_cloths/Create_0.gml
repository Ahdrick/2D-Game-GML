// Stand array for different s stand
PcMax  = 1;
PheMax = 3;
fade   = 0;
instance_create_depth(x,y,depth-1,obj_player_helm_overlay);
for(i = 0; i < PcMax; i++)
{
	standCloak[i]  = asset_get_index(("spr_cloak_stand_"  + string(i)));
	runCloak[i]    = asset_get_index(("spr_cloak_run_"    + string(i)));
	jumpCloak[i]   = asset_get_index(("spr_cloak_jump_"   + string(i)));
	potionCloak[i] = asset_get_index(("spr_cloak_potion_" + string(i)));
	swing1Cloak[i] = asset_get_index(("spr_cloak_swing1_" + string(i)));
	swing2Cloak[i] = asset_get_index(("spr_cloak_swing2_" + string(i)));
	swing3Cloak[i] = asset_get_index(("spr_cloak_swing3_" + string(i)));
	shieldCloak[i] = asset_get_index(("spr_cloak_shield_" + string(i)));
	blockCloak[i]  = asset_get_index(("spr_cloak_block_"  + string(i)));
	breakCloak[i]  = asset_get_index(("spr_cloak_break_"  + string(i)));
	flinchCloak[i] = asset_get_index(("spr_cloak_flinch_" + string(i)));
	deathCloak[i]  = asset_get_index(("spr_cloak_death_"  + string(i)));
	dashCloak[i]   = asset_get_index(("spr_cloak_dash_"   + string(i)));
}
	
for(i = 0; i < PheMax; i++)
{
	dashHelm[i]   = asset_get_index(("spr_helm_dash_"  + string(i)));
	standHelm[i]  = asset_get_index(("spr_helm_stand_"  + string(i)));
	runHelm[i]    = asset_get_index(("spr_helm_run_"    + string(i)));
	jumpHelm[i]   = asset_get_index(("spr_helm_jump_"   + string(i)));
	potionHelm[i] = asset_get_index(("spr_helm_potion_" + string(i)));
	swing1Helm[i] = asset_get_index(("spr_helm_swing1_" + string(i)));
	swing2Helm[i] = asset_get_index(("spr_helm_swing2_" + string(i)));
	swing3Helm[i] = asset_get_index(("spr_helm_swing3_" + string(i)));
	shieldHelm[i] = asset_get_index(("spr_helm_shield_" + string(i)));
	blockHelm[i]  = asset_get_index(("spr_helm_block_"  + string(i)));
	breakHelm[i]  = asset_get_index(("spr_helm_break_"  + string(i)));
	flinchHelm[i] = asset_get_index(("spr_helm_flinch_" + string(i)));
	deathHelm[i]  = asset_get_index(("spr_helm_death_"  + string(i)));
}

for(i = 0; i < 1; i++)
{
	standSword[i]  = asset_get_index(("spr_sword_stand_"  + string(i)));
	runSword[i]    = asset_get_index(("spr_sword_run_"    + string(i)));
	jumpSword[i]   = asset_get_index(("spr_sword_jump_"   + string(i)));
	potionSword[i] = asset_get_index(("spr_sword_potion_" + string(i)));
	swing1Sword[i] = asset_get_index(("spr_sword_swing1_" + string(i)));
	swing2Sword[i] = asset_get_index(("spr_sword_swing2_" + string(i)));
	swing3Sword[i] = asset_get_index(("spr_sword_swing3_" + string(i)));
	shieldSword[i] = asset_get_index(("spr_sword_shield_" + string(i)));
	blockSword[i]  = asset_get_index(("spr_sword_block_"  + string(i)));
	breakSword[i]  = asset_get_index(("spr_sword_break_"  + string(i)));
	flinchSword[i] = asset_get_index(("spr_sword_flinch_" + string(i)));
	deathSword[i]  = asset_get_index(("spr_sword_death_"  + string(i)));
	dashSword[i]   = asset_get_index(("spr_sword_dash_"  + string(i)));
}

for(i = 0; i < 4; i++)
{

	shieldShield[i] = asset_get_index(("spr_shield_shield_" + string(i)));
	blockShield[i]  = asset_get_index(("spr_shield_block_"  + string(i)));
	breakShield[i]  = asset_get_index(("spr_shield_break_"  + string(i)));

}

x      = obj_player.x;
y      = obj_player.y;

Pce    = obj_menu.cloakEqpd;
PcMax  = 3;
Phe    = obj_menu.helmEqpd;
PheMax = 2;

PxS  = obj_player.image_xscale;
PiS  = obj_player.image_speed;
PiI  = obj_player.image_index;

PCsI = 0;
Pce  = 0;
PHsI = 5;
Phe  = 0;
