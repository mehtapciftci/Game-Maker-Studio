if (mouse_check_button_pressed(mb_left)) {
    if (position_meeting(mouse_x, mouse_y, obj_giris_buton)) {
		room_goto(rm_level1);
	}
}