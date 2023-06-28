cc_on = false;
scale = manager_students.master_scale;

spr_background = spr_cc_UI;
if(manager_students.player_gender[0] == 0)
{
	spr = spr_cc_final_left;
	port_spr = spr_portrait_cc;
}
else
{
	spr = spr_cc_final_left_male;
	port_spr = spr_portrait_cc_male;
}

txtColor = c_black;

spr_scale = 4;
spr_x = 108*scale;
spr_y = 48*scale;
spr_w = 16;
spr_h = 24;

spr_body_num = 0;

body_max = 2;
hair_max = 8;
bang_max = 5;
hair_col_max = 16;
top_max = 6;
bot_max = 5;
shoe_max = 5;
acc_max = 6;
col_max = 19;
if(manager_students.player_gender[0] == 1)
{
	hair_max = 3;
	bang_max = 7;
	hair_col_max = 16;
	top_max = 4;
	bot_max = 4;
	shoe_max = 1;
	acc_max = 3;
	col_max = 19;
}

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

txt_menu_l_x = 32*scale;
txt_menu_l_y_1 = 18*scale+2+4*scale;
txt_menu_l_y_2 = 26*scale+2+4*scale;
txt_menu_l_y_3 = 34*scale+2+4*scale;
txt_menu_l_y_4 = 42*scale+2+4*scale;
txt_menu_l_y_5 = 50*scale+2+4*scale;
txt_menu_1_y_0 = 10*scale+2+4*scale;
txt_menu_r_x = 32*scale+2;
txt_menu_r_y_1 = 66*scale+2+4*scale;
txt_menu_r_y_2 = 74*scale+2+4*scale;
txt_menu_r_y_3 = 82*scale+2+4*scale;
txt_menu_r_y_4 = 90*scale+2+4*scale;
txt_menu_r_y_5 = 98*scale+2+4*scale;
txt_menu_r_y_6 = 106*scale+2+4*scale;
txt_menu_r_y_7 = 114*scale+2+4*scale;
txt_menu_r_y_8 = 122*scale+2+4*scale;


menu_l_select_x_1 = 16*scale;
menu_l_select_x_2 = 68*scale;
menu_l_select_y_1 = 16*scale+4*scale;
menu_l_select_y_2 = 24*scale+4*scale;
menu_l_select_y_3 = 32*scale+4*scale;
menu_l_select_y_4 = 40*scale+4*scale;
menu_l_select_y_5 = 48*scale+4*scale;
menu_l_select_y_0 = 8*scale+4*scale;
menu_r_select_x_1 = 16*scale;
menu_r_select_x_2 = 68*scale;
menu_r_select_y_1 = 64*scale+4*scale;
menu_r_select_y_2 = 72*scale+4*scale;
menu_r_select_y_3 = 80*scale+4*scale;
menu_r_select_y_4 = 88*scale+4*scale;
menu_r_select_y_5 = 96*scale+4*scale;
menu_r_select_y_6 = 104*scale+4*scale;
menu_r_select_y_7 = 112*scale+4*scale;
menu_r_select_y_8 = 120*scale+4*scale;
menu_select_w = 12*scale;
menu_select_h = 8*scale;

name_select_x = 92*scale;
name_select_y = 24*scale;
name_select_w = 48*scale;
name_select_h = 16*scale;
name_txt_x = 98*scale;
name_txt_y = 30*scale;
name_txt = manager_students.master_student_1.student_name;
enter_name = false;

finish_select_x = 92*scale;
finish_select_y = 112*scale;
finish_select_w = 48*scale;
finish_select_h = 16*scale;
finish_txt_x = 98*scale;
finish_txt_y = 118*scale;

port_x = 96*scale;
port_y = 68*scale;
port_scl = 2;
port_num = 80;

mouseX = 0;
mouseY = 0;

room_change = true;
room_change_time = 10;

alarm[1] = 30;

depth = -31;