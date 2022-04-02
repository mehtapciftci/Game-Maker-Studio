if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, obj_level2_gecis)) {
		room_goto(rm_level3);
	}
}