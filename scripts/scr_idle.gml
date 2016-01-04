scr_getInput();
scr_physics();

//Coming Out of Inventory
    if (room = rm_inventory) {
        room_goto(global.checkpoint_r);
        obj_player.x = global.checkpoint_x;
        obj_player.y = global.checkpoint_y;
    };

//Reset Dodge
    global.isDodging = false;

//Regen Stamina
    if (global.stamina < maxStamina) {
        global.stamina += 0.05;
    };

//Inertia
    if (h_speed > 0) {
        h_speed -= 0.1;
    };
    if (h_speed < 0) {
        h_speed += 0.1;
    };
    if (h_speed = 0) {
        h_speed = 0;
    };

//Switch Out of Idle
    if (key_right = 1) {
        player_state = p_state.walking;
    };
    if (key_left = 1) {
        player_state = p_state.walking;
    };
