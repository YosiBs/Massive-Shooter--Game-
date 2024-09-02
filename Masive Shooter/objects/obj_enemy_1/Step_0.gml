/// @description Insert description here
// You can write your code in this editor


// Check the player's horizontal position
if(!global.paused){
	if(instance_exists(obj_player)){
	
		if (player.x > x) {
		    x += move_speed;  // Move right towards the player
		} else{
		    x -= move_speed;  // Move left towards the player
		}
	}
}
// Optional: Ensure the enemy stays on the ground (bottom of the screen)
y = room_height - sprite_height;  // Adjust for the ground level