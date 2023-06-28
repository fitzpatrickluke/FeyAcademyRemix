///@description set_equip_port
///@arg id
///@arg num
function set_equip_port(argument0, argument1)
{
	var num = argument1;
	
	argument0.student_curr = num;
	
	var n = "";
	switch(num)
	{
		case 1: n = manager_students.master_student_1.student_name; break;
		case 2: n = manager_students.master_student_2.student_name; break;
		case 3: n = manager_students.master_student_3.student_name; break;
	}
	
	argument0.txt_name = n;
}