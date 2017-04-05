
draw_set_color(c_white);
draw_text(400,50, "Game Speed (in Cam controller   "+ string(fps));
//draw_text(300,150, "Room Speed (in Cam controller)"+room_speed );
draw_text(300,150, "camera controller distance to player "+ string(distance_to_point(obj_player.x,y)));