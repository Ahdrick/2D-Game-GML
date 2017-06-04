x = obj_player.x;
y = obj_player.y;

image_index = obj_player.image_index;
image_speed = obj_player.image_speed;
sprite_index = obj_player_cloths.PSWsI;
image_xscale = obj_player.image_xscale;;
image_yscale = obj_player.image_yscale;;
if (obj_player.currentHealth < 0)
	instance_destroy();