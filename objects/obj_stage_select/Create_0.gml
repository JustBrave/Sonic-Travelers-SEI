	//Essential values
	zone_sel = 0;
	act_sel = 0;
	sound_sel = 0;
	sound_arr = ds_map_keys_to_array(global.music_map);
	
	show_debug_message("key for map 0")
	show_debug_message(sound_arr[0])
	
	//The lists
	zone_list = [
    ["TUTORIAL", rm_tutorial],
	["VELOCITY BLOSSOMS", rm_velocity_blossoms_zone_1, rm_arboreal_agate2],
    ["BRICK BLAST", rm_brick_blast_zone],
	["CRACK FACILITY", rm_destiny_time_zone],
	["ADOPTION CENTER", rm_raging_rails_zone],
	["SUGARIA TROPICA", rm_sugaria_tropica_zone],
	["WEED TESTING AREA", rm_test],
	];

	
	reset_stage_data();
	global.score = 0;

	quotes = ["RETSUKO DEV HELL!"];
	
	quote_index = irandom(array_length(quotes)-1);
	
	//Randomize the BG
	image_speed = 0;
	image_index = 0//irandom(image_number);
	
	fade_in_room(5);
	play_music(MUSIC.MENU);
	
	//Create stage data
	for (var i = 0; i < 128; ++i) 
	{
	    deform_data[i] = 12 * dsin((360 / 128) * i);
	}