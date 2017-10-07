// initialize variables
initialize_movement_entity(.2,.9,0,0,obj_solid)

// state variable set to movement script
collision_object = obj_solid
dir				 = 1
fade             = 0
hspd             = 0
vspd			 = 0
draw_state       = "None" // String of state
Shake_State		 = 0      // controls camera 

// initialize health
maxHealth     = 50
currentHealth = 50
healthSyphon  = false
flinch        = false

// initialize stats
Poisoned      = 0
Iced          = 0
Fired         = 0
Cursed        = false
Dead          = false

//END
stamCD        = false
stamTimer     = 50
stamina       = 1
dashStamDown  = 12
dashing       = false
blockStamDown = 10
stamDown      = 7
stamRegen     = .1
stamPool      = 50
curStam       = stamPool
distance      = 12

//STR
strength      = 1
strpow        = 1
//INT
intellect     = 1
intelpow      = 1
//DEF
defence       = 1
defencestr    = 1
//LCK
luck          = 1
luckmulti     = 1

statMulti     = .03
runSpeed      = 1.8
grounded      = true
landing       = false

// initialize movement
gamepad_set_axis_deadzone(0,0.3)
Death		  = false
jumping       = false
dashCD        = false
canDash       = true
dashTimer     = 40
numPotion     = 5
canDrink      = true
betterPotions = false

// initialize combos / attacking
canCombo   = false
comboing   = false
canAttack  = true
attacking  = false
blocking   = false
canBlock   = true
weaponType = -1
daggerStam = 6
swordStam  = 8
greatStam  = 12
spearStam  = 10

playerDaggerCombo[0] = 0
playerSwordCombo[0] = 0
playerGreatCombo[0] = 0
playerSpearCombo[0] = 0

weapEqpt[0] = playerDaggerCombo
weapEqpt[1] = playerSwordCombo
weapEqpt[2] = playerGreatCombo
weapEqpt[3] = playerSpearCombo

// player sprites
SPR_HEIGHT	= 96
SPR_WIDTH   = 96
sprIndex	= 0
anim        = 0
anim_speed  = 10
anim_speed_default = 10

for(i = 0; i < 3; i++)
	CLOAKS[i]  = asset_get_index(("spr_cloak_"  + string(i)))
for(i = 0; i < 4; i++)
	HELMS[i]  = asset_get_index(("spr_helm_"  + string(i)))
for(i = 0; i < 4; i++)
	HELMSOVER[i]  = asset_get_index(("spr_helm_overlay_"  + string(i)))
for(i = 0; i < 8; i++)
	WEAPS[i]  = asset_get_index(("spr_weapon_"  + string(i)))
for(i = 0; i < 4; i++)
	SHIELDS[i]  = asset_get_index(("spr_shield_"  + string(i)))
	
anim_length[0] = 6  // idle
anim_length[1] = 8  // run
anim_length[2] = 6  // short sword swing 1
anim_length[3] = 7  // 2
anim_length[4] = 9  // 3
anim_length[5] = 9  // potion
anim_length[6] = 12 // falling
anim_length[7] = 4  // flinch
anim_length[8] = 7  // death
anim_length[9] = 7  // start blocking
anim_length[10] = 3 // block an attack
anim_length[11] = 4 // block break
anim_length[12] = 7
anim_length[13] = 8
anim_length[14] = 9
anim_length[15] = 4
anim_length[16] = 8
anim_length[17] = 8
anim_length[18] = 6
anim_length[19] = 7
anim_length[20] = 9
anim_length[21] = 4
anim_length[22] = 4
anim_length[23] = 15
anim_length[24] = 6  // Great Sword Idle
anim_length[25] = 8  // V Run
anim_length[26] = 12 // V jump / fall
anim_length[27] = 9  // V jump / fall / attack
anim_length[28] = 8  // V swing 1
anim_length[29] = 6  // V swing 2

get_input()
enable_movement_platform_actions(.6,runSpeed,4.7,Right,Left,Jump,0)
instance_create_depth(x,y,201,obj_camera_controller)
instance_create_depth(x,y,depth, obj_attack_mask)
instance_create_depth(x,y,depth, obj_shield_mask)