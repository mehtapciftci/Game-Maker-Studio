if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, obj_gecis_buton)) {
		room_goto(rm_level2);
	}
}