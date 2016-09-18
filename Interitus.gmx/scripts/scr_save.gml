ini_open("playerData.ini")

ini_write_real("Player","health",global.playerHealth);
ini_write_real("Player","stamina",global.stamina);
ini_write_real("Player","hours",time);

ini_close();
