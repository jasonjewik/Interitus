if (hotKey > 0) {
    for (var i = 1; i < maxInvSlots; i++) {
        if (global.inventory[i, 3] == hotKey) {
            return(global.inventory[i, 0]);
            i = maxInvSlots;
        } 
    }
} else {
    return ""
}

/*Unused
if (hotKey > 0) {
    if (global.keyBinding[hotKey, 0] == "") {
        return(0);
    };
    else {
        return(global.keyBinding[hotKey, 0]);
    };
};*/

