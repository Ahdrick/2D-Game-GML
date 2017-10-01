if(keyboard_check_pressed(vk_backspace))
	currentHealth -= 10 // testing daamge
//take damage here as well? or have enemy control it 
// if you die ... play death animation
if(currentHealth <= 0 and anim != 8)
{
	sprIndex = 0
	anim = 8
	anim_speed = anim_speed_default-2
	Dead = true
}
	