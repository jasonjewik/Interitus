scr_getInput();
scr_physics();

//Movespeed Cap Increase
    max_moveSpeed = 1.6;
    
///Is Dodging
    global.isDodging = true;

//Deplete Stamina
    if (sprite_index = spr_player_roll) {
        global.stamina -= 0.3;
    };

//Movement 
    if (h_speed > 0) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.2;
        };
    };
    if (h_speed < 0) {
        if (h_speed > -max_moveSpeed) {
            h_speed -= 0.2;
        };
    };  
