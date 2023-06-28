///@description menu_revive_item
///@arg student_num
function menu_revive_item(argument0)
{
	var num = argument0;
	
	switch(num)
	{
		case 1:
			manager_students.master_student_1.stat_hp_curr = 1;
		break;
		
		case 2:
			manager_students.master_student_2.stat_hp_curr = 1;
		break;
		
		case 3:
			manager_students.master_student_3.stat_hp_curr = 1;
		break;
	}
}