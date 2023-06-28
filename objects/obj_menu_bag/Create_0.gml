menu_on = false;

drop_num = 0;

txt_curr = "ITEM";
txt_x = (x+4)*manager_students.master_scale;
txt_x_2 = (x+34)*manager_students.master_scale;
txt_y = (y+3)*manager_students.master_scale;

// total items num = 141
// each page displays 4*12 = 48
// 141/48 = 2.9... Thus need three pages
drop_num_total = manager_students.drop_num_total;
col_num = 4;
row_num = 13;
num_aug_1 = 0;
num_aug_2 = 48;
num_aug_3 = 48*2;
num_aug_curr = num_aug_1;

spr_w = 40;
spr_h = 8;
txt_w = spr_w*manager_students.master_scale;
txt_h = spr_h*manager_students.master_scale;



