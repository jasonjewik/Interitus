for (var i = 1; i < maxInvSlots; i++) {
    for (var j = 0; j < 5; j+=2) {
        ini_open("playerData.ini")
        global.inventory[i, j] = ini_read_string("Inventory", string(i) + "," + string(j), "");   
        ini_close();
    }
    for (var k = 1; k < 4; k+=2) {
        ini_open("playerData.ini")
        global.inventory[i, k] = ini_read_real("Inventory", string(i) + "," + string(k), 0);   
        ini_close();
    }
}

/*Unused
for (var j = 1; j < maxInvSlots; j++) {
    for (var i = 1; i < array_height_2d(global.items); i++) {
        ini_open("playerData.ini")
        global.keyBinding[1, 0] = ini_read_string("Selected Weapons", "1", "")
        global.keyBinding[2, 0] = ini_read_string("Selected Weapons", "2", "")
        
        if (ini_read_string("Player", "isDead", "no") = "no") {
            if (ini_read_string("Inventory", global.items[i, 0], "") = "1"){
                scr_itemPickup2(global.items[i, 0]); 
            } 
        }
        ini_close();  
        scr_invRemove(); 
    }
}*/



