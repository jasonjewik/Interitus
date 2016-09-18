//PREPARE
scr_getInput();
scr_physics();

//Regen Stamina
if (global.stamina < global.maxStamina) {
    global.stamina += 0.05;
};

//Reset Movespeed Cap
    max_moveSpeed = 0.70;

    if (h_speed > max_moveSpeed) {
        h_speed -= 0.1;
    };
    if (h_speed < -max_moveSpeed) {
        h_speed += 0.1;
    };

//Movement
    if (key_right = 1) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (key_left = 1) {
        if (h_speed > -max_moveSpeed) {
            h_speed -= 0.1;
        };
    };
    
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
    
if (room = rm_base) {
  if (mouse_x < x) {
  global.face = -1
  }
  else 
  {
  global.face = 1
  }
if (mouse_right_release = 1)
{
    player_state = p_state.idle;
}

//Bullet Productions  
if (mouse_left_release = 1 && global.cooldown = false && itemReturn = "Plasma Cutter" ) {
dir = point_direction(x, y, mouse_x, mouse_y);

global.cooldown = true;
scr_cooldowns();

if (global.ammo >= 1) {
    if (image_xscale = 1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-=1;
    }
    else if (image_xscale = -1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-=1;
    }
}
}

if (mouse_left_release = 1 && global.cooldown = false & itemReturn = "MAG.cannon")  {
dir = point_direction(x, y, mouse_x, mouse_y);

global.cooldown = true;
scr_cooldowns();

if (global.ammo > 4) {
    if (image_xscale = 1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-=5;
    }
    else if (image_xscale = -1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-=5;
    }
}
    
}
if (mouse_left_hold = 1 && global.cooldown = false && itemReturn = "Pulse Rifle") {
dir = point_direction(x, y, mouse_x, mouse_y);

global.cooldown = true;
scr_cooldowns();

if (global.ammo >= 1) {
    if (image_xscale = 1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-= 1;
    }
    else if (image_xscale = -1) {
        instance_create(obj_armAim.x, obj_armAim.y, obj_bullet);
        global.ammo-= 1;
    }
}
}
ini_open("playerData.ini") 

ini_write_real("Player", "ammo", global.ammo)

ini_close();
}
