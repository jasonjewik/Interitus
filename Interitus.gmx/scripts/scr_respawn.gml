///Respawn
if (global.checkpoint_r != noone) {
    visible = true;
    room_goto(global.checkpoint_r);
    x = global.checkpoint_x;
    y = global.checkpoint_y;
    player_state = p_state.idle;
};
