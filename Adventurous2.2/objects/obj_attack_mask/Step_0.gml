x = obj_player.x;
y = obj_player.y;

image_index = obj_player.image_index;
image_speed = obj_player.image_speed;
sprite_index = obj_player_cloths.PSWsI;
image_xscale = 1*obj_player_cloths.PxS;
image_yscale = 1*obj_player_cloths.PxS;
if (obj_player.currentHealth < 0)
	instance_destroy();