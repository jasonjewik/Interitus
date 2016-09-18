//Pathing
dir3 = sign(obj_pathing.x - x); 
dir4 = sign(obj_player.x - x);

//Movement
    if (dir3 = 1) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (dir3 = -1) {
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

/*Jumping Up
if (place_meeting(x, y + 1, obj_wall) && !place_meeting(x, y - 32, obj_wall)) {
    v_speed = -jumpSpeed;
} 

if (place_meeting(x, y, obj_pathing)) {
    h_speed = dir4 * 3;
}*/

//Go Back to Idle
if (y <= obj_player.y || global.pathing_activate = false) {
    e_state = e_state.idle;
};

scr_physics();
