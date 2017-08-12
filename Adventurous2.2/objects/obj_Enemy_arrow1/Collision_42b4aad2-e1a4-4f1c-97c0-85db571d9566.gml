/// @description Insert description here
/* You can write your code in this editor

if ((vsp[0] != 0)||	(vsp[1] != 0)){
	if (x> other.x)
		mydir = 1;
	else 
		mydir = -1;
	
	hsp[0] = 0;
	hsp[1] = 0;
	vsp[0] = 0;
	vsp[1] = 0;

	add_movement_horizontal_vertical((mySpeed*.08*mydir ),-1);
	move_movement_entity();

}