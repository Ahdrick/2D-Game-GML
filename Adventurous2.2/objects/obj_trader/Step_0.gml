/// My Daily routine
get_input();
if distance_to_object(obj_player) < 50
	openMenu = true;
else openMenu = false;

if openMenu
	if selectDown && selection < 3
		selection++
	else if selectUp && selection > 0
		selection--
