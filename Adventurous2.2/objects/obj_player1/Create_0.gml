// initialize variables
instance_create_depth(x,y,201,obj_camera_controller);
initialize_movement_entity(.2,.9,0,0,obj_solid);

// state variable set to movement script
state			 = move_state;
collision_object = obj_solid;
fade             = 0;
hspd             = 0;
draw_state       = "None" // String of state
Shake_State		 = 0;     // controls camera 

// initialize health
maxHealth     = 50;
currentHealth = 50;
healthSyphon  = false;
flinch        = false;

// initialize stats
Poisoned      = 0;
Iced          = 0;
Fired         = 0;
Cursed        = false;
Dead          = false;
//END
stamCD        = false;
stamTimer     = 50;
stamina       = 1;
dashStamDown  = 12;
blockStamDown = 10;
stamDown      = 7;
stamRegen     = .1;
stamPool      = 20;
curStam       = stamPool;
distance      = 12;

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
max_run       = 1.5;
spriteSpeed   = 1.0;

// initialize movement
gamepad_set_axis_deadzone(0,0.3);
Death		  = false;
jumping       = false;
dashCD        = false;
canDash       = true;
dashTimer     = 40;
numPotion     = 5;
canDrink      = true;
betterPotions = false;

// initialize combos / attacking
weaponType = -1;
daggerStam = 6;
swordStam = 8;
greatStam = 12;
spearStam = 10;

playerDaggerCombo[0] = 0;
playerSwordCombo[0] = 0;
playerGreatCombo[0] = 0;
playerSpearCombo[0] = 0;