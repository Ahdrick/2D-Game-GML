/// 
if (EnemyState != -1)
{
	sprite_index = spr_S1_death;
<<<<<<< HEAD
	EnemyState   = -1;
}
=======
	EnemyState= -1;
}

// Make the screen slightly shake

//if (object_exists(obj_player)) 
	//obj_player.Shake_State = 3; 

// make blood or spark effect particles

// create flash
instance_create_depth(x,y,200,obj_part_flash);
>>>>>>> origin/master
