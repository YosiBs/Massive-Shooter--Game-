/// @description Insert description here
// You can write your code in this editor

global.paused = false;

// Gravity and jump settings
gravity = 0.3;
jump_speed = -10;
vspeed = 0;
on_ground = false;

_move_speed = 4

player_direction = false
_offset_x = 0;
_offset_y = 0;


// Define the ground level (y-coordinate at the bottom of the screen)
ground_level = room_height - sprite_height;  // Adjust sprite_height if necessary