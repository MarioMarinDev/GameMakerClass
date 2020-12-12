/// @desc: Render Player

if(image_index > sprite_get_number(sprite_index) - 1) {
	image_speed = 0;
	image_alpha = clamp(image_alpha - fade_spd, 0, 1);
}

if(image_alpha <= 0) {
	var xx = 16 * ceil(x / 16);
	var yy = 16 * ceil(y / 16);
	var selector = instance_create_depth(xx, yy, depth, obj_bomberman_selector);
	selector.key_type = key_type;
	selector.key_controller = key_controller;
	instance_destroy();
}


draw_self();