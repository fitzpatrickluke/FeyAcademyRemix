switch(student_curr)
{
	case 1:
	txt_hp_1 = manager_students.master_student_1.stat_hp_curr;
	txt_hp_2 = manager_students.master_student_1.stat_hp;
	
	if(manager_students.master_student_1.stat_hp_curr == manager_students.master_student_1.stat_hp)
		no_heal_on_2 = true;
	else
		no_heal_on_2 = false;
	
	if(manager_students.master_student_1.stat_hp_curr <= 0)
		no_heal_on = true;
	else
		no_heal_on = false;
		
	break;
	
	case 2:
	txt_hp_1 = manager_students.master_student_2.stat_hp_curr;
	txt_hp_2 = manager_students.master_student_2.stat_hp;
	
	if(manager_students.master_student_2.stat_hp_curr == manager_students.master_student_2.stat_hp)
		no_heal_on_2 = true;
	else
		no_heal_on_2 = false;
	
	if(manager_students.master_student_2.stat_hp_curr <= 0)
		no_heal_on = true;
	else
		no_heal_on = false;
		
	break;
	
	case 3:
	txt_hp_1 = manager_students.master_student_3.stat_hp_curr;
	txt_hp_2 = manager_students.master_student_3.stat_hp;
	
	if(manager_students.master_student_3.stat_hp_curr == manager_students.master_student_3.stat_hp)
		no_heal_on_2 = true;
	else
		no_heal_on_2 = false;

	if(manager_students.master_student_3.stat_hp_curr <= 0)
		no_heal_on = true;
	else
		no_heal_on = false;
		
	break;
}
