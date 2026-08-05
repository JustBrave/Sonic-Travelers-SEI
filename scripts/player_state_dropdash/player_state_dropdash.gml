function player_state_dropdash(){
    
    //Animate dropdash
    animation_play(animator, ANIM.DROPDASH);
    
    //Make it attack
    attacking = true;
    
    //Go back to jump when not holding the button
    if(!hold_action)
    {
        dropdash_timer = -1;
        state = player_state_jump;
    }
    
    //Land the walldash
    var mov = hold_right - hold_left;
    var check_wall = (point_check((wall_w + 1) * facing, wall_h)|| check_object(-(wall_w + 1) * facing, hitbox_h, (wall_w + 1) * facing, hitbox_h));
    
    //Send me up god im ready
if(mov == facing && animation_is_playing(animator, ANIM.DROPDASH) && !ground && check_wall)
{
    dropdash_from_wall = true;

    state = player_state_roll;
    play_sound(sfx_peelout_release);
    ground = true;

    if(hold_down)
    {
        ground_angle = (facing == 1) ? 270 : 90;
        wall_dash_dir = -1;
    }
    else
    {
        ground_angle = (facing == 1) ? 90 : 270;
        wall_dash_dir = 1;
    }

    ground_speed = 6.0 * facing;
    player_reposition_mode();
}
    
    //Land the dropdash
    if(!landed && ground)
    {
        //Dropdash speeds
        var dashspeed = 8.0;
        var maxspeed = 12.0;
        if (super) {
            dashspeed = 12.0;
            maxspeed = 13.0;    
        }
        
        if (facing == -1) {
            if(x_speed <= 0.0)
                ground_speed = max(-maxspeed, -dashspeed + (ground_speed / 4.0));
            else if (ground_angle != 0)
                ground_speed = -dashspeed + (ground_speed / 2.0);
            else
                ground_speed = -dashspeed;
        }
        else{
            if (x_speed >= 0.0)
                ground_speed = min(maxspeed, dashspeed + (ground_speed / 4.0));
            else if (ground_angle != 0)
                ground_speed = dashspeed + (ground_speed / 2.0);
            else
                ground_speed = dashspeed;
        }
        
        
        //Roll state
        state = player_state_roll;
        dropdash_timer = 0;
		if(audio_is_playing(sfx_dropdash)) audio_stop_sound(sfx_dropdash);
        if (!super){
            play_sound(sfx_release);
        } else {
            play_sound(sfx_peelout_release);    
        }
        
        //Camera lag
        obj_camera.h_lag = 8;
        
        //Create effect
        if(global.chaotix_dust_effect)
        {
            for (var i = 0; i < 8; ++i) 
            {
                 create_effect(x - hitbox_w * facing, y + hitbox_h, spr_dust_effect, 0.4, depth-1, (2.5 * facing) * dcos(random_range(180, 270)), 2.5 * dsin(random_range(180, 270)));
            }
        }
        else
{
    var o;
    var wall_dust_offset = 3;

    //Walldash dust
    if(dropdash_from_wall)
    {
        if(wall_dash_dir == -1)
        {
            //Walldash down
            o = create_effect(
                floor(x) + (hitbox_w + wall_dust_offset) * facing,
                floor(y) - hitbox_h,
                spr_effects_dropdash_dust,
                0.4,
                depth-1
            );
        }
        else
        {
            //Walldash up
            o = create_effect(
                floor(x) + (hitbox_w + wall_dust_offset) * facing,
                floor(y) + hitbox_h,
                spr_effects_dropdash_dust,
                0.4,
                depth-1
            );
        }

        if(wall_dash_dir == -1)
{
    // Walldash down
    o.image_angle = 90;
    o.image_xscale = -1;
    o.image_yscale = (facing == 1) ? 1 : -1;
}
else
{
    // Walldash up
    o.image_angle = 90;
    o.image_xscale = 1;
    o.image_yscale = (facing == 1) ? 1 : -1;
}

    //Reset after spawning dust
    dropdash_from_wall = false;
    }
    else
    {
        //Dropdash
        o = create_effect(
            floor(x) + hitbox_w * facing,
            floor(y) + hitbox_h,
            spr_effects_dropdash_dust,
            0.4,
            depth-1
        );

        o.image_xscale = facing;
    }
    }
        
    }
    
    }