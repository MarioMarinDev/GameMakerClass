/// @desc: Explode Timer

// Create an explosion
var next_pos = 16;
var ex;
instance_create_depth(x, y, depth, obj_bomberman_explosion);
// Up
ex = instance_create_depth(x, y - next_pos, depth, obj_bomberman_explosion);
ex.sprite_index = spr_bomberman_ex_up;

// Down
ex = instance_create_depth(x, y + next_pos, depth, obj_bomberman_explosion);
ex.sprite_index = spr_bomberman_ex_down;

// Left
ex = instance_create_depth(x - next_pos, y, depth, obj_bomberman_explosion);
ex.sprite_index = spr_bomberman_ex_left;

// Right
ex = instance_create_depth(x + next_pos, y, depth, obj_bomberman_explosion);
ex.sprite_index = spr_bomberman_ex_right;


instance_destroy();
