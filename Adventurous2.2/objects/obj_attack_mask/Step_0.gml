x = player.x;
y = player.y;
image_xscale = player.dir

if(player.attacking and floor(player.sprIndex) == floor((player.anim_length[player.anim] / 2)-1))
{
	if obj_menu.weaponType == 0
		image_index = 1
	else if obj_menu.weaponType == 1
		image_index = 2
}
else
	image_index = 0

