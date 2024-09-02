/// @description Insert description here
// You can write your code in this editor



move_speed = 3;
player = obj_player;
// Randomly spawn on the left or right side of the screen
if (choose(true, false)) {
	x = 0;  // Spawn on the left side
} else {
	x = room_width + sprite_width;  // Spawn on the right side
}

// Set the enemy's y position to the ground level
y = room_height - sprite_height;  // Adjust for the ground level