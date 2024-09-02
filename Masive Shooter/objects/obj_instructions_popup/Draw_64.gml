/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_rectangle(100, 100, room_width - 100, room_height - 100, false); // Popup background

draw_set_color(c_black);
draw_text(120, 120, "Instructions for the Game:\n\n1. Use arrow keys to move.\n2. Shooting:\n  2.1 `S` Single.\n  2.2 `A` Auto.\n  2.3 `W` Ultimate (cost 100 points).\n3. Avoid Aliens.\n\nPress 'P' to unpause.");

