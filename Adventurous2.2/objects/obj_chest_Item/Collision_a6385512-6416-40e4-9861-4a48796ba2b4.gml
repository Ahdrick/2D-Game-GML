if (enter == true){
// do stuff like add item or stats up
	for(j = 0; j < 2; j++)
	{	
		for(i = 0; i < 5; i++)
		{
			if(menu.inventory[((itemType*2)+j),i] == -1)
			{
				menu.inventory[((itemType*2)+j),i] = itemNumber;
				stop = true;
				break;
			}
		}
		if(stop) break;
		if(menu.inventory[((itemType*2)+j),i-1] != -1 && j == 1 && i == 5)
		{
			mysign = choose(-1,1);
			xx = random (4)
			yy = random (4)
			add_movement_horizontal_vertical_maxspeed(xx*mysign, -xx, yy*mysign, -yy);
		}
	}
	if(stop)
		instance_destroy();
}
