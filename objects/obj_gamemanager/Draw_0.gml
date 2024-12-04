/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_score);
draw_self();

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_text(cx + (cw / 2), cy + 50, string(global.score));
draw_text(cx + (cw / 24), cy + 30, "Lives: " + string(global.lives))
draw_healthbar(cx, cy, cx + (cw / 3), cy + 25, global.hunger, c_black, c_red, c_green, 0, true, true);
draw_healthbar(cx, cy, cx + (cw / 3), cy + 15, global.playerhp, c_black, c_red, c_green, 0, true, true);