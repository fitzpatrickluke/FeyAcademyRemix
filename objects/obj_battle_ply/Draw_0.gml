if(choosePlayerOn)
{
	if(customChar)
		draw_student_battle(x,y+student_up_y,spr_num,spr_col);
	else
		draw_student_battle_ex(x,y+student_up_y,spr_col,
		manager_students.master_student_1, manager_students.student_1_wings, spr_num);
}
else
{
	if(customChar)
		draw_student_battle(x,y,spr_num,spr_col);
	else
		draw_student_battle_ex(x,y,spr_col,
			manager_students.master_student_1, manager_students.student_1_wings, spr_num);
}

// draw_weapon
//draw_sprite(spr_battle_weapon_base,weapon_num,x+16,y+8);