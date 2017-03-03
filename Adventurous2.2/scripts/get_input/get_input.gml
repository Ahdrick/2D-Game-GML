/// get_input()
Right  = keyboard_check(ord("D"))             || (gamepad_axis_value(0,gp_axislh) > 0);
Left   = keyboard_check(ord("A"))             || (gamepad_axis_value(0,gp_axislh) < 0);
Block  = mouse_check_button(mb_right)         || (gamepad_button_check(0,gp_face2)) || keyboard_check_direct(vk_alt)  ;;
Jump   = keyboard_check_pressed(vk_space)     || (gamepad_button_check_pressed(0,gp_face1));
DashL  = keyboard_check_pressed(ord("Q"))     || (gamepad_button_check_pressed(0,gp_shoulderl))
DashR  = keyboard_check_pressed(ord("E"))	  || (gamepad_button_check_pressed(0,gp_shoulderr));
Attack = mouse_check_button_pressed(mb_left)  || (gamepad_button_check_pressed(0,gp_shoulderrb)) || keyboard_check_pressed(vk_control)  ;
Potion = keyboard_check_pressed(ord("F"))     || (gamepad_button_check_pressed(0,gp_padd));
pause  = keyboard_check_pressed(ord("P"))     || (gamepad_button_check_pressed(0,gp_start));
enter  = keyboard_check_pressed(vk_enter)     || (gamepad_button_check_pressed(0,gp_face1));
selectDown  = keyboard_check_pressed(ord("S"))|| (gamepad_button_check_pressed(0,gp_padd));
selectUp    = keyboard_check_pressed(ord("W"))|| (gamepad_button_check_pressed(0,gp_padu));
selectLeft  = keyboard_check_pressed(ord("A"))|| (gamepad_button_check_pressed(0,gp_padl));
selectRight = keyboard_check_pressed(ord("D"))|| (gamepad_button_check_pressed(0,gp_padr));
MenuL  = keyboard_check_pressed(ord("Q"))     || (gamepad_button_check_pressed(0,gp_shoulderl));
MenuR  = keyboard_check_pressed(ord("E"))     || (gamepad_button_check_pressed(0,gp_shoulderr));