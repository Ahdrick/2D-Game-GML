/// draw the GUI
draw_sprite(spr_health_bar,0,35,35);
draw_sprite(spr_energy_bar,0,35,60);

for(i = 0; i < obj_player.currentHealth; i++)
	draw_sprite(spr_health_block,0,(39+(i*10)),38);
	
draw_sprite_stretched(spr_energy_block,0,39,62, ((obj_player.currentEnergy/1.3)*2),8);

draw_sprite(spr_health_bar,0,35,35);

//draw_text(20,100,obj_player.hsp[1] +"Hsp[1]")
//draw_text(20,120,obj_player.hsp[0] +"Hsp[0]")


if keyboard_check_pressed(vk_tab)
   {
   msg = get_string("What Does your Heart Long for:", "Pot");
   
   if (msg == "Health")
		obj_player.currentHealth =5;
		
	  if (msg == "Godmode")
		obj_player.currentHealth =100;
		
   if (msg == "Death")
		obj_player.currentHealth =0;
		
	if (msg == "Item")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_chest_Item)
		
	if (msg == "Chest")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_chest1)
		
	if (msg == "Rotknight_sword")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_RotKnight_sword)
		
		
	if (msg == "Hound")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_hound)
		
	if (msg == "Dblsword")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_double_sword)
		
	if (msg == "Houndknight")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_houndknight)
		
		
	if (msg == "Enemy")
		instance_create_depth(obj_player.x,obj_player.y,300, obj_enemy_parent)
		
			
	if (msg == "Owl")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_SporeOwl)
		
	if (msg == "Mold")
		instance_create_depth(obj_player.x+200,obj_player.y-200,300, obj_MoldKnight)
		
		
	if (msg == "Genocide"){
		if (instance_exists(obj_enemy_parent)){
			with (obj_enemy_parent){
				instance_destroy()
				}
		}
	}
		
	if (msg == "Dark"){
		instance_create_depth(obj_player.x +30,obj_player.y,300, obj_enemy_parent_1)
		obj_player.Cursed = true;}
		
				
	
		
	if (msg == "Pot"){
		instance_create_depth(obj_player.x,obj_player.y-40,300, Int_back_parent)
		instance_create_depth(obj_player.x -30,obj_player.y-40,300, Int_back_parent)
		instance_create_depth(obj_player.x +30,obj_player.y-40,300, Int_back_parent)
		instance_create_depth(obj_player.x -100,obj_player.y-40,300, Int_back_parent)
		instance_create_depth(obj_player.x +100,obj_player.y-40,300, Int_back_parent)
	}
		
	if (msg == "Mob"){
		instance_create_depth(obj_player.x+100,obj_player.y-100,300, obj_enemy_parent)
		instance_create_depth(obj_player.x-100,obj_player.y-100,300, obj_enemy_parent)
		instance_create_depth(obj_player.x+150,obj_player.y-100,300, obj_enemy_parent)
		instance_create_depth(obj_player.x-150,obj_player.y-100,300, obj_enemy_parent)
	}
	
	if (msg == "Sanic"){
		obj_player.max_run= 5;
	}
	if (msg == "Restart"){
		room_restart();
	}
	
		
   }
//Draw Enemy HealthBar



