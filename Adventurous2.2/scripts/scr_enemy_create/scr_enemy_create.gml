/// 
State       = 0 ;  // 0 - Idle  1- Run  2- Attack - -1 dead
EnemyState  = 0;
enemyScript = move_enemy_state;
flinch      = false;
myalphy     = .3; 
// initialize variables
initialize_movement_entity(.4,.43,0,0,obj_solid);
// state variable set to movement script
depth		  = 201; 
image_speed   = 1.9;
DeathAlpha    = 1;
// initialize stats
death         = false; 
jumping       = false;
dashCD        = false;
dashTimer     = 40;
numPotion     = 5;
canDrink      = true;
Attack		  = 0;
canAttack	  = true;
left		  = 0;
right         = 0;
jump          = 0;
follow        = false;
player        = obj_player
//Things I do.
FadeOnDeath   = false;
Stalk         = false; 
HealOverTime  = false;

// Sprites
/*
spr_attack1		  = spr_player_swing_1;
spr_attack2		  = spr_player_swing_1;
spr_attack3		  = spr_player_swing_1;
spr_death    	  = spr_player_swing_1;
spr_idle1         = spr_player_swing_1;
spr_idle2         = spr_player_swing_1;
spr_standup       = spr_player_swing_1;
spr_run           = spr_player_swing_1;

sprite_index  = spr_idle1;

sprCombo[0]	  = spr_attack1	;
sprCombo[1]	  = spr_attack2;
sprCombo[2]	  = spr_attack2;
sprCombo[3]	  = spr_attack1;
*/ 
