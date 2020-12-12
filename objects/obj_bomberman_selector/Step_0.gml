/// @desc: Selector Control

#region Movement
switch(key_type) {
	case KEYBOARD:
		move_up = keyboard_check_pressed(key_up);
		move_left = keyboard_check_pressed(key_left);
		move_down = keyboard_check_pressed(key_down);
		move_right = keyboard_check_pressed(key_right);
		xaxis = move_right - move_left;
		yaxis = move_down - move_up;
	break;
	case CONTROLLER:
		xaxis = gamepad_axis_check_pressed(key_controller, gp_axislh);
		yaxis = gamepad_axis_check_pressed(key_controller, gp_axislv);
	break;
}
var next_x = x + 16 * xaxis;
var next_y = y + 16 * yaxis;
if(next_x < 0 or next_x >= room_width) {
	next_x = x;
}
if(next_y <= 0 or next_y > room_height) {
	next_y = y;
}
x = next_x;
y = next_y;
#endregion

#region Selectable
selectable = true;
for(var i = 0; i < array_length(objects_not_selectable); i++) {
	if(place_meeting(x, y, objects_not_selectable[i])) {
		selectable = false;
	}
}
#endregion 

#region New player
var selected = false;
switch(key_type) {
	case KEYBOARD:
		selected = keyboard_check_pressed(key_select);
	break;
	case CONTROLLER:
		selected = gamepad_button_check_pressed(key_controller, gp_face1);
	break;
}
if(selectable and selected) {
	var player = instance_create_depth(x, y, 0, obj_bomberman_player);
	player.key_type = key_type;
	player.key_controller = key_controller;
	instance_destroy();
}
#endregion
