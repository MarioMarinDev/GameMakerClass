/// @desc: Button Control

if(collision_point(mouse_x, mouse_y, id, true, false)) {
	hover = true;
} else {
	hover = false;
}


if(hover and mouse_check_button(mb_left)) {
	pressed = true;
} else {
	pressed = false;
}

