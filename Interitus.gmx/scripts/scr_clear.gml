ini_open("playerData.ini");
    if (ini_key_exists("Exploreod Rooms", "Agri_" + string(building_number))) {
        read = ini_read_real("Explored Rooms", "Agri_" + string(building_number), 0);
        textbox = read;
    } else {
        textbox = 0;
    }
    
ini_close();
