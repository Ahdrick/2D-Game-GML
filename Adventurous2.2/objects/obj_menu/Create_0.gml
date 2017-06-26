/// Initialize
get_input();
display_set_gui_size(obj_camera_controller.ideal_width/3,obj_camera_controller.ideal_height/3);

player      = obj_player;
										         // Menu Dimentions 
menuW       = sprite_get_width (spr_menu_backgroud)/2; // width  of the menu 
menuH       = sprite_get_height(spr_menu_backgroud)/2; // height of the menu

middleW     = obj_camera_controller.ideal_width/6;     // middle of current view X
middleH     = obj_camera_controller.ideal_height/6;	 // middle of current view Y

leftPanel   = 0;
rightPanel  = 0;
	
menuTLX     = (middleW-menuW);   // top left of menu corner X
menuTLY     = (middleH-menuH);   // top left of menu corner Y

leftPanelTLX  = menuTLX+16;      // Left and Right Panels 
PanelTLY      = menuTLY+16;		 //			\/
rightPanelTLX = menuTLX+menuW+6; //			\/ 


invSelectX  = rightPanelTLX+27;   // Inventory variables
invSelectY  = PanelTLY+41;	      //        \/
invGapX     = 0;				  //        \/
invGapY     = 0;				  //        \/
invGapXSize = 33;				  //        \/
invGapYSize	= 52;				  //        \/
	
statArrowX   = rightPanelTLX+49;
statArrowY   = PanelTLY+54;
statGapY     = 0;
statGapYSize = 15;
statPointX   = rightPanelTLX+87;
statPointY   = PanelTLY+55;
pointGapXSize = 6;
pointGapYSize = 15;
statSelectorX = rightPanelTLX+86;
statSelectorY = PanelTLY+53;
statSpend     = 0;
statSelGap    = 0;

volX         = rightPanelTLX+109;
volY         = PanelTLY+52;
volGapXSize  = 6;
volGapYSize  = 20;
volGapX      = 0;
volGapY      = 0;
themeX       = rightPanelTLX+109;
themeY       = PanelTLY+92;
themeGap     = 0;
themeGapSize = 6;
theme        = 0;
optionSelect = 0;

							   // Main Stat Menu 
PtS         = 9;			   // points to spend
StI         = 0;			   // stat to increase selector
NavX        = 0;			   // selector sprite position X
NavY        = 0;			   // selector sprite position Y
NavMaxX     = 4;			   // set max nav edge based on window X
NavMaxY     = 2;			   // set max nav edge based on window Y

			      // Global Variables
paused      = 0;  // is the game paused
level       = 34;  // your level
currency    = 0;  // your money
musicVol    = 5;  // music volume
SFXVol      = 5;  // sound effect volume

				  // Sprite Index Variables 			  
helmEqpd	= 0;  //           \/
cloakEqpd	= 0;  //           \/
ringEqpd	= 0;  //           \/
weaponEqpd	= 0;  //           \/
shieldEqpd	= 0;  //           \/
bookEqpd	= 0;  //           \/
potionEqpd  = 0;  //		   \/
keyEqpd     = 0;  //           \/

				  // Stat Levels
HP			= 1;  //     \/
END			= 1;  //     \/
STR			= 1;  //     \/
INT			= 1;  //     \/
DEF			= 1;  //     \/
LCK			= 1;  //     \/
EXP         = 0;

gap         = 0; // Used for Leveling up
prevGap		= 0; //      \/

orange0     =  make_color_rgb(192,106,74);    
orange1     =  make_color_rgb(178,98,71);   
orange2     =  make_color_rgb(158,89,69); 
pink0       =  make_color_rgb(206,44,90); 
pink1       =  make_color_rgb(207,67,90);
pink2       =  make_color_rgb(246,39,99);
pink3       =  make_color_rgb(214,26,104);
tan0        =  make_color_rgb(139,113,113); 
col         =  0;


for(i = 0; i < 5; i++)
	for(j = 0; j < 2; j++)
		weapOwn[i,j] = -1;
weapOwn[0,0] = 0;
weapOwn[1,0] = 1;
weapOwn[2,0] = 2;
weapOwn[3,0] = 3;
weapOwn[4,0] = 0;
weapOwn[0,1] = 1;
weapOwn[1,1] = 2;
weapOwn[2,1] = 3;
weapOwn[3,1] = 0;
weapOwn[4,1] = 1;