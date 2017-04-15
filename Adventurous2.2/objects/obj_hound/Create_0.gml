/// 
State       = 0 ;  // 0 - Idle  1- Run  2- Attack - -1 dead
EnemyState  = 0;
flinch      = false;


// initialize variables
initialize_movement_entity(.4,.43,0,0,obj_solid);
// state variable set to movement script
depth		  = 201; 
myalphy       = 1;
// initialize health
maxHealth     = 5;
currentHealth = 5;

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
combo		  = 0;
canCombo	  = true;
combod        = false;
maxCombo	  = 3;
//// Sprites
spr_Attack1		  = spr_hound_attack1;
spr_Attack2		  = spr_hound_attack1;
spr_death    	  = spr_hound_death;
spr_idle1         = spr_hound_idle1;
spr_idle2         = spr_hound_idle2;
spr_standup       = spr_hound_idle3;
spr_run           = spr_hound_run;

sprite_index   = spr_idle1;

