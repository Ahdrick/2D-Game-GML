var healthy =currentHealth /maxHealth;
/// draw the GUI
draw_sprite(spr_enemy_health1,0,x,y-58);
draw_sprite_stretched(spr_enemy_health2,0,x-15,y-72, healthy*37,16);


//for(i = 0; i < obj_player.currentHealth; i++)
//	draw_sprite(spr_enemy_health1,0,x+(39+(i*10)),y+38);
	
//draw_sprite_stretched(spr_energy_block,0,x+39,y+62, ((obj_player.currentEnergy/1.3)*2),8);
