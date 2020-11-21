/// @desc: Render Player Scores

// Draw setup
draw_set_font(fnt_score);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_top);

var p1_x = 64;
var p1_y = 32;
var p2_x = room_width - 64;
var p2_y = 32;

draw_text(p1_x, p1_y, string(player1_score));
draw_text(p2_x, p2_y, string(player2_score));
