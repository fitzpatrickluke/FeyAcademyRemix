student_spr_num = 0;
student_right = false;

spr_w = 16;
spr_h = 24;

spr_body_counter = 0;
spr_top_counter = 7;
spr_bot_counter = 11;
spr_shoe_counter = 15;

movement_speed_x = 0;
movement_speed_y = 0;
movement_on = false;

animation_speed = 15;

x = manager_students.explore_start_x;
y = manager_students.explore_start_y;


alarm[1] = animation_speed;

encounter_num = manager_students.explore_enmy_count
encounter_on = false;
encounter_chance = 3;
encounter_rate = 60;
alarm[2] = encounter_rate;

pause = false;

depth = 0;

ice_on = false;
// 0 - null
// 1 - up
// 2 - down
// 3 - right
// 4 - left
ice_move = 0;

move_spd = 2;