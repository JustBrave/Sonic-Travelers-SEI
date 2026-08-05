function player_state_spring_diagonal(){
	
	//Change animation
	animation_play(animator, ANIM.SPRING1);
	
	//Change state when falling
	if(y_speed >= 0) 
	{
		state = player_state_normal;
	}
}