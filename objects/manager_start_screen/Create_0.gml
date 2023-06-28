spr = spr_intro_UI;

student_spr = [student_hana,student_lapis,student_crystal,student_blanche,
student_bridgit,student_enya,student_arianna,student_cindy,
student_talia,student_tigris,student_vivian,student_nyx,
student_paige,student_maria,student_tasha,student_gina];

student_spr_x_1 = 0;
student_spr_x_2 = 112;
curr_student_x = student_spr_x_1;

student_spr_y = 64;
student_spr_counter = 0;

scale = manager_students.master_scale;
s_o = 0;

txt_start = "New";
txt_start_x = 56*scale;
txt_start_y = 64*scale;
txt_exit = "Exit";
txt_exit_x = 56*scale;
txt_exit_y = 112*scale;
txtCol = c_black;

txt_load = "Load";
txt_load_x = 56*scale;
txt_load_y = 88*scale;

select_x = 48;
select_y_1 = 56;
select_y_2 = 80;
select_y_3 = 104;
select_w = 64;
select_h = 24;

mouseX = 0;
mouseY = 0;

px = 40;
py = 96;
pr = castle_bed;

new_save = false;
new_save1 = false;
new_save2 = false;

alarm[1] = 3;

room_change = true;
room_change_time = 30;
alarm[2] = room_change_time;