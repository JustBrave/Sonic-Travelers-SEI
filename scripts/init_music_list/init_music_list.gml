function init_music_list()
{
	//Menu background music:
	//None here either!
	
	//Stage background music:
	//None here!
	
	//Game jingles:
	music_add(MUSIC.MENU, bgm_menu, 0.565);
	music_add(MUSIC.J_GAME_OVER, j_game_over, 0.00, 0.00, false);
	music_add(MUSIC.J_INVINCIBLE, j_invincible, 1.76, 27.00, true);
	music_add(MUSIC.J_SPEEDSHOE, j_speedshoe, 2.75, 24.69, true);
	music_add(MUSIC.J_ACT_CLEAR, j_zone_complete, 0.00, 0.00, false);
	music_add(MUSIC.SUPER, j_super, 0.565);
	music_add("FOREGONE DESTRUCTION - MICHIEL VAN DEN BOS", VBZ ,0.00, 62.47, true);
	music_add("ARBOREAL 1", bgm_arboreal_agate1);
	music_add("ARBOREAL 2", bgm_arboreal_agate2, 15.239);
	music_add("BONUS", bgm_bonus, 16.657, 92.33, true);
	music_add("BRICK 1", BBZ, 19.36 , 155, true)
	music_add("TZ", TutorialPlacehold, 0.0 , 326.17, true)
}

	//Setup enum for music ID
	enum MUSIC {
		MENU,
		J_GAME_OVER,
		J_INVINCIBLE,
		J_SPEEDSHOE,
		J_ACT_CLEAR,
		SUPER,
	}
