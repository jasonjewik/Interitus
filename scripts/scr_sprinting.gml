scr_getInput();
scr_physics();

//Movespeed Cap Increase
    max_moveSpeed = 1.5;
    
//Deplete Stamina
if (key_shift = 1) {
    global.stamina -= 0.1;
};
    
//Regen Stamina
    if (key_shift = 0 && global.stamina < maxStamina) {
        global.stamina += 0.05;
    };

//Movement
    if (key_right = 1 && global.stamina > 0) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (key_left = 1 && global.stamina > 0) {
        if (h_speed > -max_moveSpeed) {
            h_speed -= 0.1;
        };
    };
    
//Switch Back to Idle
    if (key_right = 0 && key_left = 0) {
        player_state = p_state.idle;
    };

//Switch to Walking
    if (abs(h_speed) > 0 && global.stamina <= 0) {
        player_state = p_state.walking;
    };
    if (abs(h_speed) > 0 && key_shift = 0) {
        player_state = p_state.walking;
    };

//Switch to Dodging 
    if (abs(h_speed) > 0 && global.stamina > 0 && key_alt = 1) {
        player_state = p_state.dodging;
    };
