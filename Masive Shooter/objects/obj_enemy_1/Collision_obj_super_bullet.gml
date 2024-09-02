/// @description Insert description here
// You can write your code in this editor


effect_create_above(ef_explosion,obj_super_bullet.x,obj_super_bullet.y,1,c_white)
obj_game.points += 10


direction = random(360)

if sprite_index == spr_enemy_1
{
	sprite_index = spr_enemy_2
	instance_copy(true);
} else if instance_number(obj_enemy_1) < 12
{
	sprite_index = spr_enemy_1
	var _spawn_side = random(2);
	if (_spawn_side == 1)
	{
		x=0
	} else {
		x=room_width
	}			
}else{
	instance_destroy();
}