/// Initialize

get_input();
player      = obj_player;
										         // Menu Dimentions 
menuW       = sprite_get_width (spr_menu_red)/2; // width  of the menu 
menuH       = sprite_get_height(spr_menu_red)/2; // height of the menu
middleW     = (view_wport[0]/2);                 // midlee of current view X
middleH     = (view_hport[0]/2);			     // middle of current view Y

red         =  make_color_rgb(222,44,90);  
gold        =  make_color_rgb(207,150,83);   
blue        =  make_color_rgb(83,206,207); 
purple      =  make_color_rgb(121,83,207); 
white       =  make_color_rgb(255,255,255); 
col         =  0;

							   // Main Stat Menu 
menuTLX     = (middleW-menuW); // top left of menu corner X
menuTLY     = (middleH-menuH); // top left of menu corner Y
statTLX     = (menuTLX+154);   // top left stat square X 
statTLY     = (menuTLY+304);   // top left stat square Y
PtS         = 9;			   // points to spend
StI         = 0;			   // stat to increase selector
NavX        = 0;			   // selector sprite position X
NavY        = 0;			   // selector sprite position Y
NavMaxX     = 0;			   // set max nav edge based on window X
NavMaxY     = 0;			   // set max nav edge based on window Y
							// Item Menus
weapTLX     = (menuTLX+64); // top left weapon menu selection box X
weapTLY     = (menuTLY+68); // top left weapon menu selection box X
cloakTLX	= (menuTLX+64); // top left cloak menu selection box X
cloakTLY    = (menuTLY+70); // top left cloak menu selection box Y
			      // Global Variables
paused      = 0;  // is the game paused
level       = 1;  // your level
currency    = 0;  // your money
musicVol    = 5;  // music volume
SFXVol      = 5;  // sound effect volume
				  // Sprite Index Variables 			  
maxMenuI    = 9;  //           \/
menuI		= 0;  //		   \/
helmEqpd	= 0;  //           \/
cloakEqpd	= 0;  //           \/
ringEqpd	= 0;  //           \/
swordEqpd	= 0;  //           \/
shieldEqpd	= 0;  //           \/
bookEqpd	= 0;  //           \/
potionEqpd  = 0;  //		   \/
keyEqpd     = 0;  //           \/
menuSpr     = spr_menu_red;
menuSelSpr  = spr_menu_red_selector;
menuCubeSpr = spr_menu_red_cube;
menuBarSpr  = spr_menu_red_bar;
swordInvt   = spr_swords;
cloakInvt   = spr_cloaks;
helmInvt    = spr_helms;
shieldInvt  = spr_shields;
potionInvt  = spr_potions;
ringInvt    = spr_rings;
bookInvt    = spr_books;
keyInvt     = spr_key_items;

for(i = 0; i < 5; i++)
{
	for(j = 0; j < 4; j++)
	{
		swordOwn[i,j]  = -1;
		shieldOwn[i,j] = -1;
		bookOwn[i,j]   = -1;
		potionOwn[i,j] = -1;
		helmOwn[i,j]   = -1;
		ringOwn[i,j]   = -1;
		keyOwn[i,j]    = -1;
	}
}

for(i = 0; i < 5; i++)
{
	for(j = 0; j < 2; j++)
	{
		cloakOwn[i,j] = -1;
	}
}

swordOwn[0,0] = 0;
swordOwn[1,0] = 1;
swordOwn[2,0] = 2;
swordOwn[3,0] = 3;
swordOwn[4,0] = 4;

shieldOwn[0,0]= 0;
shieldOwn[1,0]= 1;
shieldOwn[2,0]= 2;
shieldOwn[3,0]= 3;

bookOwn[0,0] = 0;
bookOwn[1,0] = 1;
bookOwn[2,0] = 2;
bookOwn[3,0] = 3;

potionOwn[0,0] = 0;
potionOwn[1,0] = 1;
potionOwn[2,0] = 2;

helmOwn[0,0] = 0;
helmOwn[1,0] = 1;
helmOwn[2,0] = 2;
helmOwn[3,0] = 3;
helmOwn[4,0] = 4; // sam added this
helmOwn[0,1] = 5; // sammy

ringOwn[0,0] = 0;
ringOwn[1,0] = 1;
ringOwn[2,0] = 2;

keyOwn[0,0] = 0;
keyOwn[1,0] = 1;

cloakOwn[0,0] = 4;
cloakOwn[1,0] = 3;
cloakOwn[2,0] = 2;
cloakOwn[3,0] = 1;
cloakOwn[4,0] = 0;
cloakOwn[0,1] = 5; // Sammy
cloakOwn[1,1] = 4; // Sammy

menuTheme   = 1;
				  // Stat Levels
HP			= 1;  //     \/
END			= 1;  //     \/
STR			= 1;  //     \/
INT			= 1;  //     \/
DEF			= 1;  //     \/
LCK			= 1;  //     \/
EXP         = 0;

gap         = 0;
prevGap		= 0;
