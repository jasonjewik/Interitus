var cellWidth = argument0;
var cellHeight = argument1;

for (var i = 0; i < total_slots; i++) {
    if (global.slot[i] == "gun") {
        draw_sprite(spr_items, 0, coordX[i] + 8, coordY[i] + 8);
        draw_text(coordX[i] + 3, coordY[i] + 3, string(global.gun));
    }
}
