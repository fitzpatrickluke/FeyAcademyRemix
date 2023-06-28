if(menu_on == false) exit;
if(obj_menu_custom_points.txt_points <= 0) exit;

switch(obj_menu_title.menu_curr)
{
	case menus.customize1:
	manager_students.class_points_1[points_num] += 1;
	manager_students.master_student_1.class_points -= 1;
	break;
	case menus.customize2:
	manager_students.class_points_2[points_num] += 1;
	manager_students.master_student_2.class_points -= 1;
	break;
	case menus.customize3:
	manager_students.class_points_3[points_num] += 1;
	manager_students.master_student_3.class_points -= 1;
	break;
}

obj_menu_custom_points.txt_points -= 1;
txt_points += 1;