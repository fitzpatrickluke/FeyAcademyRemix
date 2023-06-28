///@desciption heal_hp
function heal_hp()
{
	manager_students.master_student_1.stat_hp_curr = manager_students.master_student_1.stat_hp;
	manager_students.master_student_2.stat_hp_curr = manager_students.master_student_2.stat_hp;
	manager_students.master_student_3.stat_hp_curr = manager_students.master_student_3.stat_hp;
	
	manager_students.master_student_1.stat_mp_curr = manager_students.master_student_1.stat_mp;
	manager_students.master_student_2.stat_mp_curr = manager_students.master_student_2.stat_mp;
	manager_students.master_student_3.stat_mp_curr = manager_students.master_student_3.stat_mp;
}