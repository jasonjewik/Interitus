//Knockbacks
h_speed = sign(x - obj_player.x);

//Barricade Collision
if (place_meeting(x + h_speed, y, obj_barricade))
{
    while(!place_meeting(x + sign(h_speed), y, obj_barricade))
    {
        x += sign(h_speed);
    }
    h_speed = 0;
}
if (place_meeting(x, y + v_speed, obj_barricade))
{
    while(!place_meeting(x, y + sign(v_speed), obj_barricade))
    {
        y += sign(v_speed);
    }
    v_speed = 0;
}

if (type = 5) {
    if (distance_to_object(obj_player) < chaseRange[0]) {
        e_state = e_state.attack;
    }
}

scr_physics();
