/// @description Insert description here
// You can write your code in this editor

// Toggle pause state
if (!global.paused) {
    global.paused = true;
    instance_create_layer(0, 0, "Instances", obj_instructions_popup); // Create the popup
} else {
    global.paused = false;
}