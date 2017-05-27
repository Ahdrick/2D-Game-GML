if (fade < 1)
	fade += .01;

get_input()
if (fade > .9){
	if (Jump 		||
		DashL	    || 
		DashR		|| 
		Attack		||  
		Potion		|| 
		pause		|| 
		enter		|| 
		selectDown  || 
		selectUp    || 
		selectLeft  || 
		selectRight || 
		MenuL		|| 
		MenuR)
			room_restart();
}