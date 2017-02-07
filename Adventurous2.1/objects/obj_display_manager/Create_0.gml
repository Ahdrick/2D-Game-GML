/// sets aspect ratio
ideal_width = 0;
ideal_height = 1000;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);

if(ideal_width & 1)
	ideal_width++;

for(i = 1; i <= room_last; i++)
{
	if(room_exists(i))
	{
		room_set_view_enabled(i,true);
		var cam = camera_create_view(0,0,ideal_width,ideal_height,0,obj_player,5,5,20,20);
		room_set_camera(i,0,cam);
	}
}
surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
window_center();