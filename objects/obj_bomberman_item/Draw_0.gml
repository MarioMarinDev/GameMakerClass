/// @desc: 

if(border_dim) {
	border_dim_alpha -= border_dim_spd;
} else {
	border_dim_alpha += border_dim_spd;
}

if(border_dim_alpha <= 0 or border_dim_alpha >= 1) {
	border_dim = !border_dim;
}

draw_self();
draw_sprite_ext(spr_bomberman_selector, 0, x, y, 1, 1, 0, c_white, border_dim_alpha);