scr_getInput();
scr_physics();

//Regen Stamina
if (global.stamina < maxStamina) {
    global.stamina += 0.05;
};

//Reset Movespeed Cap
    max_moveSpeed = 0.70;

    if (h_speed > max_moveSpeed) {
        h_speed -= 0.1;
    };
    if (h_speed < -max_moveSpeed) {
        h_speed += 0.1;
    };

//Movement
    if (key_right = 1) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (key_left = 1) {
        if (h_speed > -max_moveSpeed) {
            h_speed -= 0.1;
        };
    };

//Switch Back to Idle
    if (key_right = 0 && key_left = 0) {
        player_state = p_state.idle;
    };
    
//Switch to Running
    if (abs(h_speed) > 0 && key_shift = 1 && global.stamina > 0) {
        player_state = p_state.sprinting;
    };
    
//Switch to Dodging 
    if (abs(h_speed) > 0 && global.stamina > 0 && key_alt = 1) {
        player_state = p_state.dodging;
    };
