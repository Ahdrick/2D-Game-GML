/// 
// 0 - Idle  1- Run  2- Attack - -1 dead
EnemyState  = 0;
enemyScript = move_enemy_state;

// initialize variables
initialize_movement_entity(.4,.43,0,0,obj_solid);

// initialize health
maxHealth     = 10;
currentHealth = 5;

// initialize stats
death         = false; 
jumping       = false;
Attack		  = 0;
canAttack	  = true;
left		  = 0;
right         = 0;
jump          = 0;

