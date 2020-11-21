/// @desc: Render Button

if(render_sprite) {
	draw_self();
}

if(pressed) {
	draw_set_color(c_red);
	image_blend = c_red;
} else if(hover) {
	draw_set_color(c_gray);
	image_blend = c_gray;
} else {
	draw_set_color(text_color);	
	image_blend = c_white;
}
draw_set_font(text_font);	
draw_set_halign(text_halign);
draw_set_valign(text_valign);

var xc = bbox_left + ((bbox_right - bbox_left) / 2);
var yc = bbox_top + ((bbox_bottom - bbox_top) / 2);

draw_text(xc, yc, text);