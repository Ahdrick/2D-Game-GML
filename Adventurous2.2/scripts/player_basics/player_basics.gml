// grab all input variables
// ation words starting with capital letters
// Attack Jump Block ect. 
// True if the button was clicked or held
get_input()

// always be setting the values of these variables
hspd = hsp[0]+hsp[1] 
vspd = vsp[0]+vsp[1]
	
// fixes stupid floor glitch
y = floor(y)

// if your not attacking your able to turn your sprite 
if(!attacking)
{
	if(Left)
		dir = -1
	if(Right)
		dir = 1
}
if !attacking and !blocking
	if curStam < stamPool
		curStam += stamRegen
	
// controls the sprites animation speeds
if sprIndex <= anim_length[anim] - 1
	sprIndex += anim_speed/60
else
	sprIndex = 0