/// @desc: Player Control

depth = -y;

#region Movement
move_up = keyboard_check(key_up);
move_left = keyboard_check(key_left);
move_down = keyboard_check(key_down);
move_right = keyboard_check(key_right);

xaxis = move_right - move_left;
yaxis = move_down - move_up;

hspd = xaxis * spd;
vspd = yaxis * spd;

// Check horizontal collision
if(place_meeting(x + hspd, y, obj_bomberman_wall)) {
	hspd = 0;
}
// Check vertical collision
if(place_meeting(x, y + vspd, obj_bomberman_wall)) {
	vspd = 0;
}

x += hspd;
y += vspd;
#endregion

#region Create Bombs

if(keyboard_check_pressed(key_bomb)) {
	instance_create_depth(x, y, depth, obj_bomberman_bomb);
}

#endregion
