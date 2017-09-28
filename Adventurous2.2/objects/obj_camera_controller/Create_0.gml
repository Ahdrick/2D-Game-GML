/// creation code
/// sets aspect ratio

ideal_width = 0;
ideal_height = 1000;

aspect_ratio = display_get_width()/display_get_height();

ideal_width = round(ideal_height*aspect_ratio);

if(ideal_width & 1)
	ideal_width++;


camera = camera_create();
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(ideal_width/4,ideal_height/4,1,10000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);
view_camera[0] = camera;

surface_resize(application_surface,ideal_width,ideal_height);
window_set_size(ideal_width,ideal_height);
window_center();

player = obj_player1// obj_player1
x = player.x;
y = player.y;

yoffset = 40;
dir = 1;
Shake_State = 0;

follow = player;
x2 = x+20;
y2 = y;
instance_create_depth(x,y,depth,obj_menu);