/// @desc: Render Bomb

if(alarm[0] < explode_delay * 0.25) {
	image_speed = 3;
	image_blend = c_red;
} else if(alarm[0] < explode_delay / 2) {
	image_speed = 2;
	var color_red = merge_color(c_red, c_white, 0.5);
	image_blend = color_red;
} 

draw_self();
