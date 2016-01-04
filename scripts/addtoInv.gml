inv = obj_inv;
var toName = argument0;

for (var i = 0; i < inv.total_slots; i++) {
    if (i == inv.total_slots - 1) {
        for (j = 0; j < inv.total_slots; j++) {
            if (global.slot[j] = "empty") {
                global.slot[j] = toName;
                addList(toName);
                break;
            }
        }
    }
}
