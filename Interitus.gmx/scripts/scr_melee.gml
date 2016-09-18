scr_physics();

//Inertia
    if (h_speed > 0) {
        h_speed -= 0.1;
    };
    if (h_speed < 0) {
        h_speed += 0.1;
    };

//Toggle Melee Hitboxes
if (image_index >= image_number/2 - 1 && image_index <= image_number/2 + 1) {
    if (mouse_check_button_pressed(mb_left) && room = rm_base) {
        if (mouse_x > obj_player.x) {
            hitbox = instance_create(x, y, obj_melee_attack);
        } else if (mouse_x < obj_player.x) {
            hitbox = instance_create(x - 30, y, obj_melee_attack);
        };
        for (var i = 1; i < array_height_2d(global.items); i++) {
            if (global.items[i, 0] == itemReturn) {
                hitbox.damage = global.items[i, 5]
                i = array_height_2d(global.items)
            } else if (itemReturn = "") {
                hitbox.damage = 5
                i = array_height_2d(global.items);
            }
        }
    }
}
