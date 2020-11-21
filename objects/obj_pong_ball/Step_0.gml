/// @desc: Ball Control

x += hdir * spd;
y += vdir * spd;

// Vertical collision
if(bbox_top < 0 or bbox_bottom > room_height) {
	vdir *= -1;
}