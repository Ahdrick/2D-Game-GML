/// Menu step
get_input();
// pause the game

if(pause && !paused)
	paused = 1;
else if(pause && paused)
	paused = 0;
// if the game is paused ... do this
if(paused)
{
	switch(menuTheme)
	{
		case 0:
			menuSpr     = spr_menu_red;
			menuSelSpr  = spr_menu_red_selector;
			menuCubeSpr = spr_menu_red_cube;
			menuBarSpr  = spr_menu_red_bar;	
			col         = red;
		break;
		case 1:
			menuSpr     = spr_menu_gold;
			menuSelSpr  = spr_menu_gold_selector;
			menuCubeSpr = spr_menu_gold_cube;
			menuBarSpr  = spr_menu_gold_bar;	
			col         = gold;
		break;
		case 2:
			menuSpr     = spr_menu_blue;
			menuSelSpr  = spr_menu_blue_selector;
			menuCubeSpr = spr_menu_blue_cube;
			menuBarSpr  = spr_menu_blue_bar;
			col         = blue;	
		break;
		case 3:
			menuSpr     = spr_menu_purple;
			menuSelSpr  = spr_menu_purple_selector;
			menuCubeSpr = spr_menu_purple_cube;
			menuBarSpr  = spr_menu_purple_bar;	
			col         = purple;
		break;
		case 4:
			menuSpr     = spr_menu_white;
			menuSelSpr  = spr_menu_white_selector;
			menuCubeSpr = spr_menu_white_cube;
			menuBarSpr  = spr_menu_white_bar;
			col         = white;	
		break;
	}
	// Stat menu screen stuff
	if(menuI = 0)
	{
		if(selectDown && StI < 5)
			StI += 1;
		if(selectUp   && StI > 0)
			StI -= 1;
		if(enter && PtS > 0)
		{
			switch(StI)
			{
				case 0:
					if(HP < 10)
					{
						player.maxHealth++;
						player.currentHealth++;
						HP++;
						PtS--;					
						if(HP == 3)
						{
							player.maxHealth++;
							player.currentHealth++;
						}
						if(HP == 6)
							player.betterPotions = true;
						if(HP == 10)
							player.healthSyphon = true;
							
					}
				break;
				
				case 1:
					if(END < 10)
					{
						END++;
						PtS--;
						player.stamPool += 5;		
						if(END == 3)
						{
							player.max_run = 1.7;
							player.spriteSpeed = 1.9;
						}
						if(END == 6)
						{
							player.stamDown--;
							player.dashStamDown -= 2;
							player.blockStamDown--;
						}
						if(END == 10)
							player.stamRegen += .02;
					}
				break;
				
				case 2:
					if(STR < 10)
					{
						STR++;
						PtS--;
						player.strpow    += (player.strength  *player.statMulti);
					}
				break;
				
				case 3:
					if(INT < 10)
					{
						INT++;
						PtS--;				
						player.intelpow  += (player.intellect *player.statMulti);
					}
				break;
				
				case 4:
					if(DEF < 10)
					{
						DEF++;
						PtS--;						
					}
				break;
				
				case 5:
					if(LCK < 10)
					{
						LCK++;
						PtS--;
						player.luck      += (player.luckmulti *player.statMulti);		
					}
				break;			
			}
		}
	}
	// all other menues		
	if(MenuL && menuI > 0)
	{
		menuI -= 1;
		NavX   = 0;
		NavY   = 0;
	}
	if(MenuR && menuI < maxMenuI)
	{
		menuI += 1;
		NavX   = 0;
		NavY   = 0;
	}	
	if(selectLeft  && NavX > 0)
		NavX -= 1;
	if(selectRight && NavX < NavMaxX)
		NavX += 1;
	if(selectUp    && NavY > 0)
		NavY -= 1;
	if(selectDown  && NavY < NavMaxY)
		NavY += 1;
	
	if(enter)
	{
		switch(menuI)
		{
			case 1:
				if(swordOwn[NavX,NavY] != -1)
					swordEqpd = swordOwn[NavX,NavY];
			break;
			
			case 2:
				if(shieldOwn[NavX,NavY] != -1)
					shieldEqpd = shieldOwn[NavX,NavY];
			break;
			
			case 3:
				if(bookOwn[NavX,NavY] != -1)
					bookEqpd = bookOwn[NavX,NavY];
			break;
			
			case 4:
				if(ringOwn[NavX,NavY] != -1)
					ringEqpd = ringOwn[NavX,NavY];
			break;
			
			case 5:
				if(cloakOwn[NavX,NavY] != -1)
					cloakEqpd = cloakOwn[NavX,NavY];
			break;
			
			case 6:
				if(helmOwn[NavX,NavY] != -1)
					helmEqpd = helmOwn[NavX,NavY];
			break;
			
			case 7:
				if(potionOwn[NavX,NavY] != -1)
					potionEqpd = potionOwn[NavX,NavY];
			break;
			
			case 8:
				if(keyOwn[NavX,NavY] != -1)
					keyEqpd = keyOwn[NavX,NavY];
			break;
			
		}
		
	}	
		
	// options menu
	
	if(menuI == 9)
	{
		if(NavY == 0)
		{
			if(selectLeft  && musicVol > 0)
				musicVol -= 1;
			if(selectRight && musicVol < 10)
				musicVol += 1;
		}
		if(NavY == 1)
		{
			if(selectLeft  && SFXVol > 0)
				SFXVol -= 1;
			if(selectRight && SFXVol < 10)
				SFXVol += 1;
		}
		if(NavY == 2)
		{
			if(selectLeft  && menuTheme > 0)
				menuTheme -= 1;
			if(selectRight && menuTheme < 4)
				menuTheme += 1;
		}
	}
}
// Levelup algo
if(EXP > gap)
{
	level++;
	PtS++;
	prevGap = gap;
	gap = level*100;
	gap+= prevGap;
}
	