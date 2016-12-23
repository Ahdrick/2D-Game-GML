draw_set_font(fnt_minecraft);
draw_set_color(col);
display_set_gui_size(obj_display_manager.ideal_width,obj_display_manager.ideal_height);
if(paused)
{
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
			draw_sprite(spr_cloak_display,cloakEqpd,menuTLX+146,menuTLY+125);
			draw_sprite(spr_helm_display ,helmEqpd ,menuTLX+168,menuTLY+112);
			
			// draw points to spend
			draw_text(statTLX+125,statTLY+39,PtS);
			
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
						draw_sprite(swordInvt,swordOwn[i,j],(weapTLX)+(i*46),(weapTLY+7)+(j*56));
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
						draw_sprite(shieldInvt,shieldOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
						draw_sprite(bookInvt,bookOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
						draw_sprite(ringInvt,ringOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
						draw_sprite(cloakInvt,cloakOwn[i,j],(cloakTLX+8)+(i*46),(cloakTLY+23)+(j*112));
				}
			if(cloakOwn[NavX,NavY] != -1)
				draw_sprite(spr_cloak_stat,cloakOwn[NavX,NavY],weapTLX,weapTLY+236);
		break;
		
		///////////////////////////////////Helmate List////////////////////////////////
		case 6:
			NavMaxX = 4;
			NavMaxY = 3;
			draw_sprite(menuSelSpr,0,weapTLX+(NavX*46),weapTLY+(NavY*56));
			for(i = 0; i < 5; i++)
				for(j = 0; j < 4; j++)
				{
					if(helmOwn[i,j] != -1)
						draw_sprite(helmInvt,helmOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
						draw_sprite(potionInvt,potionOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
						draw_sprite(keyInvt,keyOwn[i,j],(weapTLX+10)+(i*46),(weapTLY+10)+(j*56));
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
}