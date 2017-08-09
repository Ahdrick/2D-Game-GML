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
		break;
	}
	switch(rightPanel)
	{
		case 0:
			draw_sprite(spr_menu_inventory_panel,0,rightPanelTLX,PanelTLY);
			draw_sprite(spr_menu_rectangle_selector,0,invSelectX + invGapX,invSelectY + invGapY);
			draw_text(200,200,inventory[middleRow,NavX]);
			draw_text(200,260,cloakEqpd);
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
/*
draw_sprite_ext(spr_menu_overlay,0,0,0,4,4,0,-1,1);
draw_sprite(menuSpr,menuI,menuTLX,menuTLY);
switch(menuI)
{
	case 0:
		// draw level and money
		draw_text(menuTLX+130,menuTLY+64,level);
		draw_text(menuTLX+240,menuTLY+66,currency);
			
		// draw items
		// left side
		draw_sprite(helmInvt,  helmEqpd  ,menuTLX+65, menuTLY+100);
		draw_sprite(cloakInvt, cloakEqpd ,menuTLX+62, menuTLY+159);
		draw_sprite(ringInvt,  ringEqpd  ,menuTLX+64, menuTLY+245);
		// right side
		draw_sprite(swordInvt, swordEqpd ,menuTLX+260,menuTLY+99 );
		draw_sprite(shieldInvt,shieldEqpd,menuTLX+268,menuTLY+144);
		draw_sprite(bookInvt,  bookEqpd  ,menuTLX+271,menuTLY+192);
		draw_sprite(potionInvt,potionEqpd,menuTLX+273,menuTLY+242);
			
		// DRAW ON THE PLAYER 
		draw_sprite(spr_cloak_display,cloakEqpd,menuTLX+146,menuTLY+124);
		draw_sprite(spr_helm_display ,helmEqpd ,menuTLX+168,menuTLY+112);
			
		// draw points to spend
		draw_text(statTLX+119,statTLY+39,PtS);
			
		// draw point spender icon
		draw_sprite(menuCubeSpr,0,statTLX-67,statTLY+(18*StI)-1);
			
		// draw stats
		for(i = 0; i < HP; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+0);
		for(i = 0; i < END; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+18);
		for(i = 0; i < STR; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+36);
		for(i = 0; i < INT; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+54);
		for(i = 0; i < DEF; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+72);
		for(i = 0; i < LCK; i++)
			draw_sprite(menuCubeSpr,0,statTLX+(i*10),statTLY+90);
				
	break;
		
	////////////////////////////////Sword List/////////////////////////////////////////
	case 1:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{	 
				if(swordOwn[i,j] != -1)
				{
					draw_sprite(swordInvt,swordOwn[i,j],(weapTLX)+(i*46),(weapTLY+7)+(j*56));
					if(swordOwn[i,j] == swordEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(swordOwn[NavX,NavY] != -1)
			draw_sprite(spr_sword_stat,swordOwn[NavX,NavY],weapTLX,weapTLY+236);
				
	break;
		
	////////////////////////////////////Shield List//////////////////////////////////
	case 2:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{
				if(shieldOwn[i,j] != -1)
				{
					draw_sprite(shieldInvt,shieldOwn[i,j],(weapTLX+8)+(i*46),(weapTLY+6)+(j*56));
					if(shieldOwn[i,j] == shieldEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(shieldOwn[NavX,NavY] != -1)
			draw_sprite(spr_shield_stat,shieldOwn[NavX,NavY],weapTLX,weapTLY+234);
	break;
		
	////////////////////////////////////Book List//////////////////////////////////
	case 3:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{ 
				if(bookOwn[i,j] != -1)
				{
					draw_sprite(bookInvt,bookOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+6)+(j*56));
					if(bookOwn[i,j] == bookEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(shieldOwn[NavX,NavY] != -1)
			draw_sprite(spr_book_Stat,bookOwn[NavX,NavY],weapTLX,weapTLY+236);
	break;
		
	////////////////////////////////////Ring List//////////////////////////////////
	case 4:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{
				if(ringOwn[i,j] != -1)
				{
					draw_sprite(ringInvt,ringOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
					if(ringOwn[i,j] == ringEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(ringOwn[NavX,NavY] != -1)
			draw_sprite(spr_ring_stat,ringOwn[NavX,NavY],weapTLX,weapTLY+236);
	break;
		
	/////////////////////////////////Cloak List///////////////////////////////////////
	case 5:
		NavMaxX = 4;
		NavMaxY = 1;
		draw_sprite(menuSelSpr,1,cloakTLX+(NavX*46),cloakTLY+(NavY*112));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 2; j++)
			{
				if(cloakOwn[i,j] != -1)
				{
					draw_sprite(cloakInvt,cloakOwn[i,j],(cloakTLX+8)+(i*46),(cloakTLY+23)+(j*112));
					if(cloakOwn[i,j] == cloakEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+5+(i*46), weapTLY+7+(j*56));
				}
			}
		if(cloakOwn[NavX,NavY] != -1)
			draw_sprite(spr_cloak_stat,cloakOwn[NavX,NavY],weapTLX,weapTLY+236);
	break;
		
	///////////////////////////////////Helmate List////////////////////////////////
	case 6:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++) // Sam Added one
			for(j = 0; j < 4; j++) // Sam Added one.
			{
				if(helmOwn[i,j] != -1)
				{
					draw_sprite(helmInvt,helmOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
					if(helmOwn[i,j] == helmEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(helmOwn[NavX,NavY] != -1)
			draw_sprite(spr_helm_stat,helmOwn[NavX,NavY],weapTLX,weapTLY+234);
	break;
		
	//////////////////////////////////Potions List////////////////////////////////
	case 7:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{ 
				if(potionOwn[i,j] != -1)
				{
					draw_sprite(potionInvt,potionOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
					if(potionOwn[i,j] == potionEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(potionOwn[NavX,NavY] != -1)
			draw_sprite(spr_potion_stat,potionOwn[NavX,NavY],weapTLX,weapTLY+236);
	break;
		
	//////////////////////////////////Key Item List////////////////////////////
	case 8:
		NavMaxX = 4;
		NavMaxY = 3;
		draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
		for(i = 0; i < 5; i++)
			for(j = 0; j < 4; j++)
			{
				if(keyOwn[i,j] != -1)
				{
					draw_sprite(keyInvt,keyOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
					if(keyOwn[i,j] == keyEqpd)
						draw_sprite(menuCubeSpr, 0, weapTLX+4+(i*46), weapTLY+4+(j*56));
				}
			}
		if(keyOwn[NavX,NavY] != -1)
			draw_sprite(spr_key_stat,keyOwn[NavX,NavY],weapTLX,weapTLY+236);
	break;
		
	//////////////////////////////////Options Menu//////////////////////////////
	case 9:
		NavMaxX = 0;
		NavMaxY = 2;
		if(NavY == 2)
			draw_sprite(menuCubeSpr,0,menuTLX+224, (menuTLY+68)+(NavY*24));
		else
			draw_sprite(menuCubeSpr,0,menuTLX+275, (menuTLY+68)+(NavY*24));
				
		for(i = 0; i < musicVol; i++)
			draw_sprite(menuCubeSpr,0,(menuTLX+164)+(i*10),(menuTLY+68)+0);
		for(i = 0; i < SFXVol; i++)
			draw_sprite(menuCubeSpr,0,(menuTLX+164)+(i*10),(menuTLY+68)+24);
	break;
}
*/
draw_set_color(c_white)
draw_text(140,50, "Shield Eqpd")
draw_text(240,50, shieldEqpd)

draw_text(140,90, "inventory[topRow,NavX]")
draw_text(240,90, inventory[topRow,NavX])

draw_text(140,130, "inventory[NavY,NavX]")
draw_text(240,130, inventory[NavY,NavX])

draw_text(100,150, "inventory[NavX,NavY]");
draw_text(240,150, inventory[NavX,NavY]);

draw_text(100,230, "inventory[middleRow,NavX]");
draw_text(240,230, inventory[middleRow,NavX]);
