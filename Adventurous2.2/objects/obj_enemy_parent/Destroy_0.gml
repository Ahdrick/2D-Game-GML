/// @description Insert description here
scr_item_drop();
if(obj_player.healthSyphon == true)
{
	randomize();
	var rand = irandom_range(0,10)
	if(rand = 1)
		obj_player.currentHealth++;
}