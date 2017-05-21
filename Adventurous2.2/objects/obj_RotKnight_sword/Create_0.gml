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
maxHealth     = 10;
currentHealth = 10;

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
spr_Attack1		  = rotknight_sword_attack1;
spr_Attack2		  = rotknight_sword_attack1;
spr_death    	  = rotknight_sword_death;
spr_idle1         = rotknight_sword_idle;
spr_idle2         = rotknight_sword_stand;
spr_standup       = rotknight_sword_stand;
spr_run           = rotknight_sword_walk;

sprite_index   = spr_idle1;
sprCombo[0]	  = spr_Attack1;
sprCombo[1]	  = spr_Attack2;
sprCombo[2]	  = spr_Attack2;
sprCombo[3]	  = spr_Attack1;

