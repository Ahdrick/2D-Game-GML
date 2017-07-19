myweapon = instance_create_depth(x,y+30,300,obj_Enemy_spear1)
with (myweapon){
	mySpeed   = 10;
	Direction = 1;
	add_movement_horizontal_vertical((mySpeed*-Direction),0);
	move_movement_entity();
}