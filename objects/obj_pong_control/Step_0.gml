/// @desc: Pong Control

// Start game
if(instance_exists(obj_start) and obj_start.pressed) {
	game_start = true;
	instance_destroy(obj_start);
	instance_destroy(obj_button);
}

// End game
if(instance_exists(obj_button) and obj_button.pressed) {
	game_end();
}

// Restart game
if(player1_score >= player_score_max or player2_score >= player_score_max) {
	game_restart();
}

// Create a new ball
if(instance_exists(obj_pong_ball) == false and game_start) {
	instance_create_depth(400, 300, 50, obj_pong_ball);
}

// Check if the ball exists
if(!instance_exists(obj_pong_ball)) {
	return;
}

// Destroy the current ball
if(obj_pong_ball.bbox_left > room_width) {
	player1_score = player1_score + 1;
	instance_destroy(obj_pong_ball);
} else if(obj_pong_ball.bbox_right < 0) {
	player2_score++;
	instance_destroy(obj_pong_ball);
}	

