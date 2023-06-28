s_o -= 0.05;
if(s_o <= 0)
{
	student_spr_counter += 1;
	if(student_spr_counter >= 16)
		student_spr_counter = 0;

	if(student_spr_counter%2 == 0)
		curr_student_x = student_spr_x_1;
	else
		curr_student_x = student_spr_x_2;
	alarm[1] = 3;
}
else
	alarm[0] = 3;