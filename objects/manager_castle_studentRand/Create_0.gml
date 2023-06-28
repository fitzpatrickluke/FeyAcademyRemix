randomize();

x = irandom_range(16,room_width-32);
y = irandom_range(16,room_height-32);

spr_L = spr_cc_final_left;
spr_R = spr_cc_final_right;
spr = spr_L;

if(place_meeting(x,y,collision_obj) || place_meeting(x,y,switchRoom_obj)
|| place_meeting(x,y,manager_castle)
|| place_meeting(x,y,castle_student) || place_meeting(x,y,castle_teacher)) 
	instance_destroy(id);
	
spr_body_num = irandom_range(0,2);
spr_hair_num = irandom_range(0,8);
spr_bang_num = irandom_range(0,5);
spr_hair_col_num = irandom_range(0,7);
spr_eye_num = irandom_range(0,19);
spr_top_num = irandom_range(0,6);
spr_top_col_num = irandom_range(0,19);
spr_bot_num = irandom_range(0,5);
spr_bot_col_num = irandom_range(0,4);
spr_shoe_num = 0;
spr_shoe_col_num = spr_top_col_num;
spr_acc_num = irandom_range(0,6);
spr_acc_col_num = spr_top_col_num;

depth = -2;