
if (obj_player.sprite_index ==spr_player_death){
	if (fade < 1)
		fade += .001;
	//var alpha = random(1);
	draw_sprite_ext(sprite_69, -1 , x, y, 100, 100, 0, -1,fade );
}
