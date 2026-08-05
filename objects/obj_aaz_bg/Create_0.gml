/// @description Add background
	
	//Inherit the parent event
	event_inherited();
	
	//Vertical scroll factor
	var v_scroll = 0.88;
	
	//Background mode (Used for BG switch)
	bg_mode = 0;
	
	//Add backgrounds, ID starting out from 0, increments by 1 with each background added
	add_background(spr_VBZ_bushtest, 2, 1, v_scroll, 0, 0, 0, 0);
	add_background(spr_VBZ_bushtest, 1, 1, v_scroll, 0, 0, 0, 100);
	add_background(spr_VBZ_bushtest, 3, 1, v_scroll, 0, 0, 0, 224);
	add_background(spr_bg_aaz_bottom, 2, 0.84, v_scroll, 0, 0, 0, 144);
	add_background(spr_bg_aaz_bottom, 1, 0.78, v_scroll, 0, 0, 0, 144);
	add_background(spr_VBZ_bushtest, 0, 0.72, v_scroll, 0, 0, 0, 314);
	// You may use fractions as parallax factors too!
	// HCZ-like 3d water parallax
	/* In the above example, 2/3 is the X factor of the top part of the water, and 96 is the height.
	This allows for the top of the water parallax to be the same speed as the horizon and the bottom
	of the water parallax to be the same speed as the foreground. In previous versions of Harmony
	Framework the calculation for the speeds was done in a way that required extra math to be done
	for this effect, but now it can be done with a single divison!*/
