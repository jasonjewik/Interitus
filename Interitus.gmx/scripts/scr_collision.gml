/*Physics

//Gravity
if (v_speed < 10) v_speed += grav;

//Horizontal Collision
if (place_meeting(x + h_speed, y, obj_zombieMaster))
{
    while(!place_meeting(x + sign(h_speed), y, obj_zombieMaster))
    {
        x += sign(h_speed);
    }
    h_speed = 0;
}
x += h_speed;

//Vertical Collision
if (place_meeting(x,y + v_speed,obj_zombieMaster))
{
    while(!place_meeting(x,y + sign(v_speed),obj_zombieMaster))
   {
        y += sign(v_speed);
    }
    v_speed = 0
}
y += v_speed;
