//Selection

type = scr_itemType();
itemUsed = false

//New Slot Selection
if (hotKey > 0 && hotKey < 3) {
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
            if (global.inventory[ipos2, 1] = 0) global.inventory[ipos2, 0] = ""
        }
    } else if (type = 1 || type = 2) {
        for (var i = 1; i < maxInvSlots; i++) {
            if (global.inventory[i, 3] = hotKey) {
                global.inventory[i, 3] = 0;
            }
        }
        if (global.inventory[ipos2, 3] != hotKey) {
            global.inventory[ipos2, 3] = hotKey
        } else if (global.inventory[ipos2, 3] = hotKey) {
            global.inventory[ipos2, 3] = 0
        }
    } 
}

scr_invRefresh();
scr_invSave();


