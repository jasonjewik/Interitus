//Pathing
dir2 = sign(obj_pathing.x - x);

//Movement
    if (dir2 = 1) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (dir2 = -1) {
        if (h_speed > -max_moveSpeed) {
            h_speed -= 0.1;
        };
    };
    
//Reset MoveSpeed
if (h_speed > max_moveSpeed) {
    h_speed -= 0.1;
};
if (h_speed < -max_moveSpeed) {
    h_speed += 0.1;
};        

//Go Back to Idle
if (y >= obj_player.y || global.pathing_activate = false) {
    e_state = e_state.idle;
};

scr_physics();
