if(instance_exists(manager_choice))
{
	if(manager_choice.choice)
	{
		manager_students.student_1_wings = wings.magix;
		for(var i = 0; i < 5; i+=1)
		{
			manager_students.master_student_1.class_points += manager_students.class_points_1[i];
			manager_students.class_points_1[i] = 0;
		}
		manager_students.student_2_wings = wings.magix;
		for(var i = 0; i < 5; i+=1)
		{
			manager_students.master_student_2.class_points += manager_students.class_points_2[i];
			manager_students.class_points_2[i] = 0;
		}
		manager_students.student_3_wings = wings.magix;
		for(var i = 0; i < 5; i+=1)
		{
			manager_students.master_student_3.class_points += manager_students.class_points_3[i];
			manager_students.class_points_3[i] = 0;
		}
		instance_destroy(manager_choice);
		manager_castle.pause = false;
	}
}
else
	manager_castle.pause = false;

if(place_meeting(x,y,manager_castle) && keyboard_check_pressed(vk_space))
{
	instance_create_depth(0,0,0,manager_choice);
	manager_castle.pause = true;
}
