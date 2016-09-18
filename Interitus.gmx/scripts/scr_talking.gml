scr_getInput();

if (key_right = 1 || key_left = 1) {
    h_speed += 0.1;
    player_state = p_state.idle;
};
else {
    h_speed = 0;
};

scr_physics();

