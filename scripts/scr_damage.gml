scr_physics();

//Knockback
if (global.damage_dir > 0) {
    for (var i = 0; i < 30; i++) {
        h_speed = global.damage_dir * 2;
    };
    
    if (i >= 30) {
        player_state = p_state.idle;
    };
};
if (global.damage_dir < 0) {
    for (var i = 0; i < 30; i++) {
        h_speed = global.damage_dir * 2;
    };
    
    if (i >= 30) {
        player_state = p_state.idle;
    };
};

//HP Reduction Handled in Each Damaging Object
//(i.e. spit projectile, spit puddle, melee, etc.)


