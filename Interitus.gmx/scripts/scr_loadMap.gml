ini_open("playerData.ini");
for (var i = 1; i < 17; i++) {
    building = "Agri_" + string(i);
    if (ini_key_exists("Explored Rooms", "Agri_" + string(i)) = 1) {
        textbox = ini_read_real("Explored Rooms", "Agri_" + string(i), "");
    }
}
ini_close();

ini_open("playerData.ini");
for (var i = 1; i < 17; i++) {
    building = "Med_" + string(i);
    if (ini_key_exists("Explored Rooms", "Med_" + string(i)) = 1) {
        textbox = ini_read_real("Explored Rooms", "Med_" + string(i), "");
    }
}
ini_close();

ini_open("playerData.ini");
for (var i = 1; i < 17; i++) {
    building = "Exp_" + string(i);
    if (ini_key_exists("Explored Rooms", "Exp_" + string(i)) = 1) {
        textbox = ini_read_real("Explored Rooms", "Exp_" + string(i), "");
    }
}
ini_close();

ini_open("playerData.ini");
for (var i = 1; i < 17; i++) {
    building = "Res_" + string(i);
    if (ini_key_exists("Explored Rooms", "Res_" + string(i)) = 1) {
        textbox = ini_read_real("Explored Rooms", "Res_" + string(i), "");
    }
}
ini_close();

///Save
ini_open("playerData.ini");

ini_write_real("Explored Rooms", building, textbox);

ini_close();
