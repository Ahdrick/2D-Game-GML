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
							   // Main Stat Menu 
PtS         = 9;			   // points to spend
StI         = 0;			   // stat to increase selector
NavX        = 0;			   // selector sprite position X
NavY        = 0;			   // selector sprite position Y
NavMaxX     = 4;			   // set max nav edge based on window X
NavMaxY     = 2;			   // set max nav edge based on window Y

			      // Global Variables
paused      = 0;  // is the game paused
level       = 1;  // your level
currency    = 0;  // your money
musicVol    = 5;  // music volume
SFXVol      = 5;  // sound effect volume

				  // Sprite Index Variables 			  
helmEqpd	= 0;  //           \/
cloakEqpd	= 0;  //           \/
ringEqpd	= 0;  //           \/
swordEqpd	= 0;  //           \/
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

/*
red         =  make_color_rgb(222,44,90);  
gold        =  make_color_rgb(207,150,83);   
blue        =  make_color_rgb(83,206,207); 
purple      =  make_color_rgb(121,83,207); 
white       =  make_color_rgb(255,255,255); 
col         =  0;
*/