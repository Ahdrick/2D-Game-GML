
if shoppingTime
{
	draw_sprite(spr_trader_shop,0,90,90)
	draw_set_color(obj_GUI.gold)
	draw_text(105,85,obj_menu.currency)
	draw_sprite(spr_menu_rectangle_selector,0,99+(gapX*slotSelected),110)
	for(var i = 0; i < 6 ; i++)
	{
		draw_sprite(spr_trader_items,i,(99)+(gapX*i), 110)
		draw_text((107)+(gapX*i), 157,itemCost[i])
	}
	draw_sprite(spr_trader_stats,0,400,70)
}
