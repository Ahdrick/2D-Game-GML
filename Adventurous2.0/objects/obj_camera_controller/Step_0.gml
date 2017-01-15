/// Step event follow the player cooly
if(obj_player.Left && offset > 0)
	offset = offset * -1;
if(obj_player.Right && offset < 0)
	offset = (offset * -1);
	
x += ((obj_player.x+offset)-x)/12;
y += ((obj_player.y-yoffset)-y)/12;

if (Shake_State == 0)
	room_speed = 30; 
	
if (Shake_State == 1) {
		var shake = random(5); 
		x +=  shake;
		y +=  shake;
		room_speed = 20;
		if (alarm[0] == -1)
			alarm[0] =15;
	}
	
if (Shake_State == 2) {
		var shake = random(2); 
		x +=  shake;
		//y +=  shake;
		if (alarm[0] == -1)
			alarm[0] =30;
			room_speed = 20;
	}

