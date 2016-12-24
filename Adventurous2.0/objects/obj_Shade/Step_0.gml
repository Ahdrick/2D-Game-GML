/// fade the alpha
image_speed = 0;
if(image_alpha > 0)
	image_alpha -= .02;
else
	instance_destroy();