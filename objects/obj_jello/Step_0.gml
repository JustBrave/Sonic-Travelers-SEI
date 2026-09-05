if player_collide_object(C_MAIN)
{
	obj_player.y_speed = -6;
	obj_player.ground = false;
	play_sound(sfx_jello);
}