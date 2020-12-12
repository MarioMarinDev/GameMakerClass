
function scr_bomb_create_explosion(){

	// Create center explosion
	instance_create_depth(x, y, depth, obj_bomberman_explosion);
	
	// Create outside explosion 
	var next_x, next_y;
	var stop = [false, false, false, false]; // left, right, up, down
	var sprite;

	for(var i = 1; i <= force; i++) {
		var not_last = i < force;
		// Left
		if(stop[LEFT] == false) {
			sprite = (not_last) ? spr_bomberman_ex_horizontal : spr_bomberman_ex_left;
			next_x = x - (16 * i);
			next_y = y;
			var wall = instance_place(next_x, next_y, obj_bomberman_wall);
			if(instance_exists(wall) and wall.object_index != obj_bomberman_bomb) {
				stop[LEFT] = !wall.destructible;
			}
			var ex = instance_create_depth(next_x, next_y, depth, obj_bomberman_explosion);
			ex.sprite_index = sprite;
		}
		// Right
		if(stop[RIGHT] == false) {
			sprite = (not_last) ? spr_bomberman_ex_horizontal : spr_bomberman_ex_right;
			next_x = x + (16 * i);
			next_y = y;
			var wall = instance_place(next_x, next_y, obj_bomberman_wall);
			if(instance_exists(wall) and wall.object_index != obj_bomberman_bomb) {
				stop[RIGHT] = !wall.destructible;
			}
			var ex = instance_create_depth(next_x, next_y, depth, obj_bomberman_explosion);
			ex.sprite_index = sprite;
		}
		// Up
		if(stop[UP] == false) {
			sprite = (not_last) ? spr_bomberman_ex_vertical : spr_bomberman_ex_up;
			next_x = x;
			next_y = y - (16 * i);
			var wall = instance_place(next_x, next_y, obj_bomberman_wall);
			if(instance_exists(wall) and wall.object_index != obj_bomberman_bomb) {
				stop[UP] = !wall.destructible;
			}
			var ex = instance_create_depth(next_x, next_y, depth, obj_bomberman_explosion);
			ex.sprite_index = sprite;
		}
		// Down
		if(stop[DOWN] == false) {
			sprite = (not_last) ? spr_bomberman_ex_vertical : spr_bomberman_ex_down;
			next_x = x;
			next_y = y + (16 * i);
			var wall = instance_place(next_x, next_y, obj_bomberman_wall);
			if(instance_exists(wall) and wall.object_index != obj_bomberman_bomb) {
				stop[DOWN] = !wall.destructible;
			}
			var ex = instance_create_depth(next_x, next_y, depth, obj_bomberman_explosion);
			ex.sprite_index = sprite;
		}
	}

}