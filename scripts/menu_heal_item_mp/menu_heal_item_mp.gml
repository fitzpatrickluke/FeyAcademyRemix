///@description menu_heal_item_mp
///@arg student_num
///@arg item_num
function menu_heal_item_mp(argument0, argument1)
{
	var num = argument0;
	var item_num = argument1;
	var grid = manager_items.item_list;
	
	switch(num)
	{
		case 1:
			var heal = 1;
			heal = manager_students.master_student_1.stat_mp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_1.stat_mp_curr += heal;
			if(manager_students.master_student_1.stat_mp_curr > manager_students.master_student_1.stat_mp)
				manager_students.master_student_1.stat_mp_curr = manager_students.master_student_1.stat_mp;
		break;
		
		case 2:
			var heal = 1;
			heal = manager_students.master_student_2.stat_mp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_2.stat_mp_curr += heal;
			if(manager_students.master_student_2.stat_mp_curr > manager_students.master_student_2.stat_mp)
				manager_students.master_student_2.stat_mp_curr = manager_students.master_student_2.stat_mp;
		break;
		
		case 3:
			var heal = 1;
			heal = manager_students.master_student_3.stat_mp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_3.stat_mp_curr += heal;
			if(manager_students.master_student_3.stat_mp_curr > manager_students.master_student_3.stat_mp)
				manager_students.master_student_3.stat_mp_curr = manager_students.master_student_3.stat_mp;
		break;
	}
}