/// Step event follow the player cooly
if(!obj_menu.paused)
{
	x +=(x2-x)/10;
	y +=(y2-y)/10;

	if(follow != noone)
	{
		x2 = follow.x+20;
		y2 = follow.y-40;
	}

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(camera,vm);

	if (Shake_State == 0)
		room_speed = 60; 
	
	if (Shake_State == 1) {
		var shake = irandom_range(-5,5); 
		x +=  shake;
		y +=  shake;
		room_speed = 25;
		if (alarm[0] == -1)
			alarm[0] =15;
	}
	
	if (Shake_State == 2) {
		var shake = irandom_range(-2,2);  
		x +=  shake;
		//y +=  shake;
		if (alarm[0] == -1)
			alarm[0] =15;
		room_speed = 25;
	}
}

