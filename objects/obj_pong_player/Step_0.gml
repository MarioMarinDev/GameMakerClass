/// @desc: Player Control

move_down = keyboard_check(key_down);
move_up = keyboard_check(key_up);

yaxis = move_down - move_up;

var next_y = y + yaxis * spd;

// Roof collision
if(next_y < 0) {
	next_y = 0;
} else if(next_y + sprite_get_height(sprite_index) > room_height) { // Floor collision
	next_y = room_height - sprite_get_height(sprite_index);
}

y = next_y;



