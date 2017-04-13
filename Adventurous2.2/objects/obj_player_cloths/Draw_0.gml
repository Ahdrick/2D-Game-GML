draw_sprite_ext(PCsI,PiI,x,y,PxS,1,0,-1,1);
draw_sprite_ext(PHsI,PiI,x,y,PxS,1,0,-1,1);
draw_sprite_ext(PSWsI,PiI,x,y,PxS,1,0,-1,1);
if(obj_player.blockState >= 0 && obj_player.Block)
	draw_sprite_ext(PSsI,PiI,x,y,PxS,1,0,-1,1);
with (obj_player){
	scr_statuses_gui();}
	
