for (var i = 1; i < maxInvSlots; i++) {
    if (global.inventory[i, 0] = "" || global.inventory[i, 1] <= 0) {
        global.inventory[i, 0] = ""
        global.inventory[i, 1] = 0  
        global.inventory[i, 2] = ""
        global.inventory[i, 3] = 0;
    } 
}

/*Unused
first = false

for (var i = 1; i < maxInvSlots; i++) {
    if (global.inventory[i, 0] = "") {
        global.inventory[i, 1] = 0  
        global.inventory[i, 2] = ""
    }
    if (global.inventory[i, 0] = "---") {
        if (!first) {
            if (global.keyBinding[1, 0] != "") {
                global.inventory[i, 2] = global.keyBinding[1, 0]
                first = true
            } else {
                global.inventory[i, 2] = global.keyBinding[2, 0]
                first = true
            }
        } else if (first) {
            global.inventory[i, 2] = global.keyBinding[2, 0]
        }
    }
}*/

