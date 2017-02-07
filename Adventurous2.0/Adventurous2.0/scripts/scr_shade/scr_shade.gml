///Super Sexy art. 
// take sprite and create new sprite and drop alpha

mypsprite = argument [0]; 
myxscale  = argument [1]; 
myyscale  = argument [2]; 
myself    = argument [3]; 
mypsprite = argument [4];

myShadeG = instance_create_depth(myself.x, myself.y,201,obj_Shade); 
myShadeG.sprite_index = sprite_index;
myShadeG.image_index  = image_index;
myShadeG.image_xscale = image_xscale;
myShadeG.image_alpha  = .5;