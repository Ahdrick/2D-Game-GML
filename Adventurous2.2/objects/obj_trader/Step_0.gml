/// My Daily routine
get_input();
if distance_to_object(obj_player) < 15
{
	openMenu = true;
	if selectDown && selection < 3
		selection++;
	else if selectUp && selection > 0
		selection--;
	if enter && selection = 0
		shoppingTime = true;
	if shoppingTime && Back
		shoppingTime = false;
}
else
{
	openMenu = false;
	selection = 0;
	shoppingTime = false;
}