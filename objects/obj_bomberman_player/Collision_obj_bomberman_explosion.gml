/// @desc: Dead

var player = instance_create_depth(x, y, depth, obj_bomberman_player_dead);
player.key_type = key_type;
player.key_controller = key_controller;
instance_destroy();
