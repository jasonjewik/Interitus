//Chase the Player
dir = sign(obj_player.x - x);
        
//Movement
    if (dir = 1) {
        if (h_speed < max_moveSpeed) {
            h_speed += 0.1;
        };
    };
    if (dir = -1) {
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
    
//Go Back to Idle        
if (distance_to_object(obj_player) > chaseRange[1]) {
    e_state = e_state.idle;
};


//Attacking 
   /* if (y = obj_player.y && distance_to_object(obj_player) < chaseRange[0] && type != 3) {
        image_index = 0;
        e_state = e_state.attack;
    } else if (y = obj_player.y && distance_to_object(obj_player) < chaseRange[0] && type = 3) {
        image_index = 0;
        e_state = e_state.spit;
    } 

    if (distance_to_object(obj_barricade) < chaseRange[0] && obj_barricade.barricadeUp = true && sign(self.x - instance_nearest(x, y, obj_barricade).x) = -sign(instance_nearest(x, y, obj_barricade).x - obj_player.x)) {
        if (type = 3) {
            image_index = 0;
            e_state = e_state.spit;
        } else {
            image_index = 0;
            e_state = e_state.attack;
        }
    }*/
    if (inBase) {
        if (distance_to_object(obj_barricade) < chaseRange[0] && obj_barricade.barricadeUp) {
            if (type = 3) {
                image_index = 0;
                e_state = e_state.spit;
            } else {
                image_index = 0;
                e_state = e_state.attack;
            }     
        } else {
            if (distance_to_object(obj_player) < chaseRange[0]) {
                    if (type = 3) e_state = e_state.spit
                    else e_state = e_state.attack
                } 
        }
    } else {
        if (instance_nearest(x, y, obj_barricade) = inst_B5BD4BA6) {
            if (sign(inst_B5BD4BA6.x - obj_player.x) = 1) {
                e_state = e_state.chase      
                if (distance_to_object(obj_player) < chaseRange[0]) {
                    if (type = 3) e_state = e_state.spit
                    else e_state = e_state.attack
                } 
            } else if (distance_to_object(obj_barricade) < chaseRange[0] && obj_barricade.barricadeUp) {
                if (type = 3) {
                    image_index = 0;
                    e_state = e_state.spit;
                } else {
                    image_index = 0;
                    e_state = e_state.attack;
                }     
            }
        }  
        if (instance_nearest(x, y, obj_barricade) = inst_FFB81069) {
            if (sign(obj_player.x - inst_FFB81069.x) = 1) {
                e_state = e_state.chase
                if (distance_to_object(obj_player) < chaseRange[0]) {
                    if (type = 3) e_state = e_state.spit
                    else e_state = e_state.attack
                }
            } else if (distance_to_object(obj_barricade) < chaseRange[0] && obj_barricade.barricadeUp) {
                if (type = 3) {
                    image_index = 0;
                    e_state = e_state.spit;
                } else {
                    image_index = 0;
                    e_state = e_state.attack;
                }     
            } 
        }
    }

   
//Pathing
if (y < obj_player.y && global.playerHealth > 0 && instance_exists(obj_pathing) && global.pathing_activate = true) {
    e_state = e_state.pathing;
};

scr_physics();
