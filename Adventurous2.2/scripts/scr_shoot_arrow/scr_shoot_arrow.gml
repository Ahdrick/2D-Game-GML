myangle = argument0;

if (myangle == 0){
	myweapon = instance_create_depth(x,y+30,300,obj_Enemy_arrow1)
	with (myweapon){
		mySpeed   = random_range(10,10);
		Direction = 1;
			if (obj_player.x < x ){
					Direction = 1;
				}
			else{
					Direction = -1;
				}
		image_xscale = Direction;
		add_movement_horizontal_vertical((mySpeed*-Direction),-2);
		move_movement_entity();
	}
}

if (myangle == 1){
	myweapon = instance_create_depth(x,y+30,300,obj_Enemy_arrow1)
	with (myweapon){
		mySpeed   = random_range(10,10);
		Direction = 1;
			if (obj_player.x < x ){
					Direction = 1;
				}
			else{
					Direction = -1;
				}
		image_xscale = Direction;
		add_movement_horizontal_vertical((mySpeed*-Direction),-6);
		move_movement_entity();
	}
}