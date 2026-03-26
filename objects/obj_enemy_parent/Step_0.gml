/// @description Enemy Parent

// Get the direction the enemy is moving
var _dir = point_direction(x_previous, y_previous, x, y);

// Reset scale every frame (prevents the 0-scale bug from sticking)
image_xscale = 1;

// If that direction is pointed up
if (_dir < 135) && (_dir > 45) {
    sprite_index = walk_up_sprite;
    path_speed = v_speed;
}

// If that direction is pointed down
else if (_dir > 235) && (_dir < 315) {
    sprite_index = walk_down_sprite;
    path_speed = v_speed;
}

// Otherwise the enemy is moving sideways
else {
    sprite_index = walk_side_sprite;
    // Only flip for left/right (and never allow 0)
    if (x != x_previous) {
        image_xscale = -sign(x - x_previous);
    }
    path_speed = my_speed;
}

// Save current position for next frame
x_previous = x;
y_previous = y;