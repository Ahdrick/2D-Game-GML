/// Menu step
get_input();
// pause the game

if(pause && !paused)
	paused = 1;
else if(pause && paused)
	paused = 0;
	
if(paused)
{
	// Changes the right panel RB and LB
	if(MenuL && rightPanel != 0)
		rightPanel--;
	if(MenuR && rightPanel != 2)
		rightPanel++;

	// Navigates the inventory
	if(rightPanel != 0)
		leftPanel = 0;
	if(rightPanel == 0)
	{	
		//deals with navigating inventory
		if(selectDown  && NavY == 1 && topRow == 11)
			NavY += 1;
		if(selectDown  && NavY == 1 && topRow < 11)
			topRow++;
		if(selectLeft  && NavX > 0)
			NavX -= 1;
		if(selectRight && NavX < NavMaxX)
			NavX += 1;		
		if(selectUp    && NavY == 1 && topRow == 0)
			NavY -= 1;
		if(selectDown  && NavY == 0 && topRow == 0)
			NavY += 1;
		if(selectUp    && NavY == 1 && topRow > 0) 
			topRow--;
		if(selectUp    && NavY == 2 && topRow == 11)
			NavY -= 1;
		
		if(enter && ((inventory[NavY,NavX] != -1) || (inventory[middleRow,NavX] != -1)))
		{/*
			var swap = -1;
			if(topRow == 0 || middleRow == 1)
			{
				swap = helmEqpd;
				helmEqpd = inventory[topRow,NavX];
				inventory[topRow,NavX] = swap;
			}
			if(middleRow == 2 || middleRow == 3)
			{
				swap = cloakEqpd;
				cloakEqpd = inventory[middleRow,NavX];
				inventory[middleRow,NavX] = swap;
			}
			else if(middleRow == 4 || middleRow == 5)
			{
			    mydopevariable= weaponEqpd;
				swap = weaponEqpd;
				weaponEqpd = inventory[middleRow, NavX];
				inventory[middleRow,NavX] = mydopevariable;
			}
			
			else
			*/
			 if(middleRow == 6 || middleRow == 7)
			{
			 //	shieldEqpd = shieldEqpd  ^^ inventory[middleRow,NavX];
			   // inventory[middleRow,NavX] = shieldEqpd ^^ inventory[middleRow, NavX];
				//shieldEqpd = shieldEqpd ^^ inventory[middleRow,NavX];
				//var swap = -100;
				swap1 = shieldEqpd; // C = A 
				swap2 = inventory[middleRow,NavX];
				shieldEqpd = swap2// C = A 
				inventory[middleRow,NavX] = swap1;
				
				//shieldEqpd = inventory[middleRow NavX]; // A =B
				//inventory[middleRow,NavX] = swap; // B = C = (oldA)
			}
			/*	
			else if(middleRow == 8 || middleRow == 9)
			{
				bookdEqpd = bookEqpd  ^^ inventory[middleRow,NavX];
				inventory[middleRow,NavX] = bookEqpd ^^ inventory[middleRow, NavX];
				bookEqpd = bookEqpd ^^ inventory[middleRow,NavX];
			}	
						
			else if(middleRow == 10 || middleRow == 11)
			{
				potionEqpd = potionEqpd  ^^ inventory[middleRow,NavX];
				inventory[middleRow,NavX] = potionEqpd ^^ inventory[middleRow, NavX];
				potionEqpd = potionEqpd ^^ inventory[middleRow,NavX];
			}	
				
			else if(middleRow == 12 || NavY == NavMaxY)
				ringEqpd = ringEqpd  ^^ inventory[middleRow,NavX];
				inventory[middleRow,NavX] = ringEqpd ^^ inventory[middleRow, NavX];
				ringEqpd = ringEqpd ^^ inventory[middleRow,NavX];
				*/
		}
		
		middleRow = topRow + 1;
		bottomRow = topRow + 2;
		
		invGapX = (invGapXSize*NavX);
		invGapY = (invGapYSize*NavY);
		
		// Adjusts for uneven math 
		if(NavY == 2)
			invGapY -= 1;
			
		// Switches to the inventory info page and back
		if(info)
		{
			leftPanel++;
			leftPanel = leftPanel%2;	
		}
	}
	// Player stats 
	if(rightPanel == 1)
	{
		// Navigate stats
		if(selectDown && StI < 5)
			StI += 1;
		if(selectUp   && StI > 0)
			StI -= 1;
			
		statGapY = (statGapYSize*StI);
		
		// Sets the distance for the highlighted point to spend
		switch(StI)
		{
			case 0:
				statSpend = HP;
			break;
			case 1:
				statSpend = END;
			break;
			case 2:
				statSpend = STR;
			break;
			case 3:
				statSpend = INT;
			break;
			case 4:
				statSpend = DEF;
			break;
			case 5:
				statSpend = LCK;
			break;
		}
			statSelGap = (statSpend*pointGapXSize);
		if(enter && PtS > 0)
		{
			switch(StI)
			{
				case 0:
					if(HP < 10)
					{
						player.maxHealth+=10;
						player.currentHealth+=10;
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
						player.stamPool += 1;	
							
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
							player.stamRegen += .005;

					}
				break;
				
				case 2:
					if(STR < 10)
					{
						STR++;
						PtS--;
						player.strpow    += (player.strength * 16 * player.statMulti);
					}
				break;
				
				case 3:
					if(INT < 10)
					{
						INT++;
						PtS--;				
						player.intelpow  += (player.intellect * player.statMulti);
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
						player.luck      += (player.luckmulti * player.statMulti);		
					}
				break;			
			}
		}
	}
	if(rightPanel == 2)
	{
		if(selectUp    && optionSelect > 0)
			optionSelect -= 1;
		if(selectDown  && optionSelect < 2)
			optionSelect += 1;
			
		if(optionSelect == 0)
		{
			if(selectLeft  && musicVol > 0)
				musicVol -= 1;
			if(selectRight && musicVol < 10)
				musicVol += 1;
			volGapX = (volGapXSize*musicVol);
		}	
		else if(optionSelect == 1)
		{
			if(selectLeft  && SFXVol > 0)
				SFXVol -= 1;
			if(selectRight && SFXVol < 10)
				SFXVol += 1;
			volGapX = (volGapXSize*SFXVol);
		}
		else
		{
			if(selectLeft  && theme > 0)
				theme -= 1;
			if(selectRight && theme < 6)
				theme += 1;
			themeGap = (themeGapSize*theme); 
		}
		volGapY = (volGapYSize*optionSelect);
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

/*
if(paused)
{
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
}

	