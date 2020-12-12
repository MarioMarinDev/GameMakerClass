/// @desc: Selector Variables

depth = -room_height;

key_type = KEYBOARD;
key_controller = 0;
key_up = ord("W");
key_left = ord("A");
key_down = ord("S");
key_right = ord("D");
key_select = ord("E");

selectable = false;

objects_not_selectable = [
	obj_bomberman_wall,
	obj_bomberman_player,
	obj_bomberman_player_dead,
	obj_bomberman_explosion,
	obj_bomberman_bomb,
	obj_bomberman_block,
	obj_bomberman_selector
];

