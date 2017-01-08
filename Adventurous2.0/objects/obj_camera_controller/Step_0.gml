/// Step event follow the player cooly
if(obj_player.Left && offset > 0)
	offset = offset * -1;
if(obj_player.Right && offset < 0)
	offset = (offset * -1);
	
x += ((obj_player.x+offset)-x)/12;
y += ((obj_player.y-yoffset)-y)/12;