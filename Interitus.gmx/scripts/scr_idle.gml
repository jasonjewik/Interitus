if (!pause) {
if (room = rm_base) {
    scr_getInput();
    scr_physics();
}

//Reset Variables
    global.isDodging = false;
    visible = true;
    doubleTap = 1;
    alarm[2] = 10;

//Regen Stamina
    if (global.stamina < global.maxStamina) {
        global.stamina += 0.05;
    };

//Talking
if (distance_to_object(obj_npc) < 32 && key_talk = 1) {
    player_state = p_state.talking;
};

//Inertia
    if (h_speed > 0.09) {
        h_speed -= 0.1;
    };
    if (h_speed < -0.09) {
        h_speed += 0.1;
    };
    if (abs(h_speed - 0) <= 0.09) {
        h_speed = 0;
    }
    
//Switch Out of Idle
    if (key_right = 1) {
        image_index = 0;
        player_state = p_state.walking;
        
    };
    if (key_left = 1) {
        image_index = 0;
        player_state = p_state.walking;
    };
    
//Switch to Melee Attack
    if (mouse_left = 1 && meleeCheck = 1 && room = rm_base) {
        image_index = 0;
        player_state = p_state.meleeAttack;
    };
    
//Switch to Range Attack
    if (mouse_right = 1 && meleeCheck = 2 && room = rm_base) {
        image_index = 0;
        player_state = p_state.rangeAttack;
    };
}
