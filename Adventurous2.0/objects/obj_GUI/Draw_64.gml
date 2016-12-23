/// draw the GUI
draw_sprite(spr_health_bar,0,20,20);
draw_sprite(spr_energy_bar,0,20,35);

for(i = 0; i < obj_player.currentHealth; i++)
	draw_sprite(spr_health_block,0,(22+(i*6)),21);
	
draw_sprite_stretched(spr_energy_block,0,22,35, (obj_player.currentEnergy/1.3),5);