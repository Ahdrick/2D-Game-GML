///animation_hit_frame(frame)
/*
    This script will return true if the image_index of your
    sprite hits a specific frame.
*/

var frame = argument0; // The frame to check for
// Will return true if an animation is on a specific frame
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);
