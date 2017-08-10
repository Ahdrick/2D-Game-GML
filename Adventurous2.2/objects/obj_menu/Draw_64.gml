draw_set_font(fnt_pixel);
//draw_set_color(col);
if(paused)
{
	draw_sprite(spr_menu_backgroud,0,menuTLX,menuTLY);
	switch(leftPanel)
	{
		case 0:
			draw_sprite(spr_menu_character_panel,0,leftPanelTLX,PanelTLY);
			draw_sprite(spr_weapons,weaponEqpd, leftPanelTLX+152, PanelTLY+49);
			draw_sprite(spr_helms,  helmEqpd,   leftPanelTLX+36, PanelTLY+49);
			draw_sprite(spr_cloaks, cloakEqpd,  leftPanelTLX+36, PanelTLY+102);
			draw_sprite(spr_shields,shieldEqpd, leftPanelTLX+152, PanelTLY+102);
			draw_sprite(spr_potions,potionEqpd, leftPanelTLX+152, PanelTLY+155);
			draw_sprite(spr_rings,  ringEqpd,   leftPanelTLX+36, PanelTLY+155);
			draw_sprite(spr_rings,  ringEqpd1,  leftPanelTLX+75, PanelTLY+155);
			draw_sprite(spr_books,  bookEqpd,   leftPanelTLX+114, PanelTLY+155);
			draw_set_color(tan0);
			draw_text(leftPanelTLX+68,PanelTLY+27,level);
		break;
		
		case 1:
			draw_sprite(spr_menu_weapon_stats_panel,0,leftPanelTLX,PanelTLY);
			if((inventory[NavY,NavX] != -1) || (inventory[middleRow,NavX] != -1))
			{
				if(middleRow >= 2 && middleRow <=12)
				{
					draw_sprite(selectedItem,inventory[middleRow,NavX],leftPanelTLX+27,PanelTLY+32);
				}
				else if(middleRow == 1)
					draw_sprite(selectedItem,inventory[NavY,NavX],leftPanelTLX+27,PanelTLY+32);
			}
			
		break;
	}
	switch(rightPanel)
	{
		case 0:
			draw_sprite(spr_menu_inventory_panel,0,rightPanelTLX,PanelTLY);
			draw_sprite(spr_menu_rectangle_selector,0,invSelectX + invGapX,invSelectY + invGapY);
			// draw inventory
			for(i = 0; i < 5; i++)			
			{
				if(inventory[topRow,i] != -1)
					draw_sprite(spr_inventory[floor(topRow/2)],inventory[topRow,i],
						(invSelectX+1)+(i*invGapXSize),(invSelectY+1));
						
				if(inventory[middleRow,i] != -1)
					draw_sprite(spr_inventory[floor(middleRow/2)],inventory[middleRow,i],
						(invSelectX+1)+(i*invGapXSize),(invSelectY+1)+(invGapYSize));
						
				if(inventory[bottomRow,i] != -1)
					draw_sprite(spr_inventory[floor(bottomRow/2)],inventory[bottomRow,i],
						(invSelectX+1)+(i*invGapXSize),(invSelectY+1)+(2*invGapYSize));
			}
			if(topRow >= 1)
				draw_sprite(spr_menu_arrow_up,0,rightPanelTLX+98,PanelTLY+28);
			if(topRow <= 10)
				draw_sprite_ext(spr_menu_arrow_up,0,rightPanelTLX+98,PanelTLY+207,1,-1,0,-1,1);
		break;
		case 1:
			draw_sprite(spr_menu_player_stats_panel,0,rightPanelTLX,PanelTLY);
			draw_sprite(spr_menu_arrow_selector,0,statArrowX,statArrowY + statGapY);
			
			// draw stats
			for(i = 0; i < HP; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY);
			for(i = 0; i < END; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY+(pointGapYSize*1));
			for(i = 0; i < STR; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY+(pointGapYSize*2));
			for(i = 0; i < INT; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY+(pointGapYSize*3));
			for(i = 0; i < DEF; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY+(pointGapYSize*4));
			for(i = 0; i < LCK; i++)
				draw_sprite(spr_menu_point,0,statPointX+(i*pointGapXSize),statPointY+(pointGapYSize*5));
			if(statSpend < 10)	
				draw_sprite(spr_menu_point_selector,0,statSelectorX+(statSelGap), statSelectorY + statGapY);
		break;
		case 2:
			// draw options
			draw_sprite(spr_menu_settings_panel,0,rightPanelTLX,PanelTLY);
			for(i = 0; i < musicVol; i++)
				draw_sprite(spr_menu_point,0,statPointX+23+(i*pointGapXSize),statPointY-16+(pointGapYSize));
			for(i = 0; i < SFXVol; i++)
				draw_sprite(spr_menu_point,0,statPointX+23+(i*pointGapXSize),statPointY-11+(pointGapYSize*2));
			if(optionSelect == 2)
				draw_sprite(spr_menu_point_selector,0,themeX + themeGap, themeY);
			else if(optionSelect == 0 && musicVol == 10 || optionSelect == 1 && SFXVol == 10)
				draw_sprite(spr_menu_point_selector,0,volX + volGapX - volGapXSize ,volY + volGapY);
			else
				draw_sprite(spr_menu_point_selector,0,volX + volGapX,volY + volGapY);
		break;
	}
}



/* Debug Stuff
draw_set_color(c_white)
draw_text(140,50, "Shield Eqpd")
draw_text(240,50, shieldEqpd)

draw_text(140,90, "inventory[topRow,NavX]")
draw_text(240,90, inventory[topRow,NavX])

draw_text(140,130, "inventory[NavY,NavX]")
draw_text(240,130, inventory[NavY,NavX])

draw_text(160,170, "Swap1 ")
draw_text(260,170, swap1)

draw_text(140,190, "swap2")
draw_text(240,190, swap2)

draw_text(100,150, "inventory[NavX,NavY]");
draw_text(240,150, inventory[NavX,NavY]);

draw_text(100,230, "inventory[middleRow,NavX]");
draw_text(240,230, inventory[middleRow,NavX]);
