x = obj_player.x;
y = obj_player.y;
image_xscale = obj_player.image_xscale;

if(obj_player.Block == false || obj_player.blockState == 2 || obj_player.canBlock == false)
	instance_destroy();
	