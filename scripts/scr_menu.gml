switch (mpos) {
    case 0: {
    room_goto(rm_tutorial);
    break;
    } 
    case 1: {
    break;
    }
    case 2: {
    break;
    } 
    case 3: {
    if (window_get_fullscreen()) {
        window_set_fullscreen(false);
    }
    else {
        window_set_fullscreen(true);   
    }
    break;
    }
    case 4: {
    game_end();
    break;
    }
    default: {
    break;
    }
}
