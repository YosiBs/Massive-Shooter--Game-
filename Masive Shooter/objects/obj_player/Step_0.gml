/// @description Insert description here
// You can write your code in this editor


if(!global.paused){
	if keyboard_check(vk_left)
	{
			player_direction = false
			x -= _move_speed
			sprite_index = spr_player_left
	}
	if keyboard_check(vk_right)
	{
			player_direction = true
			x += _move_speed
			sprite_index = spr_player_right
	}

	// Apply gravity
	if (y < ground_level) {
	    vspeed += gravity;
	    on_ground = false;
	} else {
	    vspeed = 0;
	    on_ground = true;
	    y = ground_level;  // Keep character on the ground
	}

	// Jumping
	if (keyboard_check_pressed(vk_up) && on_ground) {
	    vspeed = jump_speed;
	    on_ground = false;
	}

	// Apply vertical movement
	y += vspeed;

	if  keyboard_check_pressed(ord("S")) || keyboard_check(ord("A"))
	{
		// Example: Offset based on the player's direction
		if (player_direction) {  // Facing right
		    _offset_x = 16;  // Adjust this value to place the bullet correctly
		    _offset_y = 100;
		} else {  // Facing left
		    _offset_x = -16;  // Adjust this value to place the bullet correctly
		    _offset_y = 100;
		}
		instance_create_layer(x + _offset_x, y + _offset_y, "Instances", obj_bullet);

	}
	if  (keyboard_check_pressed(ord("W")) && obj_game.points >= 100)
	{
	
		// Example: Offset based on the player's direction
		if (player_direction) {  // Facing right
		    _offset_x = 16;  // Adjust this value to place the bullet correctly
		    _offset_y = 100;
		} else {  // Facing left
		    _offset_x = -16;  // Adjust this value to place the bullet correctly
		    _offset_y = 100;
		}
		instance_create_layer(x + _offset_x, y + _offset_y, "Instances", obj_super_bullet);
	
		obj_game.points -= 100

	}
}