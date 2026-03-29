/// @description Enemy Parent


// Check if hp is greater than zero
// We only want to run this event if the enemy has
// Lost all of its health
if (hp > 0) exit;
instance_create_depth(x, y, depth, defeat_down_object);


