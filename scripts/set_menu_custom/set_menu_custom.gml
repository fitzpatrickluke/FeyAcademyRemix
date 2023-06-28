///@description set_menu_custom
///@arg menu_curr
///@arg point num
function set_menu_custom(argument0, argument1)
{
	var s =  manager_students.master_student_1;
	var p =  manager_students.class_points_1;
	switch(argument0)
	{
		case menus.customize1:
		s = manager_students.master_student_1;
		p =  manager_students.class_points_1;
		break;
		case menus.customize2:
		s = manager_students.master_student_2;
		p =  manager_students.class_points_2;
		break;
		case menus.customize3:
		s = manager_students.master_student_3;
		p =  manager_students.class_points_3;
		break;
	}
	obj_menu_custom_name.txt_curr = s.student_name;
	obj_menu_custom_points.txt_points = s.class_points;
	obj_menu_custom_grade.points = p;
	obj_menu_custom_grade.points_num = argument1;
	obj_menu_custom_grade.alarm[0] = 1;
}