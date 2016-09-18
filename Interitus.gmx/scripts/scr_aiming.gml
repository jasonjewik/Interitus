var x2,y2;
move_towards_point(mouse_x,mouse_y,0);
xTo = obj_player.x + lengthdir_x(min(96,distance_to_point(mouse_x,mouse_y)),direction);
yTo = obj_player.y + lengthdir_y(min(96,distance_to_point(mouse_x,mouse_y)),direction);
x += (xTo - x)/25;
y += (yTo - y)/25;

view_xview = -(view_wview/2) + x;
view_yview = -(view_hview/2) + y;

instance_create(mouse_x, mouse_y, obj_aim);
