draw_sprite(spr,0,0,0);

if(mouseX >= select_x && mouseX < select_x+select_w
&& mouseY >= select_y_1 && mouseY < select_y_1+select_h)
	draw_sprite_part(spr,1,0,0,select_w,select_h,select_x,select_y_1);
	
if(mouseX >= select_x && mouseX < select_x+select_w
&& mouseY >= select_y_2 && mouseY < select_y_2+select_h)
	draw_sprite_part(spr,1,0,0,select_w,select_h,select_x,select_y_2);
	
if(mouseX >= select_x && mouseX < select_x+select_w
&& mouseY >= select_y_3 && mouseY < select_y_3+select_h)
	draw_sprite_part(spr,1,0,0,select_w,select_h,select_x,select_y_3);

draw_student_battle_menu_ex_start(curr_student_x,student_spr_y,student_spr[student_spr_counter],manager_students.student_1_wings,s_o);
