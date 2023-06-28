on = false;
spr_background = spr_chooseStudent_UI_mini;

depth = -31;

mouseX = 0;
mouseY = 0;

scale = manager_students.master_scale;

select_student_grid = [[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0],[0,0,0,0,0,0]];
select_student_count = 0;
select_student_grid_set = [
[student_hana,student_lapis,student_fernando,student_crystal,student_blanche,student_chip],
[student_bridgit,student_enya,student_glenn,student_arianna,student_cindy,student_gunter],
[student_talia,student_tigris,student_basil,student_vivian,student_nyx,student_damien],
[student_paige,student_maria,student_chris,student_tasha,student_gina,student_rocky],
[student_bloom,student_stella,student_aisha,student_tecna,student_flora,student_musa]
];

select_students_set = [-1,-1,-1];

selected_custom = false;


select_student_x_1 = 40/scale;
select_student_x_2 = 80/scale;
select_student_y_1 = 38/scale;
select_student_y_2 = 366/scale;
select_student_w = 80/scale;
select_student_h = 80/scale;

draw_student_x_1 = 40;
draw_student_x_2 = 80;
draw_student_y_1 = 38;
draw_student_y_2 = 366;
draw_student_w = 80;
draw_student_h = 80;

finish_select_x = 56;
finish_select_y = 116;
finish_select_w = 48;
finish_select_h = 16;

curr_page = choose_student_page.water;

water_1 = student_hana;
water_2 = student_lapis;
water_3 = student_fernando;
earth_1 = student_crystal;
earth_2 = student_blanche;
earth_3 = student_chip;
fire_1 = student_bridgit;
fire_2 = student_enya;
fire_3 = student_glenn;
air_1 = student_arianna;
air_2 = student_cindy;
air_3 = student_gunter
nature_1 = student_talia;
nature_2 = student_tigris;
nature_3 = student_basil;
magic_1 = student_vivian;
magic_2 = student_nyx;
magic_3 = student_damien;
light_1 = student_paige;
light_2 = student_maria;
light_3 = student_chris;
dark_1 = student_tasha;
dark_2 = student_gina;
dark_3 = student_rocky;

winx1_1 = student_bloom;
winx1_2 = student_stella;
winx2_1 = student_aisha;
winx2_2 = student_flora;
winx3_1 = student_musa;
winx3_2 = student_tecna;

chosen_student_1 = -1;
chosen_student_2 = -1;
chosen_student_3 = -1;

txt_finish_x = 62*scale;
txt_finish_y = 122*scale;
txtCol = c_black;

sprite_num_2 = 2;

room_change_time = 30;
room_change = true;
alarm[1] = room_change_time;