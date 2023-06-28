if(menu_on == false)
	exit;

if(obj_menu_title.healing_curr)
{

	obj_menu_title.healing_curr = false;
	obj_menu_heal_spell.menu_on = true;
	menu_heal_student(student_curr,obj_menu_title.heal_spell)
	switch(student_curr)
	{
		case 1: 
		txt_hp_1 = manager_students.master_student_1.stat_hp_curr;
		txt_hp_2 = manager_students.master_student_1.stat_hp;
		break;
		case 2: 
		txt_hp_1 = manager_students.master_student_2.stat_hp_curr;
		txt_hp_2 = manager_students.master_student_2.stat_hp;
		break;
		case 3: 
		txt_hp_1 = manager_students.master_student_3.stat_hp_curr;
		txt_hp_2 = manager_students.master_student_3.stat_hp;
		break;
	}
}