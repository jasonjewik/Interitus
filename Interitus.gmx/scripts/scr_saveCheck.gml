if (day > 0) {
    ini_open("playerData.ini");
    global.stamina = ini_read_real("Player", "stamina", global.maxStamina);
    global.playerHealth = ini_read_real("Player", "health", global.maxHealth);
    global.metal = ini_read_real("Player", "metal", global.metal);
    global.ammo = ini_read_real("Player", "ammo", global.ammo);
    global.food = ini_read_real("Player", "hunger", global.food);
    ini_close();
}

