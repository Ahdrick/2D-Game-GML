// NO SHAKE
if (Shake_State==0) {
    view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5;
    view_yview[0] += (((y - (view_hview/2)) - view_yview[0]) * .5) - 40;
       }
    
    //camera_get_view_x(view_camera[0])
    
    
    
 if(Shake_State==1) {
            view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-1,1);
            view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-1,1)- 40;
                        }
    


//////BIG FREAKING SHAKE
if(Shake_State==2) {
view_xview[0] += ((x - (view_wview/2)) - view_xview[0]) * .5 + random_range(-2,2);
view_yview[0] += ((y - (view_hview/2)) - view_yview[0]) * .5 + random_range(-2,2)- 40;
}
if(Shake_State==3) {
myx  += ((x -  (camera_get_view_x(view_camera[0]))) - camera_get_view_x(view_camera[0])) * .5 + random_range(-3,3);
myy  += ((y -  (camera_get_view_y(view_camera[0]))) - camera_get_view_y(view_camera[0])) * .5 + random_range(-3,3)- 40;
}

//camera_set_view_pos(view_camera[0], myx,myy);
//camera_set_view_pos(camera_id, x, y)