/// @desc: Explode Timer

// Create an explosion
scr_bomb_create_explosion();


if(instance_exists(owner)) {
	owner.bombs_placed -= 1;
}

instance_destroy();
