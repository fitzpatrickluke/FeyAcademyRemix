if(choosePlayerOn)
	draw_student_battle_ex(x,y+student_up_y,spr_col,
	manager_students.master_student_2,manager_students.student_2_wings,spr_num);
else
	draw_student_battle_ex(x,y,spr_col,
	manager_students.master_student_2,manager_students.student_2_wings,spr_num);
	
// draw_weapon
//draw_sprite(spr_battle_weapon_base,weapon_num,x+16,y+8);