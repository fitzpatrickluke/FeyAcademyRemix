menu_on = false;

spr_mon = manager_enemy.enemy_list[# 0, 8];
spr_mon_x = x;
spr_mon_y = (y+8);
spr_col = c_black;

txt_name = manager_enemy.enemy_list[# 0, 0];
txt_name_x = (x+56)*manager_students.master_scale;
txt_name_y = (y+6)*manager_students.master_scale;

txt_type_x_1 = txt_name_x;
txt_type_x_2 = txt_name_x + 88*manager_students.master_scale;
txt_type_y = (y+22)*manager_students.master_scale;
txt_type_1 = "WATER";
txt_type_2 = "";

txt_loc_x = txt_name_x;
txt_loc_y = (y+38)*manager_students.master_scale;
txt_loc = manager_enemy.enemy_list[# 0, 13];

txt_drop_x_1 = txt_type_x_1;
txt_drop_x_2 = txt_type_x_2;
txt_drop_y = (y+38+16)*manager_students.master_scale;
txt_drop_1 = "WATER";
txt_drop_2 = "";

txt_des_x = (x+8)*manager_students.master_scale;
txt_des_y = (y+56+16)*manager_students.master_scale;
txt_des_w = 96*manager_students.master_scale;
txt_des = string_wrap(manager_text.txt_enemy_des[|0],txt_des_w);

mon_on = false;


