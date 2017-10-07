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
animindex = floor(sprIndex)

// if your not attacking your able to turn your sprite 
if not attacking and not dashing
{
	if(Left)
		dir = -1
	if(Right)
		dir = 1
}

if dashing or flinch
	enable_movement_platform_actions(.6,runSpeed,4.7,0,0,0,0)
else
	enable_movement_platform_actions(.6,runSpeed,4.7,Right,Left,Jump,0)
	
if not attacking and  not blocking
	if curStam < stamPool
		curStam += stamRegen+1
	
// controls the sprites animation speeds
if sprIndex <= anim_length[anim] - 1
	sprIndex += anim_speed/60
else
	sprIndex = 0