// Stand array for different s stand
/*
for(i = 0; i < 3; i++)
{
	standCloak[i]  = ("spr_cloak_stand_"  + string(i));
	runCloak[i]    = ("spr_cloak_run_"    + string(i));
	jumpCloak[i]   = ("spr_cloak_jump_"   + string(i));
	potionCloak[i] = ("spr_cloak_potion_" + string(i));
	swing1Cloak[i] = ("spr_cloak_swing1_" + string(i));
	swing2Cloak[i] = ("spr_cloak_swing2_" + string(i));
	swing3Cloak[i] = ("spr_cloak_swing3_" + string(i));
	shieldCloak[i] = ("spr_cloak_shield_" + string(i));
	blockCloak[i]  = ("spr_cloak_block_"  + string(i));
	breakCloak[i]  = ("spr_cloak_break_"  + string(i));
	flinchCloak[i] = ("spr_cloak_flinch_" + string(i));
	deathCloak[i]  = ("spr_cloak_death_"  + string(i));
	//dashCloak[i]   = string("spr_cloak_dash_"   + string(i));
}

for(i = 0; i < 4; i++)
{
	standHelm[i]  = ("spr_helm_stand_"  + string(i));
	runHelm[i]    = ("spr_helm_run_"    + string(i));
	jumpHelm[i]   = ("spr_helm_jump_"   + string(i));
	potionHelm[i] = ("spr_helm_potion_" + string(i));
	swing1Helm[i] = ("spr_helm_swing1_" + string(i));
	swing2Helm[i] = ("spr_helm_swing2_" + string(i));
	swing3Helm[i] = ("spr_helm_swing3_" + string(i));
	shieldHelm[i] = ("spr_helm_shield_" + string(i));
	blockHelm[i]  = ("spr_helm_block_"  + string(i));
	breakHelm[i]  = ("spr_helm_break_"  + string(i));
	flinchHelm[i] = ("spr_helm_flinch_" + string(i));
	deathHelm[i]  = ("spr_helm_death_"  + string(i));
	//dashHelm[i]   = string("spr_helm_dash_"   + string(i));
}
*/

x      = obj_player.x;
y      = obj_player.y;

Pce    = obj_menu.cloakEqpd;
PcMax  = 3;
Phe    = obj_menu.helmEqpd;
PheMax = 4;

PxS  = obj_player.image_xscale;
PiS  = obj_player.image_speed;
PiI  = obj_player.image_index;

PCsI = 0;
Pce  = 0;
PHsI = 0;
Phe  = 0;

standCloak[0]  = spr_cloak_stand_0;
runCloak[0]    = spr_cloak_run_0;
jumpCloak[0]   = spr_cloak_jump_0;
potionCloak[0] = spr_cloak_potion_0;
swing1Cloak[0] = spr_cloak_swing1_0;
swing2Cloak[0] = spr_cloak_swing2_0;
swing3Cloak[0] = spr_cloak_swing3_0;
blockCloak[0]  = spr_cloak_block_0;
shieldCloak[0] = spr_cloak_shield_0;
breakCloak[0]  = spr_cloak_break_0;
flinchCloak[0] = spr_cloak_flinch_0;
deathCloak[0]  = spr_cloak_death_0;

standCloak[1]  = spr_cloak_stand_1;
runCloak[1]    = spr_cloak_run_1;
jumpCloak[1]   = spr_cloak_jump_1;
potionCloak[1] = spr_cloak_potion_1;
swing1Cloak[1] = spr_cloak_swing1_1;
swing2Cloak[1] = spr_cloak_swing2_1;
swing3Cloak[1] = spr_cloak_swing3_1;
blockCloak[1]  = spr_cloak_block_1;
shieldCloak[1] = spr_cloak_shield_1;
breakCloak[1]  = spr_cloak_break_1;
flinchCloak[1] = spr_cloak_flinch_1;
deathCloak[1]  = spr_cloak_death_1;

standCloak[2]  = spr_cloak_stand_2;
runCloak[2]    = spr_cloak_run_2;
jumpCloak[2]   = spr_cloak_jump_2;
potionCloak[2] = spr_cloak_potion_2;
swing1Cloak[2] = spr_cloak_swing1_2;
swing2Cloak[2] = spr_cloak_swing2_2;
swing3Cloak[2] = spr_cloak_swing3_2;
blockCloak[2]  = spr_cloak_block_2;
shieldCloak[2] = spr_cloak_shield_2;
breakCloak[2]  = spr_cloak_break_2;
flinchCloak[2] = spr_cloak_flinch_2;
deathCloak[2]  = spr_cloak_death_2;
/*
standCloak[0]  = spr_cloak_stand_0;
runCloak[0]    = spr_cloak_run_0;
jumpCloak[0]   = spr_cloak_jump_0;
potionCloak[0] = spr_cloak_potion_0;
swing1Cloak[0] = spr_cloak_swing1_0;
swing2Cloak[0] = spr_cloak_swing2_0;
swing3Cloak[0] = spr_cloak_swing3_0;
blockCloak[0]  = spr_cloak_block_0;
shieldCloak[0] = spr_cloak_shield_0;
breakCloak[0]  = spr_cloak_break_0;
flinchCloak[0] = spr_cloak_flinch_0;
deathCloak[0]  = spr_cloak_death_0;
*/
standSword[1]  = spr_sword_stand_1;
runSword[1]    = spr_sword_run_1;
jumpSword[1]   = spr_sword_jump_1;
potionSword[1] = spr_sword_potion_1;
swing1Sword[1] = spr_sword_swing1_1;
swing2Sword[1] = spr_sword_swing2_1;
swing3Sword[1] = spr_sword_swing3_1;
blockSword[1]  = spr_sword_block_1;
shieldSword[1] = spr_sword_shield_1;
breakSword[1]  = spr_sword_break_1;
flinchSword[1] = spr_sword_flinch_1;
deathSword[1]  = spr_sword_death_1;
/*
standCloak[2]  = spr_sword_stand_2;
runCloak[2]    = spr_cloak_run_2;
jumpCloak[2]   = spr_cloak_jump_2;
potionCloak[2] = spr_cloak_potion_2;
swing1Cloak[2] = spr_cloak_swing1_2;
swing2Cloak[2] = spr_cloak_swing2_2;
swing3Cloak[2] = spr_cloak_swing3_2;
blockCloak[2]  = spr_cloak_block_2;
shieldCloak[2] = spr_cloak_shield_2;
breakCloak[2]  = spr_cloak_break_2;
flinchCloak[2] = spr_cloak_flinch_2;
deathCloak[2]  = spr_cloak_death_2;
*/
// Standing sprites
standHelm[0] = spr_helm_stand_0;
standHelm[1] = spr_helm_stand_1;
standHelm[2] = spr_helm_stand_2;
standHelm[3] = spr_helm_stand_3;

// Running sprites
runHelm[0] = spr_helm_run_0;
runHelm[1] = spr_helm_run_1;
runHelm[2] = spr_helm_run_2;
runHelm[3] = spr_helm_run_3;

// Jump sprites
jumpHelm[0] = spr_helm_jump_0;
jumpHelm[1] = spr_helm_jump_1;
jumpHelm[2] = spr_helm_jump_2;
jumpHelm[3] = spr_helm_jump_3;

// Potion sprites
potionHelm[0] = spr_helm_potion_0;
potionHelm[1] = spr_helm_potion_1;
potionHelm[2] = spr_helm_potion_2;
potionHelm[3] = spr_helm_potion_3;

// Swing1 sprites
swing1Helm[0] = spr_helm_swing1_0;
swing1Helm[1] = spr_helm_swing1_1;
swing1Helm[2] = spr_helm_swing1_2;
swing1Helm[3] = spr_helm_swing1_3;

// Swing2 sprites
swing2Helm[0] = spr_helm_swing2_0;
swing2Helm[1] = spr_helm_swing2_1;
swing2Helm[2] = spr_helm_swing2_2;
swing2Helm[3] = spr_helm_swing2_3;

// Swing3 sprites
swing3Helm[0] = spr_helm_swing3_0;
swing3Helm[1] = spr_helm_swing3_1;
swing3Helm[2] = spr_helm_swing3_2;
swing3Helm[3] = spr_helm_swing3_3;

// Shield sprites
shieldHelm[0] = spr_helm_shield_0;
shieldHelm[1] = spr_helm_shield_1;
shieldHelm[2] = spr_helm_shield_2;
shieldHelm[3] = spr_helm_shield_3;

// Block sprites
blockHelm[0] = spr_helm_block_0;
blockHelm[1] = spr_helm_block_1;
blockHelm[2] = spr_helm_block_2;
blockHelm[3] = spr_helm_block_3;

// Break sprites
BreakHelm[0] = spr_helm_break_0;
BreakHelm[1] = spr_helm_break_1;
BreakHelm[2] = spr_helm_break_2;
BreakHelm[3] = spr_helm_break_3;

// Flinch helm
shieldHelm[0] = spr_helm_flinch_0;
shieldHelm[1] = spr_helm_flinch_1;
shieldHelm[2] = spr_helm_flinch_2;
shieldHelm[3] = spr_helm_flinch_3;