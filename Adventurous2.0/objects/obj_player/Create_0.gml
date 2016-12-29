// initialize variables
instance_create_depth(x,y,199,obj_player_helm);
initialize_movement_entity(.4,.33,0,0,obj_solid);
// state variable set to movement script
state         = move_state;
Shake_State =0; // controls camera 
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
gamepad_set_axis_deadzone(0,0.3);
jumping       = false;
dashCD        = false;
dashTimer     = 40;
numPotion     = 5;
canDrink      = true;
flinch	      = false; 

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
