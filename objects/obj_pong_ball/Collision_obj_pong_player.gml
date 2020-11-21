/// @desc: Change horizontal direction

if(last_hit != other) {
	hdir *= -1;
	last_hit = other;
	audio_play_sound(snd_hit, 5, false);
}
