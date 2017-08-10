myweapon = instance_create_depth(x,y+30,300,obj_Enemy_spear1)
with (myweapon){
	mySpeed   = random_range(9,13);
	Direction = 1;
		if (obj_player.x < x ){
				Direction = 1;
			}
		else{
				Direction = -1;
			}
	image_xscale = Direction;
	add_movement_horizontal_vertical((mySpeed*-Direction),0);
	move_movement_entity();
}