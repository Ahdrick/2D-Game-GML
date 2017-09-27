///draw my cloths on me plzzz
draw_sprite_part_ext(CLOAKS[obj_menu.cloakEqpd],0,anim*SPR_WIDTH,floor(sprIndex)*SPR_HEIGHT,SPR_WIDTH,SPR_HEIGHT,x-(42*image_xscale),y-79,image_xscale,1,-1,1)
draw_sprite_part_ext(HELMS[obj_menu.helmEqpd],0,anim*SPR_WIDTH,floor(sprIndex)*SPR_HEIGHT,SPR_WIDTH,SPR_HEIGHT,x-(42*image_xscale),y-79,image_xscale,1,-1,1)
draw_sprite_part_ext(WEAPS[obj_menu.weaponEqpd],0,anim*SPR_WIDTH,floor(sprIndex)*SPR_HEIGHT,SPR_WIDTH,SPR_HEIGHT,x-(42*image_xscale),y-79,image_xscale,1,-1,1)
draw_sprite_part_ext(SHIELDS[obj_menu.shieldEqpd],0,anim*SPR_WIDTH,floor(sprIndex)*SPR_HEIGHT,SPR_WIDTH,SPR_HEIGHT,x-(42*image_xscale),y-79,image_xscale,1,-1,1)
draw_sprite_part_ext(HELMSOVER[obj_menu.helmEqpd],0,anim*SPR_WIDTH,floor(sprIndex)*SPR_HEIGHT,SPR_WIDTH,SPR_HEIGHT,x-(42*image_xscale),y-79,image_xscale,1,-1,1)
draw_text(x,y,anim)
draw_text(x+10,y,sprIndex)
draw_text(x+40,y,anim_length[anim] - 1)



// array with index matching anim variable containing that animations total sprites 