if (hotKey > 0) {
    if (global.inventory[hotKey, 0] == "") {
        return(0);
    };
    else {
        return(global.inventory[hotKey, 0]);
    };
};
else {
    return(0);
};
