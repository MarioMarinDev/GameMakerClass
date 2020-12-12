/// @desc: Player Control

depth = -y;

#region Movement
switch(key_type) {
	case KEYBOARD:
		move_up = keyboard_check(key_up);
		move_left = keyboard_check(key_left);
		move_down = keyboard_check(key_down);
		move_right = keyboard_check(key_right);
		xaxis = move_right - move_left;
		yaxis = move_down - move_up;
	break;
	case CONTROLLER:
		xaxis = gamepad_axis_check(key_controller, gp_axislh);
		yaxis = gamepad_axis_check(key_controller, gp_axislv);
	break;
}

if(!moving) {
	// Check user input
	scr_player_check_input();
} else {
	switch(move_dir) {
		case 1: // Right
			x += spd;
		break;
		case -1: // Left
			x -= spd;
		break;
		case 2: // Down
			y += spd;
		break;
		case -2: // Up
			y -= spd;
		break;
	}
	move_steps += spd;
	if(move_steps >= move_steps_max) {
		move_steps = 0;
		moving = false;
	}
}

#endregion

#region Create Bombs
var bomb_placed = false;
switch(key_type) {
	case KEYBOARD:
		bomb_placed = keyboard_check_pressed(key_bomb);
	break;
	case CONTROLLER:
		bomb_placed = gamepad_button_check_pressed(key_controller, gp_face1);
	break;
}
if(bomb_placed and !moving and bombs_placed < bomb_limit) {
	bombs_placed += 1;
	var bomb = instance_create_depth(x, y, depth, obj_bomberman_bomb);
	bomb.owner = id;
	bomb.force = bomb_force;
}

#endregion
