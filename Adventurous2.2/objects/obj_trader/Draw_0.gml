/// Trading Man guy thing
draw_self()
if openMenu
{
	draw_sprite(spr_trader_menu,0,x-25,y-100)
	draw_sprite(spr_trader_selector,0,x-12,(y-86)+(selectorSpace*selection))
}