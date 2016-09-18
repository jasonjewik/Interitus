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

if (instance_exists(obj_zombieMaster)) {
    h_speed = sign(obj_player.x - obj_zombieMaster.x) * 1.3;
}

scr_physics();

/**Knockback
if (global.damage_dir > 0) {
    
};
if (global.damage_dir < 0) {
    for (var i = 0; i < 30; i++) {
        h_speed = global.damage_dir * 2;
    };
    
    if (i >= 30) {
        image_index = 0;
        player_state = p_state.idle;
    };
};**/

//HP Reduction Handled in Each Damaging Object
//(i.e. spit projectile, spit puddle, melee, etc.)


