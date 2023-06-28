///@description menu_heal_item
///@arg student_num
///@arg item_num
function menu_heal_item(argument0, argument1)
{
	var num = argument0;
	var item_num = argument1;
	var grid = manager_items.item_list;
	
	switch(num)
	{
		case 1:
			var heal = 1;
			heal = manager_students.master_student_1.stat_hp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_1.stat_hp_curr += heal;
			if(manager_students.master_student_1.stat_hp_curr > manager_students.master_student_1.stat_hp)
				manager_students.master_student_1.stat_hp_curr = manager_students.master_student_1.stat_hp;
		break;
		
		case 2:
			var heal = 1;
			heal = manager_students.master_student_2.stat_hp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_2.stat_hp_curr += heal;
			if(manager_students.master_student_2.stat_hp_curr > manager_students.master_student_2.stat_hp)
				manager_students.master_student_2.stat_hp_curr = manager_students.master_student_2.stat_hp;
		break;
		
		case 3:
			var heal = 1;
			heal = manager_students.master_student_3.stat_hp * grid[# item_num, 2];
			heal = round(heal);
			manager_students.master_student_3.stat_hp_curr += heal;
			if(manager_students.master_student_3.stat_hp_curr > manager_students.master_student_3.stat_hp)
				manager_students.master_student_3.stat_hp_curr = manager_students.master_student_3.stat_hp;
		break;
	}
}