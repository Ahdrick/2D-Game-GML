/// My Daily routine
get_input();
if distance_to_object(obj_player) < 10 && !shoppingTime
{
	openMenu = true;
	if selectDown && option < 3
		option++;
	else if selectUp && option > 0
		option--;
	if enter && option = 0
		shoppingTime = true;
	
}
else if distance_to_object(obj_player) < 10 && shoppingTime
{
	openMenu = false;
	if selectRight && slotSelected < 5
		slotSelected++;
	else if selectLeft && slotSelected > 0
		slotSelected--;
		
	if shoppingTime && Back
		shoppingTime = false;
}
else
{
	openMenu = false;
	option = 0;
	shoppingTime = false;
	slotSelected = 0
}