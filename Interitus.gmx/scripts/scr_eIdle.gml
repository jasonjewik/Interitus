/*Random Ambling
if (wanderChance = 0) {
    h_speed = 0;
};
if (wanderChance = 1) {
    h_speed = 0.2;
};
if (wanderChance = 2) {
    h_speed = -0.2;
};*/

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

//Chase the Player
if (y = obj_player.y && global.playerHealth > 0) {
    if (distance_to_object(obj_player) <= chaseRange[1] && distance_to_object(obj_player) > chaseRange[0]) {
        e_state = e_state.chase;
    };
};

//Pathing
if (y < obj_player.y && global.playerHealth > 0 && global.pathing_activate = true && distance_to_object(obj_player) <= chaseRange[1]) {
    e_state = e_state.pathing;
};
if (y > obj_player.y && global.playerHealth > 0 && global.pathing_activate = true && distance_to_object(obj_player) <= chaseRange[1]) {
    e_state = e_state.pathing2;
};

scr_physics();
