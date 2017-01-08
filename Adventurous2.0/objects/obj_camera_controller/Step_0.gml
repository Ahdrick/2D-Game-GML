/// Step event follow the player cooly
if(obj_player.Left && offset > 0)
	offset = offset * -1;
if(obj_player.Right && offset < 0)
	offset = (offset * -1);
	
x += ((obj_player.x+offset)-x)/12;
y += ((obj_player.y-yoffset)-y)/12;


/// screen shake THIS WORKS
if (object_exists(obj_player)){
	// shake if player is flinched
	if (obj_player.flinch == true ) {
		var shake = random(5); 
		x +=  shake;
		y +=  shake;
	}
}

// THIS DOESNT WORK!!! why? 
if (object_exists(obj_enemy_parent)){
	// shake if player is flinched
		if (obj_enemy_parent.flinch == true ) {
			var shake = random(15); 
			x +=  shake;
			y +=  shake;
		}
}
