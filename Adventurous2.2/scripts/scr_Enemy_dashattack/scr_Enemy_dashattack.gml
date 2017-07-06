mySpeed		 = argument0;
myFrame      = argument1;
image_index    = 0;



if (image_number >myFrame)
	add_movement_horizontal_vertical((mySpeed*-image_xscale),0);
else{
	enable_movement_platform_actions(.6,1,-3,0,0,0,0);
	move_movement_entity();
	}
	
