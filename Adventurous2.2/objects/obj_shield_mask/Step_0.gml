x = obj_player.x;
y = obj_player.y;

image_index = obj_player.image_index;
image_speed = obj_player.image_speed;
sprite_index = obj_player_cloths.PSsI;
image_xscale = obj_player.image_xscale;

if(obj_player.Block == false || obj_player.blockState == 2 || obj_player.canBlock == false)
	instance_destroy();
	