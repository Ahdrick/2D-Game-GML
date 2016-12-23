///enable_movement_air_jump(height, input)
/*
    Call this script in order to add platform double jumping
    (air jumping) to a movement entity.
*/

var height = argument[0]; // Jump height
var input = argument[1]; // Jump input

// Air jump
if (!place_meeting(x, y+1, collision_object) && air_jump == 1 && input) {
    vsp[0] = -height;
    air_jump--;
}
