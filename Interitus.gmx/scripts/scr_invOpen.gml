scr_getInput();
scr_physics();

if (showInv = true) {
    h_speed = 0;
    if (v_speed < 0) {
        v_speed++;
    }
} else {
    player_state = p_state.idle;
}

