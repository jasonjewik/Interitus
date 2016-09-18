for (var j = 1; j < array_height_2d(items); j++) {
    if (items[j, 0] = argument0) {
        type = items[j, 2]
        durable = items[j, 4]
        j = array_height_2d(items)
    } 
}

for (var i = 1; i < maxInvSlots; i++) {
    if (type = 3) {
        if (string_count(argument0, global.inventory[i, 0]) = 1) {
            global.inventory[i, 1]++
            i = maxInvSlots;
        } else if (global.inventory[i, 0] = "") {
            global.inventory[i, 1]++
            global.inventory[i, 0] = argument0; 
            i = maxInvSlots;
        }
    } else {
        if (global.inventory[i, 0] = "") {        
            global.inventory[i, 1] = durable
            global.inventory[i, 0] = argument0; 
            i = maxInvSlots;
        }
    }
};

scr_invRefresh();
scr_invSave();

