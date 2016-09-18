//Write to Save
ini_open("playerData.ini")

for (var i = 1; i < maxInvSlots; i++) {
    for (var j = 0; j < 3; j+=2) {
        ini_write_string("Inventory", string(i) + "," + string(j), string(global.inventory[i, j]));
    }
    for (var k = 1; k < 4; k+=2) {
        ini_write_real("Inventory", string(i) + "," + string(k), real(global.inventory[i, k]));
    }
}

ini_close(); 
