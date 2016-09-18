//Determining item type
item = global.inventory[ipos2, 0]
for (var i = 1; i < array_height_2d(global.items); i++) {
    if (string_count(global.items[i, 0], item) = 1) {
        return global.items[i, 2]
        i = array_height_2d(global.items)
    }
}

