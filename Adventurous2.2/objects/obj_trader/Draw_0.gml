/// Trading Man guy thing
draw_self()
if openMenu
{
	draw_sprite(spr_trader_menu,0,x-25,y-100)
	draw_sprite(spr_trader_selector,0,x-11,(y-85)+(gapY*option))
	if shoppingTime
	{
		draw_sprite(spr_trader_shop,0,x-145,y-100)
		draw_set_color(obj_GUI.gold)
		draw_text(x-130,y-105,obj_menu.currency)
		draw_sprite(spr_menu_rectangle_selector,0,(x-136)+(gapX*slotSelected),y-80)
		
		for(var i = 0; i <= 5 ; i++)
			draw_sprite(spr_trader_items,i,(x-136)+(gapX*i), y-80)
			draw_text((x-136)+(gapX*i), y-20,itemCost[i])
	}
}