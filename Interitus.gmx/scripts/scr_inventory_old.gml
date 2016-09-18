//Selection

type = scr_itemType();
itemUsed = false

//Slot Selection
if (hotKey = 1) {    
    if (type = 3) {
        if (string_count("Med-Pack", global.inventory[ipos2, 0]) = 1 && global.playerHealth < global.maxHealth) {
            global.playerHealth += 20
            itemUsed = true
        } else if (string_count("Food", global.inventory[ipos2, 0]) = 1 && global.food < global.maxFood) {
            global.food += 10
            itemUsed = true
        }
        if (itemUsed) {
            global.inventory[ipos2, 1]--
            multiple = string_pos(" x", global.inventory[ipos2, 0])
            global.inventory[ipos2, 0] = string_delete(global.inventory[ipos2, 0], multiple, string_length(global.inventory[ipos2, 0]));
            if (global.inventory[ipos2, 1] > 0) global.inventory[ipos2, 0] = string_insert(" x" + string(global.inventory[ipos2, 1]), global.inventory[ipos2, 0], string_length(global.inventory[ipos2, 0]) + 1)
            else global.inventory[ipos2, 0] = ""
        }
    } else if (type = "---") {
        if (global.keyBinding[1, 0] != "") {
            global.inventory[ipos2, 0] = global.keyBinding[1, 0]
            global.inventory[ipos2, 1] = global.keyBinding[1, 1]
            global.inventory[ipos2, 2] = ""
            global.keyBinding[1, 0] = ""
            global.keyBinding[1, 1] = ""
        }
    } else if (type = 1 || type = 2) {
        global.inventory[ipos2, 1]--;
        if (global.keyBinding[1, 0] = "") {
            global.keyBinding[1, 0] = global.inventory[ipos2, 0]
            global.keyBinding[1, 1] = global.inventory[ipos2, 1]
            global.inventory[ipos2, 2] = global.inventory[ipos2, 0]
            global.inventory[ipos2, 1] = ""
            global.inventory[ipos2, 0] = "---";
        } else {
            global.inventory[ipos2, 2] = global.keyBinding[1, 0]
            global.keyBinding[1, 0] = global.inventory[ipos2, 0]
            global.keyBinding[1, 1] = global.inventory[ipos2, 1]
            global.inventory[ipos2, 1] = global.keyBinding[1, 1]
            global.inventory[ipos2, 0] = global.inventory[ipos2, 2]
            global.inventory[ipos2, 2] = ""
        }
    } 
} else if (hotKey = 2) {
    if (type = 3) {
        if (string_count("Med-Pack", global.inventory[ipos2, 0]) = 1 && global.playerHealth < global.maxHealth) {
            global.playerHealth += 20
            itemUsed = true
        } else if (string_count("Food", global.inventory[ipos2, 0]) = 1 && global.food < global.maxFood) {
            global.food += 10
            itemUsed = true
        }
        if (itemUsed) {
            global.inventory[ipos2, 1]--
            multiple = string_pos(" x", global.inventory[ipos2, 0])
            global.inventory[ipos2, 0] = string_delete(global.inventory[ipos2, 0], multiple, string_length(global.inventory[ipos2, 0]));
            if (global.inventory[ipos2, 1] > 0) global.inventory[ipos2, 0] = string_insert(" x" + string(global.inventory[ipos2, 1]), global.inventory[ipos2, 0], string_length(global.inventory[ipos2, 0]) + 1)
            else global.inventory[ipos2, 0] = ""
        }
    } else if (type = "---") {
        if (global.keyBinding[2, 0] != "") {
            global.inventory[ipos2, 0] = global.keyBinding[2, 0]
            global.inventory[ipos2, 1] = global.keyBinding[2, 1]
            global.inventory[ipos2, 2] = ""
            global.keyBinding[2, 0] = ""
            global.keyBinding[2, 1] = ""
        }
    } else if (type = 1 ||  type = 2) {
        global.inventory[ipos2, 1]--;
        if (global.keyBinding[2, 0] = "") {
            global.keyBinding[2, 0] = global.inventory[ipos2, 0]
            global.keyBinding[2, 1] = global.inventory[ipos2, 1]
            global.inventory[ipos2, 2] = global.inventory[ipos2, 0]
            global.inventory[ipos2, 1] = ""
            global.inventory[ipos2, 0] = "---";
        } else { 
            global.inventory[ipos2, 2] = global.keyBinding[2, 0]
            global.keyBinding[2, 0] = global.inventory[ipos2, 0]
            global.keyBinding[2, 1] = global.inventory[ipos2, 1]
            global.inventory[ipos2, 1] = global.keyBinding[2, 1]
            global.inventory[ipos2, 0] = global.inventory[ipos2, 2]
            global.inventory[ipos2, 2] = ""
        }
    }
} 

scr_invRefresh();

//Fail-safes
if (type != 3) {
if (global.keyBinding[1, 0] = global.keyBinding[2, 0]) {
    global.keyBinding[2, 0] = "";
}
scr_invRemove();
}

scr_invSave();


