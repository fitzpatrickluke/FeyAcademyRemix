spr = castle_astrology;

if(manager_students.player_custom[0] == 1)
{
if(manager_students.player_gender[0] == 1)
{
	student_spr_left = spr_cc_final_left_male;
	student_spr_right = spr_cc_final_right_male;
}
if(manager_students.player_gender[0] == 0)
{
	student_spr_left = spr_cc_final_left;
	student_spr_right = spr_cc_final_right;
}
}
else
{
	student_spr_left = manager_students.master_student_1.spr_reg;
	student_spr_right =  manager_students.master_student_1.spr_reg_right;
}
student_spr = student_spr_left;
student_spr_num = 0;

spr_body_num = manager_students.spr_body_num;
spr_hair_num = manager_students.spr_hair_num;
spr_bang_num = manager_students.spr_bang_num;
spr_hair_col_num = manager_students.spr_hair_col_num;
spr_eye_num = manager_students.spr_eye_num;
spr_top_num = manager_students.spr_top_num;
spr_top_col_num = manager_students.spr_top_col_num;
spr_bot_num = manager_students.spr_bot_num;
spr_bot_col_num = manager_students.spr_bot_col_num;
spr_shoe_num = manager_students.spr_shoe_num;
spr_shoe_col_num = manager_students.spr_shoe_col_num;
spr_acc_num = manager_students.spr_acc_num;
spr_acc_col_num = manager_students.spr_acc_col_num;
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

draw_right_on = false;

x = manager_students.explore_start_x;
y = manager_students.explore_start_y;

alarm[1] = animation_speed;

pause = false;

depth = 0;