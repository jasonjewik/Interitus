switch (mpos) {
    case 1: {
    file_delete("playerData.ini")
    if (day = 0) {
        room_goto_next();
    } else {
        room_restart()
        room_goto(rm_initialize)
    }
    room_goto_next();
        break;
    }
    case 2: {
    if (day > 0) {
        room_goto(rm_transition);
    }
        break;
    }
    case 3: {
        room_goto(rm_tutorial);
        break;
    }
    case 4: {
        if (window_get_fullscreen()) {
            window_set_fullscreen(false);
        }
        else {
            window_set_fullscreen(true);   
        }
        break;
    }
    case 5: {
        game_end();
    }
    default: {
        break;
    }
}
