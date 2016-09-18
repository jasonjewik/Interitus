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
    

scr_physics();
