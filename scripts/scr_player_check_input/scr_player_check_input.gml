
function scr_player_check_input() {
	
	// Check digonal movement
	if(xaxis != 0 and yaxis != 0) {
		return;
	}
	
	// Check horizontal movement
	if(xaxis != 0 and place_meeting(x + 16 * xaxis, y, obj_bomberman_wall) == false) {
		move_dir = xaxis; // 1 = Right; -1 = Left;
		moving = true;
	}
	
	// Check vertical movement
	if(yaxis != 0 and !place_meeting(x, y + 16 * yaxis, obj_bomberman_wall)) {
		move_dir = yaxis * 2; // 2 = Down; -2 = Up;
		moving = true;
	}
	
	
}