/// @desc: Render Player

// Change sprite
if(xaxis > 0) {
	sprite_index = spr_bomberman_player_right;
} else if(xaxis < 0) {
	sprite_index = spr_bomberman_player_left;
}
if(yaxis > 0) {
	sprite_index = spr_bomberman_player_down;
} else if(yaxis < 0) {
	sprite_index = spr_bomberman_player_up;
}

// Image speed
if(yaxis == 0 and xaxis == 0) {
	image_speed = 0;
	image_index = 0;
} else {
	image_speed = 1;
}

draw_self();

