/// draw the GUI
draw_sprite(spr_health_bar,0,35,35);
draw_sprite(spr_energy_bar,0,35,60);

for(i = 0; i < obj_player.currentHealth; i++)
	draw_sprite(spr_health_block,0,(39+(i*10)),38);
	
draw_sprite_stretched(spr_energy_block,0,39,62, ((obj_player.currentEnergy/1.3)*2),8);

draw_sprite(spr_health_bar,0,35,35);

//draw_text(20,100,obj_player.hsp[1] +"Hsp[1]")
//draw_text(20,120,obj_player.hsp[0] +"Hsp[0]")



//Draw Enemy HealthBar