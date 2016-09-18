scr_physics();

//Set Variables
h_speed = 0;

ini_open("playerData.ini")

ini_write_real("Player", "day", 0)
ini_write_string("Player", "isDead", "yes")

ini_section_delete("Explored Rooms")
ini_section_delete("Current Rooms")
ini_section_delete("Selected Weapons")
ini_key_delete("Player", "deathCount")

ini_close()
