// initialize variables
instance_create_depth(x,y,201,obj_camera_controller)
initialize_movement_entity(.2,.43,0,0,obj_solid);
// state variable set to movement script
state         = move_state;

// initialize health
maxHealth     = 10;
currentHealth = 5;
draw_state    = "None" // String of state
Shake_State   = 0; // controls camera 
flinch        = false;

// initialize stats
Poisoned      = 0;
Iced          = 0;
Fired         = 0;

//END
Cursed        = false;
stamCD        = false;
stamTimer     = 50;
stamina       = 5;
stamDown      = 3;
stamRegen     = .2;
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
max_run       = 2;
// initialize movement
gamepad_set_axis_deadzone(0,0.3);

jumping       = false;
dashCD        = false;
canDash       = true;
dashTimer     = 40;
numPotion     = 5;
canDrink      = true;

// initialize combos / attacking
combo		  = 0;
canCombo	  = true;
combod        = false;
maxCombo	  = 3;
Attack		  = 0;
canAttack	  = true;
blocking      = false;
canBlock      = true;
blockState    = 0;

// initialize combo sprite array
sprCombo[0]	  = spr_player_swing_1;
sprCombo[1]	  = spr_player_swing_2;
sprCombo[2]	  = spr_player_swing_3;

sprBlock[0]   = spr_player_shield;
sprBlock[1]   = spr_player_block;
sprBlock[2]   = spr_player_break;


instance_create_depth(x,y,199,obj_player_cloths);
