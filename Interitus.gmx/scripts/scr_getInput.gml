//Controls
key_right = keyboard_check(ord('D'));
key_left = keyboard_check(ord('A'));
key_down = keyboard_check(ord('S'));
key_up = keyboard_check(ord('W'));
key_jump = keyboard_check_pressed(vk_space);
key_escape = keyboard_check_pressed(vk_escape);
key_enter = keyboard_check_pressed(vk_enter);
key_shift = keyboard_check(vk_shift);
key_alt = keyboard_check_pressed(vk_alt);
key_ctrl = keyboard_check_pressed(vk_control);
key_inventory = keyboard_check_pressed(ord('E'));
key_talk = keyboard_check_pressed(ord('T'));
mouse_left = mouse_check_button_pressed(mb_left);
mouse_left_hold = mouse_check_button(mb_left);
mouse_left_release = mouse_check_button_released(mb_left);
mouse_right = mouse_check_button(mb_right);
mouse_right_release = mouse_check_button_released(mb_right);
key_tab = keyboard_check_pressed(vk_tab);
key_upKey = keyboard_check(vk_up);
key_downKey = keyboard_check(vk_down);
key_leftKey = keyboard_check(vk_left);
key_rightKey = keyboard_check(vk_right);

//Item Select
if (keyboard_check_released(ord('1')) && hotKey != 1) {
    hotKey = 1;
} else if (keyboard_check_released(ord('2')) && hotKey != 2) {
    hotKey = 2;
} else if (keyboard_check_released(ord('1')) && hotKey = 1) {
    hotKey = 0;
} else if (keyboard_check_released(ord('2')) && hotKey = 2) {
    hotKey = 0;
}

