/// @description Insert description here
// You can write your code in this editor
State = 0 ;  // 0 - Idle  1- Run  2- Attack

// initialize variables
instance_create_depth(x,y,199,obj_player_helm);
initialize_movement_entity(.4,.43,0,0,obj_solid);
// state variable set to movement script
state         = move_state;

// initialize health
maxHealth     = 10;
currentHealth = 5;

// initialize stats

//END
stamCD        = false;
stamTimer     = 50;
stamina       = 5;
stamDown      = 3;
stamRegen     = 1;
maxEnergy     = 100;
currentEnergy = maxEnergy;
//STR
strength      = 1;
strpow        = 1;
//INT
intellect     = 1;
intelpow      = 1;
//DEF
defence       = 1;
defencestr    = 1;
//LCK
luck          = 1;
luckmulti     = 1;

statMulti     = .03;

// initialize movement
jumping       = false;
dashCD        = false;
dashTimer     = 40;
numPotion     = 5;
canDrink      = true;

// initialize combos / attacking
combo		  = 0;
canCombo	  = true;
maxCombo	  = 3;
Attack		  = 0;
canAttack	  = true;

// initialize combo sprite array
sprCombo[0]	  = spr_player_swing_1;
sprCombo[1]	  = spr_player_swing_2;
sprCombo[2]	  = spr_player_swing_3;
