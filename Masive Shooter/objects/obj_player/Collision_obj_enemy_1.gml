/// @description Insert description here
// You can write your code in this editor

effect_create_above(ef_firework,obj_player.x ,obj_player.y,2,c_green)
instance_destroy(other);
instance_destroy();

obj_game.alarm[0] = 120;
