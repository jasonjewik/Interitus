type = scr_itemType()
    
    if (keyboard_check_released(ord('Y'))) {
        global.inventory[ipos, 0] = ""
        global.metal += 500;
        scrapCheck = false
    }
    if (keyboard_check_released(ord('N'))) {
        scrapCheck = false
    }

    

