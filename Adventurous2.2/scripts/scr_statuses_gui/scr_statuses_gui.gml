scr_color_Controller();

var myalpha = choose(1,.9,.8,.7,.6)
if (Iced > 0){
	draw_sprite_ext(spr_statuses, 1, x+16, y-74, image_xscale, image_yscale, image_angle, image_blend, myalpha);
	var healthy3 = (Fired)/ 5; 
	draw_sprite(spr_enemy_health1,0,x,y-45);
	draw_sprite_ext(spr_statuses_bar, 1, x-15, y-50,  healthy3*2,2, image_angle, image_blend, image_alpha);
	}

if (Fired > 0){
	draw_sprite_ext(spr_statuses, 2, x, y-74, image_xscale, image_yscale, image_angle, image_blend, myalpha);
	var healthy2 = (Fired)/ 5; 
	draw_sprite(spr_enemy_health1,0,x,y-35);
	draw_sprite_ext(spr_statuses_bar, 2, x-15, y-40,  healthy2*2,2, image_angle, image_blend, image_alpha);
	}
	
if (Poisoned >0){
	draw_sprite_ext(spr_statuses, 0, x-16, y-74, image_xscale, image_yscale, image_angle, image_blend, myalpha);
	/// draw the GUI
	var healthy = (Poisoned)/ 5; 
	draw_sprite(spr_enemy_health1,0,x,y-25);
	draw_sprite_ext(spr_statuses_bar, 0, x-15, y-30,  healthy*2,2, image_angle, image_blend, image_alpha);

	}
